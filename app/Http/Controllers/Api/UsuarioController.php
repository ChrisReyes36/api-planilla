<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Empleado;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class UsuarioController extends Controller
{
  private function validations($usuarioId = '')
  {
    // Validaciones.
    $id = $usuarioId ? ', ' . $usuarioId : '';
    if (!$usuarioId) {
      $validations = [
        'codigo' => ['required', 'string', 'unique:tbl_usuarios,codigo' . $id],
        'contrasenia' => ['required', 'regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/'],
        'id_empleado' => ['required', 'int', 'unique:tbl_usuarios,id_empleado' . $id],
      ];
    } else {
      $validations = [
        'codigo' => ['required', 'string', 'unique:tbl_usuarios,codigo' . $id],
        'contrasenia' => ['string', 'regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/'],
        'id_empleado' => ['required', 'int', 'unique:tbl_usuarios,id_empleado' . $id],
      ];
    }
    return $validations;
  }

  public function index()
  {
    // Obtenemos datos.
    $usuarios = User::select(
      'a.id',
      'a.codigo',
      'a.id_empleado',
      DB::raw('CONCAT_WS(" ", b.nombres, b.apellidos) nombre'),
      'c.nombre as agencia',
      'd.nombre as puesto',
      'e.nombre as departamento',
      'b.estado',
    )
      ->from('tbl_usuarios as a')
      ->join('tbl_empleados as b', function ($query) {
        $query->on('a.id_empleado', '=', 'b.id');
      })
      ->join('tbl_agencias as c', function ($query) {
        $query->on('b.id_agencia', '=', 'c.id');
      })
      ->leftjoin('tbl_puestos as d', function ($query) {
        $query->on('b.id_puesto', '=', 'd.id');
      })
      ->leftjoin('tbl_departamentos as e', function ($query) {
        $query->on('d.id_departamento', '=', 'e.id');
      })
      ->where('b.estado', 'A')
      ->orderBy('b.nombres', 'asc')
      ->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'usuarios' => $usuarios,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $hoy = Carbon::now();
      $data['vencimiento_contrasenia'] = $hoy->addMonth();
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Creando un registro.
      $data['contrasenia'] = bcrypt($data['contrasenia']);
      $usuario = User::create($data);
      $usuario->save();
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Usuario creado exitósamente!',
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
    $usuario = User::find($id);
    // Verificamos si existe el registro.
    if (!$usuario) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'usuario' => $usuario,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      if (!$request->contrasenia) {
        $data = $request->except('contrasenia');
      } else {
        $data = $request->all();
        $hoy = Carbon::now();
        $data['vencimiento_contrasenia'] = $hoy->addMonth();
      }
      // Obtenemos registro.
      $usuario = User::find($id);
      // Verificando si existe.
      if (!$usuario) {
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
      $request->contrasenia ? $data['contrasenia'] = bcrypt($data['contrasenia']) : false;
      // Actualizamos registro.
      $usuario->update($data);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Usuario actualizado exitósamente!',
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
      $empleado = Empleado::find($id);
      // Verificando si existe.
      if (!$empleado) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $empleado->estado == 'A' ? 'I' : 'A';
      $mensaje = $empleado->estado == 'A' ?
        '¡Usuario desactivado exitósamente!' :
        '¡Usuario activado exitósamente!';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $empleado->update($data);
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
