<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Asignacion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AsignacionController extends Controller
{
  private function validations()
  {
    // Validaciones.
    return [
      'id_empleado' => ['required', 'int'],
      'id_concepto' => ['required', 'int'],
      'id_tipo_asignacion' => ['required', 'int'],
    ];
  }

  private function createStruct()
  {
    return (object) [
      'id_empleado' => null,
      'razon_social' => null,
      'departamento' => null,
      'puesto' => null,
      'sueldo' => 0.00,
      'asignaciones' => [],
    ];
  }

  private function getEmpleados()
  {
    $empleados = Asignacion::select(
      'a.id_empleado',
      DB::raw('CONCAT_WS(" ", b.nombres, b.apellidos) razon_social'),
      'f.nombre AS departamento',
      'e.nombre AS puesto',
      'b.sueldo'
    )
      ->from('tbl_asignaciones as a')
      ->join('tbl_empleados as b', function ($query) {
        $query->on('a.id_empleado', '=', 'b.id');
      })
      ->leftJoin('tbl_puestos as e', function ($query) {
        $query->on('b.id_puesto', '=', 'e.id');
      })
      ->leftJoin('tbl_departamentos as f', function ($query) {
        $query->on('e.id_departamento', '=', 'f.id');
      })
      ->groupBy('a.id_empleado')
      ->orderBy('f.nombre', 'asc')
      ->orderBy('b.sueldo', 'desc')
      ->get();

    return $empleados;
  }

  private function getAsignaciones($id_emplado)
  {
    $asignaciones = Asignacion::select(
      'a.id',
      'a.id_empleado',
      'c.id as id_concepto',
      DB::raw('CONCAT_WS("-", c.nombre, c.detalle) concepto'),
      'd.nombre as tipo_asignacion',
      'a.monto',
      'a.estado',
    )
      ->from('tbl_asignaciones as a')
      ->join('tbl_empleados as b', function ($query) {
        $query->on('a.id_empleado', '=', 'b.id');
      })
      ->join('tbl_conceptos as c', function ($query) {
        $query->on('a.id_concepto', '=', 'c.id');
      })
      ->join('tbl_tipo_asignaciones as d', function ($query) {
        $query->on('a.id_tipo_asignacion', '=', 'd.id');
      })
      ->where('a.id_empleado', $id_emplado)
      ->orderBy('a.estado', 'asc')
      ->orderBy('c.nombre', 'asc')
      ->get();

    return $asignaciones;
  }

  public function index()
  {
    $asignaciones = [];
    // Obtenemos datos.
    $data = $this->getEmpleados();
    foreach ($data as $key => $value) {
      $asignacion = $this->createStruct();
      $asignacion->id_empleado = $value->id_empleado;
      $asignacion->razon_social = $value->razon_social;
      $asignacion->departamento = $value->departamento;
      $asignacion->puesto = $value->puesto;
      $asignacion->sueldo = $value->sueldo;
      $asignacion->asignaciones = $this->getAsignaciones($value->id_empleado);
      array_push($asignaciones, $asignacion);
    }

    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'asignaciones' => $asignaciones,
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
      $asignacion = DB::select(
        'SELECT * FROM tbl_asignaciones a WHERE a.id_empleado = ? AND a.id_concepto = ?;',
        [$data['id_empleado'], $data['id_concepto']]
      );
      if ($asignacion) {
        return response()->json([
          'success' => false,
          'errors' => [
            'duplicado' => [
              'Ya se le asignó el concepto al empleado'
            ],
          ]
        ], 400);
      }
      // Creando un registro.
      $asignacion = Asignacion::create($data);
      $asignacion->save();
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Asignación creada exitósamente!',
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
    $asignacion = Asignacion::find($id);
    // Verificamos si existe el registro.
    if (!$asignacion) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'asignacion' => $asignacion,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $asignacion = Asignacion::find($id);
      // Verificando si existe.
      if (!$asignacion) {
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
      $asignacionDuplicada = DB::select(
        'SELECT * FROM tbl_asignaciones a WHERE a.id_empleado = ? AND a.id_concepto = ?;',
        [$data['id_empleado'], $data['id_concepto']]
      );
      if ($data['id_empleado'] != $asignacion->id_empleado || $data['id_concepto'] != $asignacion->id_concepto) {
        if ($asignacionDuplicada) {
          return response()->json([
            'success' => false,
            'errors' => [
              'duplicado' => [
                'Ya se le asignó el concepto al empleado'
              ],
            ]
          ], 400);
        }
      }
      // Actualizamos registro.
      $asignacion->update($data);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Asignación actualizada exitósamente!',
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
      $asignacion = Asignacion::find($id);
      // Verificando si existe.
      if (!$asignacion) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $asignacion->estado == 'A' ? 'I' : 'A';
      $mensaje = $asignacion->estado == 'A' ?
        '¡Asignación desactivada exitósamente!' :
        '¡Asignación activada exitósamente!';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $asignacion->update($data);
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
