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

  public function index()
  {
    // Obtenemos datos.
    $permisos = Permiso::select(
      'a.id',
      'a.id_usuario',
      DB::raw('CONCAT_WS(" ", c.nombres, c.apellidos) usuario'),
      'a.id_ruta',
      'd.descripcion',
      'd.ruta',
      'a.estado'
    )
      ->from('tbl_permisos_usuarios as a')
      ->join('tbl_usuarios as b', function ($query) {
        $query->on('a.id_usuario', '=', 'b.id');
      })
      ->join('tbl_empleados as c', function ($query) {
        $query->on('b.id_empleado', '=', 'c.id');
      })
      ->join('tbl_rutas as d', function ($query) {
        $query->on('a.id_ruta', '=', 'd.id');
      })
      // ->where('a.estado', 'A')
      ->orderBy('c.nombres', 'asc')->get();
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

  public function show($id)
  {
    // Obtenemos registro.
    $permiso = Permiso::find($id);
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
      ])->orderBy('b.ruta', 'asc')->get();
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

  public function destroy($id)
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
      $data['estado'] = $estado;
      // Actualizamos registro.
      $permiso->update($data);
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
