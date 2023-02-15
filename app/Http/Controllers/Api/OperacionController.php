<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Operacion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class OperacionController extends Controller
{
  private function validations($conceptoId = '')
  {
    // Validaciones.
    $id = $conceptoId ? ', ' . $conceptoId : '';
    return [
      'descripcion' => ['required', 'unique:tbl_operaciones,descripcion' . $id],
      'id_concepto' => ['required', 'int'],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $operaciones = Operacion::select(
      'a.*',
      DB::raw('CONCAT_WS("-", b.nombre, b.detalle) concepto')
    )
      ->from('tbl_operaciones as a')
      ->join('tbl_conceptos as b', function ($query) {
        $query->on('a.id_concepto', '=', 'b.id');
      })
      ->orderBy('a.id', 'asc')->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'operaciones' => $operaciones,
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
      $operacion = Operacion::create($data);
      $operacion->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UNA OPERACIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Operación creada exitósamente!',
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
    $operacion = Operacion::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UNA OPERACIÓN PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$operacion) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'operacion' => $operacion,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $operacion = Operacion::find($id);
      // Verificando si existe.
      if (!$operacion) {
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
      $operacion->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UNA OPERACIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Operación actualizada exitósamente!',
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
