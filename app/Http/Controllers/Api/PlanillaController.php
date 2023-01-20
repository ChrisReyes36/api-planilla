<?php

namespace App\Http\Controllers\Api;

use App\Exports\DetallePlanillaExport;
use App\Http\Controllers\Controller;
use App\Models\Planilla;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PlanillaController extends Controller
{
  private function validations($planillaId = '')
  {
    // Validaciones.
    $id = $planillaId ? ', ' . $planillaId : '';
    return [
      'codigo' => ['unique:tbl_planillas,codigo' . $id],
      'id_tipo_planilla' => ['required', 'int'],
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

  private function datesTypesCode($tPlanilla = 0)
  {
    $diaActual = date('d', strtotime(Carbon::now()));
    $mesActual = date('m', strtotime(Carbon::now()));
    $anioActual = date('Y', strtotime(Carbon::now()));
    $meses = ["ENE", "FE", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC"];
    $tipo = DB::select('SELECT nombre FROM tbl_tipo_planillas a WHERE a.id = ?', [(int)$tPlanilla]);
    // Fechas.
    if ((int)$diaActual > 15 && $tipo[0]->nombre == "PQ") {
      $quincena = "Q2";
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-16")->format('Y-m-d');
      $f_fin_planilla = $this->dateEnd();
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre . '-' . $quincena;
    } elseif ((int)$diaActual <= 15 && $tipo[0]->nombre == "PQ") {
      $quincena = "Q1";
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-01")->format('Y-m-d');
      $f_fin_planilla = "$anioActual-$mesActual-15";
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre . '-' . $quincena;
    } elseif ($tipo[0]->nombre == "PM") {
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-01")->format('Y-m-d');
      $f_fin_planilla = $this->dateEnd();
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre;
    }
    // Retorno.
    return [
      $f_inicio_planilla,
      $f_fin_planilla,
      $codigo,
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $planillas = Planilla::select(
      'a.id',
      'a.codigo',
      DB::raw('(SELECT CONCAT_WS("-", b.nombre, b.detalle) FROM tbl_tipo_planillas b WHERE b.id = a.id_tipo_planilla) tipo_planilla'),
      'a.f_inicio_planilla',
      'a.f_fin_planilla',
      'a.total_planilla',
      'a.estado'
    )
      ->from('tbl_planillas as a')
      ->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'planillas' => $planillas,
    ], 200);
  }

  private function showDetail($id)
  {
    $sql = "SELECT
      a.id,
      @i := @i + 1 as contador,
      a.id_empleado,
      CONCAT_WS(' ', b.nombres, b.apellidos) colaborador,
      d.nombre departamento,
      c.nombre puesto,
      DATE_FORMAT(b.fecha_ingreso, '%d-%m-%Y') fecha_ingreso,
      b.num_cliente,
      e.num_cuenta,
      b.sueldo,
      a.dias_trabajados,
      a.calculo_salario,
      a.bonos,
      a.bonos_variables,
      a.vacaciones,
      a.comision,
      (a.calculo_salario + a.bonos + a.vacaciones + a.comision) t_quincena,
      a.isss,
      a.afp,
      a.ipsfa,
      (a.calculo_salario + a.bonos + a.vacaciones + a.comision) - (a.isss + a.afp + a.ipsfa) t_quincena_desc,
      a.renta,
      a.total_descuentos,
      a.prestamos,
      a.pgr,
      a.fsv,
      a.fosafi,
      a.anticipos,
      a.dv,
      a.viaticos,
      a.sueldo_liquido
      FROM tbl_detalle_planillas a
      INNER JOIN tbl_empleados b ON a.id_empleado = b.id
      LEFT JOIN tbl_puestos c ON b.id_puesto = c.id
      LEFT JOIN tbl_departamentos d ON c.id_departamento = d.id
      LEFT JOIN tbl_cuentas e ON b.id_cuenta = e.id
      CROSS JOIN (SELECT @i := 0) r
      WHERE a.id_planilla = ?
      ORDER BY @i := @i + 1 ASC, d.nombre ASC, a.sueldo DESC;";
    $detalle = DB::select($sql, [$id]);
    return $detalle;
  }

  public function getDetailPlanilla($id)
  {
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'detalle' => $this->showDetail($id),
    ], 200);
  }

  public function getTypes()
  {
    // Obtenemos datos.
    $tipos = DB::select("SELECT a.id, CONCAT_WS('-', a.nombre, a.detalle) nombre FROM tbl_tipo_planillas a;");
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'tipos' => $tipos,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $values = $this->datesTypesCode($data['id_tipo_planilla']);
      $data["f_inicio_planilla"] = $values[0];
      $data["f_fin_planilla"] = $values[1];
      $data["codigo"] = $values[2];
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Creando un registro.
      $planilla = Planilla::create($data);
      $planilla->save();
      $uIdPlanilla = Planilla::latest('id')->first();
      // Llenando Detalle Planilla.
      DB::select('CALL Sp_Insertar_D_planilla(?)', [$uIdPlanilla->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Planilla creada exitósamente!',
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
    //
  }

  public function update(Request $request, $id)
  {
    try {
      // Actualizando Detalle Planilla.
      DB::select('CALL Sp_Recalcular_planilla(?)', [$id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Recálculo realizado exitósamente!',
      ], 201);
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
      // Eliminando registro.
      DB::select('DELETE FROM tbl_detalle_planillas WHERE id = ?', [$id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => "¡Detalle eliminado exitósamente!",
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  private function createStruct()
  {
    return (object) [
      'f_inicio' => null,
      'f_fin' => null,
      'detalles' => [],
    ];
  }

  public function exportExcel($id)
  {
    $planilla = Planilla::find($id);
    $detalle = $this->createStruct();
    $detalle->f_inicio = Carbon::parse($planilla->f_inicio_planilla)->format('d/m/Y');
    $detalle->f_fin = Carbon::parse($planilla->f_fin_planilla)->format('d/m/Y');
    $detalle->detalles = $this->showDetail($planilla->id);
    return new DetallePlanillaExport($detalle);
  }
}
