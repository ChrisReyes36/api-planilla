<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Puesto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PuestoController extends Controller
{
  private function validations($puestoId = '')
  {
    // Validaciones.
    $id = $puestoId ? ', ' . $puestoId : '';
    return [
      'nombre' => ['required', 'string', 'unique:tbl_puestos,nombre' . $id],
      'id_departamento' => ['required', 'int'],
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $puestos = Puesto::select('a.id', 'a.nombre', 'b.id as id_departamento', 'b.nombre as departamento')
      ->from('tbl_puestos as a')
      ->join('tbl_departamentos as b', function ($query) {
        $query->on('a.id_departamento', '=', 'b.id');
      })->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'puestos' => $puestos,
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
      $puesto = Puesto::create($data);
      $puesto->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UN PUESTO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Puesto creado exitósamente!',
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
    $puesto = Puesto::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UN PUESTO PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$puesto) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'puesto' => $puesto,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $puesto = Puesto::find($id);
      // Verificando si existe.
      if (!$puesto) {
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
      $puesto->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UN PUESTO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Puesto actualizado exitósamente!',
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
    //
  }
}
