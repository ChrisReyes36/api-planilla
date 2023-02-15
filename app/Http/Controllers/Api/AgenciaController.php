<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Agencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AgenciaController extends Controller
{
  private function validations($agenciaId = '')
  {
    // Validaciones.
    $id = $agenciaId ? ', ' . $agenciaId : '';
    return [
      'nombre' => ['required', 'string', 'unique:tbl_agencias,nombre' . $id],
      'direccion' => ['required', 'unique:tbl_agencias,direccion' . $id],
      'telefono' => ['required', 'regex:/^[2|7|6]{1}[0-9]{3}[-][0-9]{4}$/', 'unique:tbl_agencias,telefono' . $id],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $agencias = Agencia::all();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'agencias' => $agencias,
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
      $agencia = Agencia::create($data);
      $agencia->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UNA AGENCIA EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Agencia creada exitósamente!',
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
    $agencia = Agencia::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UNA AGENCIA PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$agencia) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'agencia' => $agencia,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $agencia = Agencia::find($id);
      // Verificando si existe.
      if (!$agencia) {
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
      $agencia->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UNA AGENCIA EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Agencia actualizada exitósamente!',
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
