<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cuenta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CuentaController extends Controller
{
  private function validations($cuentaId = '')
  {
    // Validaciones.
    $id = $cuentaId ? ', ' . $cuentaId : '';
    return [
      'num_cuenta' => ['required', 'regex:/^[0-9]{1,25}$/', 'unique:tbl_cuentas,num_cuenta' . $id],
      'id_banco' => ['required', 'int'],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $cuentas = Cuenta::select('a.id', 'a.num_cuenta', 'b.nombre as banco', 'a.estado')
      ->from('tbl_cuentas as a')
      ->join('tbl_bancos as b', function ($query) {
        $query->on('a.id_banco', '=', 'b.id');
      })->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'cuentas' => $cuentas,
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
      // Creando un registro.
      $cuenta = Cuenta::create($data);
      $cuenta->save();
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Cuenta creada exitósamente!',
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
    $cuenta = Cuenta::find($id);
    // Verificamos si existe el registro.
    if (!$cuenta) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'cuenta' => $cuenta,
    ], 200);
  }

  public function showByCuentas()
  {
    // Obtenemos registros.
    $cuentas = Cuenta::select(DB::raw('CONCAT_WS("-", a.num_cuenta, b.nombre) banco'), 'a.id_banco')
      ->from('tbl_cuentas as a')
      ->join('tbl_bancos as b', function ($query) {
        $query->on('a.id_banco', '=', 'b.id');
      })
      ->where('a.estado', 'A')
      ->orderBy('b.nombre', 'asc')->get();
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'cuentas' => $cuentas,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $cuenta = Cuenta::find($id);
      // Verificando si existe.
      if (!$cuenta) {
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
      // Actualizamos registro.
      $cuenta->update($data);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Cuenta actualizada exitósamente!',
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
      $cuenta = Cuenta::find($id);
      // Verificando si existe.
      if (!$cuenta) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $cuenta->estado == 'A' ? 'I' : 'A';
      $mensaje = $cuenta->estado == 'A' ?
        '¡Cuenta desactivada exitósamente!' :
        '¡Cuenta activada exitósamente!';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $cuenta->update($data);
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
