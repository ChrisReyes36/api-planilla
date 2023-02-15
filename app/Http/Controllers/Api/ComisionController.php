<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comision;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ComisionController extends Controller
{
  private function validations()
  {
    // Validaciones.
    return [
      'num_cliente' => ['required'],
      'comision' => ['required'],
    ];
  }

  private function dateEnd()
  {
    $mesActual = date('m', strtotime(Carbon::now()));
    $anioActual = date('Y', strtotime(Carbon::now()));
    $validar31 = checkdate($mesActual, 31, $anioActual);
    $validar29 = checkdate($mesActual, 29, $anioActual);
    if ($validar31 && (int)$mesActual != 2) {
      $f_fin = "$anioActual-$mesActual-31";
    } elseif ((int)$mesActual == 2) {
      if ($validar29) {
        $f_fin = "$anioActual-$mesActual-29";
      } else {
        $f_fin = "$anioActual-$mesActual-28";
      }
    } else {
      $f_fin = "$anioActual-$mesActual-30";
    }
    return $f_fin;
  }

  public function index()
  {
    // Obtenemos datos.
    $sql = "SELECT
    a.id, a.num_cliente, CONCAT_WS(' ', b.nombres, b.apellidos) razon_social,
    a.fecha_creacion, a.comision, a.observaciones
    FROM tbl_comisiones a
    INNER JOIN tbl_empleados b ON a.num_cliente = b.num_cliente;";
    $comisiones = DB::select($sql);
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'comisiones' => $comisiones,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $data["fecha_creacion"] = $this->dateEnd();
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Evitar duplicado.
      $comision = DB::select(
        'SELECT * FROM tbl_comisiones a WHERE a.num_cliente = ? AND a.fecha_creacion = ?;',
        [$data['num_cliente'], $data['fecha_creacion']]
      );
      if ($comision) {
        return response()->json([
          'success' => false,
          'errors' => [
            'duplicado' => [
              'Ya se le asignó la comisión al empleado'
            ],
          ]
        ], 400);
      }
      // Creando un registro.
      $comision = Comision::create($data);
      $comision->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UNA COMISIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Comisión creada exitósamente!',
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
    $comision = Comision::find($id);
    // Verificamos si existe el registro.
    if (!$comision) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'comision' => $comision,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $f_fin = $this->dateEnd();
      // Obtenemos registro.
      $comision = Comision::find($id);
      // Verificando si existe.
      if (!$comision) {
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
      $comisionDuplicada = DB::select(
        'SELECT * FROM tbl_comisiones a WHERE a.num_cliente = ? AND a.fecha_creacion = ?;',
        [$data['num_cliente'], $f_fin]
      );
      if ($data['num_cliente'] != $comision->num_cliente || $f_fin != $comision->fecha_creacion) {
        if ($comisionDuplicada) {
          return response()->json([
            'success' => false,
            'errors' => [
              'duplicado' => [
                'Ya se le asignó la comisión al empleado'
              ],
            ]
          ], 400);
        }
      }
      // Actualizamos registro.
      $comision->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UNA COMISIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Comisión actualizada exitósamente!',
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
