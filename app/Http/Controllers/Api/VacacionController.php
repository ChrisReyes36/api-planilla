<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Tool\ToolExcelController;
use App\Http\Controllers\Tool\Vacacion\ToolVacacionController;
use App\Models\Vacacion;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class VacacionController extends Controller
{
  private function validations()
  {
    // Validaciones.
    return [
      'id_empleado' => ['required', 'int'],
      'f_inicio' => ['required', 'string'],
      'f_fin' => ['required', 'string'],
      'tipo' => ['required', 'string'],
    ];
  }

  private function createStruct()
  {
    return (object) [
      'id_empleado' => null,
      'num_cliente' => null,
      'razon_social' => null,
      'agencia' => null,
      'departamento' => null,
      'puesto' => null,
      'vacaciones' => [],
    ];
  }

  private function getVacaciones()
  {
    $sql = "SELECT a.id, b.num_cliente, CONCAT_WS(' ', b.nombres, b.apellidos) razon_social, d.nombre departamento,
    c.nombre puesto, DATE_FORMAT(a.f_inicio, '%d/%m/%Y') f_inicio, DATE_FORMAT(a.f_fin, '%d/%m/%Y') f_fin, a.dias,
    CASE WHEN a.estado = 'D' THEN 'DESPACHADA' ELSE 'FINALIZADA' END estado, CASE WHEN a.tipo = 'T' THEN 'PERÍODO VACACIONAL' ELSE 'GOCE VACACIONAL' END tipo
    FROM tbl_vacaciones a
    INNER JOIN tbl_empleados b ON a.id_empleado = b.id
    LEFT JOIN tbl_puestos c ON b.id_puesto = c.id
    LEFT JOIN tbl_departamentos d ON c.id_departamento = d.id
    ORDER BY b.nombres ASC;";

    return DB::select($sql);
  }

  private function getEmpleados()
  {
    $sql = "SELECT b.id id_empleado, b.num_cliente, CONCAT_WS(' ', b.nombres, b.apellidos) razon_social,
        c.nombre agencia, d.nombre puesto, e.nombre departamento
    FROM tbl_vacaciones a
    INNER JOIN tbl_empleados b ON a.id_empleado = b.id
    INNER JOIN tbl_agencias c ON b.id_agencia = c.id
    LEFT JOIN tbl_puestos d ON b.id_puesto = d.id
    LEFT JOIN tbl_departamentos e ON d.id_departamento = e.id
    GROUP BY b.id, b.num_cliente, b.nombres, b.apellidos, c.nombre, d.nombre, e.nombre
    ORDER BY b.nombres ASC;";

    return DB::select($sql);
  }

  private function getVacacionesByEmpleado($idEmpleado)
  {
    $sql = "SELECT a.id, a.id_empleado, a.f_inicio, a.f_fin, a.dias, a.estado, a.tipo
    FROM tbl_vacaciones a WHERE a.id_empleado = ? ORDER BY a.f_inicio ASC;";

    return DB::select($sql, [$idEmpleado]);
  }

  public function index()
  {
    $vacaciones = [];
    // Obtenemos datos.
    $data = $this->getEmpleados();
    foreach ($data as $key => $value) {
      $vacacion = $this->createStruct();
      $vacacion->id_empleado = $value->id_empleado;
      $vacacion->num_cliente = $value->num_cliente;
      $vacacion->razon_social = $value->razon_social;
      $vacacion->agencia = $value->agencia;
      $vacacion->departamento = $value->departamento;
      $vacacion->puesto = $value->puesto;
      $vacacion->vacaciones = $this->getVacacionesByEmpleado($value->id_empleado);
      array_push($vacaciones, $vacacion);
    }
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'vacaciones' => $vacaciones,
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
      $f_inicio = Carbon::parse($data["f_inicio"])->format("Y/m/d");
      $f_fin = Carbon::parse($data["f_fin"])->format("Y/m/d");
      if ($f_inicio > $f_fin) {
        return response()->json([
          'success' => false,
          'errors' => [
            'rangos' => [
              'Fecha inicio no debe ser mayor a fecha fin'
            ],
          ]
        ], 400);
      }
      $data["f_inicio"] = $f_inicio;
      $data["f_fin"] = $f_fin;
      $f_inicio = Carbon::parse($f_inicio);
      $dias = $f_inicio->diffInDays($f_fin);
      if ((int)$dias > 18) {
        return response()->json([
          'success' => false,
          'errors' => [
            'rangos' => [
              'El tramo no debe ser más de 18 días seguidos'
            ],
          ]
        ], 400);
      }
      $data["dias"] = $dias;
      // Creando un registro.
      $vacacion = Vacacion::create($data);
      $vacacion->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UNA VACACIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Vacación ingresada exitósamente!',
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
    $vacacion = Vacacion::find($id);
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UNA VACACIÓN PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Verificamos si existe el registro.
    if (!$vacacion) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'vacacion' => $vacacion,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $vacacion = Vacacion::find($id);
      // Verificando si existe.
      if (!$vacacion) {
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
      $f_inicio = Carbon::parse($data["f_inicio"])->format("Y/m/d");
      $f_fin = Carbon::parse($data["f_fin"])->format("Y/m/d");
      if ($f_inicio > $f_fin) {
        return response()->json([
          'success' => false,
          'errors' => [
            'rangos' => [
              'Fecha inicio no debe ser mayor a fecha fin'
            ],
          ]
        ], 400);
      }
      $data["f_inicio"] = $f_inicio;
      $data["f_fin"] = $f_fin;
      $f_inicio = Carbon::parse($f_inicio);
      $dias = $f_inicio->diffInDays($f_fin);
      if ((int)$dias > 18) {
        return response()->json([
          'success' => false,
          'errors' => [
            'rangos' => [
              'El tramo no debe ser más de 18 días seguidos'
            ],
          ]
        ], 400);
      }
      $data["dias"] = $dias;
      // Actualizamos registro.
      $vacacion->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UNA VACACIÓN EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Vacación actualizada exitósamente!',
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
    try {
      // Obtenemos registro.
      $vacacion = Vacacion::find($id);
      // Verificando si existe.
      if (!$vacacion) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado (Despachado - Finalizado)
      $bitacora = $vacacion->estado == 'D' ?
        'HA FINALIZADO UNA VACACIÓN EN SIPLA' :
        'HA DESPACHADO UNA VACACIÓN EN SIPLA';
      $estado = $vacacion->estado == 'D' ? 'F' : 'D';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $vacacion->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => "¡Vacación finalizada exitósamente!",
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function exportXls()
  {
    $vacaciones = $this->getVacaciones();
    $excel = new ToolExcelController();
    $tool = new ToolVacacionController();
    $data = [];
    $data = $tool->fillData($data, $vacaciones);
    return $excel->createExcel($data);
  }
}
