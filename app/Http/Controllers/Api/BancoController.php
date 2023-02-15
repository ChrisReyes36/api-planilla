<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Banco;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class BancoController extends Controller
{
  private function validations($bancoId = '')
  {
    // Validaciones.
    $id = $bancoId ? ', ' . $bancoId : '';
    return [
      'nombre' => ['required', 'string', 'unique:tbl_bancos,nombre' . $id],
      'direccion' => ['required', 'unique:tbl_bancos,direccion' . $id],
      'telefono' => ['required', 'regex:/^[2|7|6]{1}[0-9]{3}[-][0-9]{4}$/', 'unique:tbl_bancos,telefono' . $id],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $bancos = Banco::all();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'bancos' => $bancos,
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
      $banco = Banco::create($data);
      $banco->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UN BANCO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Banco creado exitósamente!',
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
    $banco = Banco::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UN BANCO PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$banco) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'banco' => $banco,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $banco = Banco::find($id);
      // Verificando si existe.
      if (!$banco) {
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
      $banco->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UN BANCO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Banco actualizado exitósamente!',
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
    //
  }
}
