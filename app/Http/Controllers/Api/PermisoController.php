<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Permiso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PermisoController extends Controller
{
  private function validations()
  {
    // Validaciones.
    return [
      'id_usuario' => ['required', 'int'],
      'id_ruta' => ['required', 'int'],
    ];
  }

  private function createStruct()
  {
    return (object) [
      'id_usuario' => null,
      'razon_social' => null,
      'agencia' => null,
      'departamento' => null,
      'puesto' => null,
      'permisos' => [],
    ];
  }

  private function getUsuarios()
  {
    $usuarios = Permiso::select(
      'a.id_usuario',
      DB::raw('CONCAT_WS(" ", c.nombres, c.apellidos) razon_social'),
      'd.nombre as agencia',
      'e.nombre as puesto',
      'f.nombre as departamento',
    )
      ->from('tbl_permisos_usuarios as a')
      ->join('tbl_usuarios as b', function ($query) {
        $query->on('a.id_usuario', '=', 'b.id');
      })
      ->join('tbl_empleados as c', function ($query) {
        $query->on('b.id_empleado', '=', 'c.id');
      })
      ->join('tbl_agencias as d', function ($query) {
        $query->on('c.id_agencia', '=', 'd.id');
      })
      ->leftJoin('tbl_puestos as e', function ($query) {
        $query->on('c.id_puesto', '=', 'e.id');
      })
      ->leftJoin('tbl_departamentos as f', function ($query) {
        $query->on('e.id_departamento', '=', 'f.id');
      })
      ->groupBy('a.id_usuario')
      ->orderBy('c.nombres', 'asc')
      ->get();

    return $usuarios;
  }

  public function getPermisos($idUsuario)
  {
    $permisos = Permiso::select(
      'a.id',
      'a.id_usuario',
      'a.id_ruta',
      'b.descripcion',
      'b.ruta',
      'a.estado',
    )
      ->from('tbl_permisos_usuarios as a')
      ->join('tbl_rutas as b', function ($query) {
        $query->on('a.id_ruta', '=', 'b.id');
      })
      ->where('a.id_usuario', $idUsuario)
      ->orderBy('a.estado', 'asc')
      ->orderBy('b.descripcion', 'asc')
      ->get();

    return $permisos;
  }

  public function index()
  {
    $permisos = [];
    // Obtenemos datos.
    $data = $this->getUsuarios();
    foreach ($data as $key => $value) {
      $permiso = $this->createStruct();
      $permiso->id_usuario = $value->id_usuario;
      $permiso->razon_social = $value->razon_social;
      $permiso->agencia = $value->agencia;
      $permiso->departamento = $value->departamento;
      $permiso->puesto = $value->puesto;
      $permiso->permisos = $this->getPermisos($value->id_usuario);
      array_push($permisos, $permiso);
    }
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'permisos' => $permisos,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Evitar duplicado.
      $permiso = DB::select(
        'SELECT * FROM tbl_permisos_usuarios a WHERE a.id_usuario = ? AND a.id_ruta = ?;',
        [$data['id_usuario'], $data['id_ruta']]
      );
      if ($permiso) {
        return response()->json([
          'success' => false,
          'errors' => [
            'duplicado' => [
              'Ya se le asignó el permiso al usuario'
            ],
          ]
        ], 400);
      }
      // Creando un registro.
      $permiso = Permiso::create($data);
      $permiso->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UN PERMISO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Permiso creado exitósamente!',
      ], 201);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function show(Request $request, $id)
  {
    // Obtenemos registro.
    $permiso = Permiso::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UN PERMISO PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$permiso) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'permiso' => $permiso,
    ], 200);
  }

  public function showByUser($id_usuario)
  {
    // Obtenemos registros.
    $permisos = Permiso::select('a.id', 'b.icono', 'b.ruta', 'b.descripcion')
      ->from('tbl_permisos_usuarios as a')
      ->join('tbl_rutas as b', function ($query) {
        $query->on('a.id_ruta', '=', 'b.id');
      })->where([
        ['a.id_usuario', $id_usuario],
        ['a.estado', 'A']
      ])->orderBy('b.descripcion', 'asc')->get();
    // Verificamos si existen registros.
    if (!$permisos) {
      return response()->json([
        'success' => true,
        'message' => '¡No hay permisos asignados!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'permisos' => $permisos,
    ], 200);
  }


  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $permiso = Permiso::find($id);
      // Verificando si existe.
      if (!$permiso) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Validamos.
      $validator = Validator::make($data, $this->validations($id));
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Evitar duplicado.
      $permisoDuplicado = DB::select(
        'SELECT * FROM tbl_permisos_usuarios a WHERE a.id_usuario = ? AND a.id_ruta = ?;',
        [$data['id_usuario'], $data['id_ruta']]
      );
      if ($data['id_usuario'] != $permiso->id_usuario || $data['id_ruta'] != $permiso->id_ruta) {
        if ($permisoDuplicado) {
          return response()->json([
            'success' => false,
            'errors' => [
              'duplicado' => [
                'Ya se le asignó el permiso al usuario'
              ],
            ]
          ], 400);
        }
      }
      // Actualizamos registro.
      $permiso->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UN PERMISO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Permiso actualizado exitósamente!',
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function destroy(Request $request, $id)
  {
    try {
      // Obtenemos registro.
      $permiso = Permiso::find($id);
      // Verificando si existe.
      if (!$permiso) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $permiso->estado == 'A' ? 'I' : 'A';
      $mensaje = $permiso->estado == 'A' ?
        '¡Permiso desactivado exitósamente!' :
        '¡Permiso activado exitósamente!';
      $bitacora = $permiso->estado == 'A' ?
        'HA DESACTIVADO UN PERMISO EN SIPLA' :
        'HA ACTIVADO UN PERMISO EN SIPLA';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $permiso->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => $mensaje,
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }
}
