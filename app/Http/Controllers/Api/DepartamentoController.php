<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Departamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class DepartamentoController extends Controller
{
  private function validations($departamentoId = '')
  {
    // Validaciones.
    $id = $departamentoId ? ', ' . $departamentoId : '';
    return [
      'nombre' => ['required', 'string', 'unique:tbl_departamentos,nombre' . $id],
      'descripcion' => ['required', 'unique:tbl_departamentos,descripcion' . $id],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $departamentos = Departamento::all();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'departamentos' => $departamentos,
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
      $departamento = Departamento::create($data);
      $departamento->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UN DEPARTAMENTO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Departamento creado exitósamente!',
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
    $departamento = Departamento::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UN DEPARTAMENTO PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$departamento) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'departamento' => $departamento,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $departamento = Departamento::find($id);
      // Verificando si existe.
      if (!$departamento) {
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
      $departamento->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UN DEPARTAMENTO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Departamento actualizado exitósamente!',
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
