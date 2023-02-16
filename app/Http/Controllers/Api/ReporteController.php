<?php

namespace App\Http\Controllers\Api;

use App\Exports\VacacionExport;
use App\Http\Controllers\Controller;
use App\Models\Planilla;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Luecano\NumeroALetras\NumeroALetras;

class ReporteController extends Controller
{
  private function fechaActual($fecha = null)
  {
    $fechaActual = !empty($fecha) ? $fecha : Carbon::now();
    $fechaActual = Carbon::parse($fechaActual)->locale('es')->isoFormat('dddd D \d\e MMMM \d\e\l Y');
    return $fechaActual;
  }

  private function mesDiaActual()
  {
    $diaActual = date('d', strtotime(Carbon::now()));
    $mesActual = date('m', strtotime(Carbon::now()));
    return [
      'dia' => (int)$diaActual,
      'mes' => (int)$mesActual,
    ];
  }

  private function formatLetraFecha($fecha)
  {
    return Carbon::parse($fecha)->locale('es')->isoFormat('D \d\e MMMM \d\e\l Y');
  }

  public function contanciaIngreso(Request $request, $idEmpleado)
  {
    // Validamos
    if ($idEmpleado == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Empleado!",
      ], 500);
    }
    // Obtenemos Datos.
    $constancia = DB::select("CALL sp_Mostrar_Constancia_ingreso(?)", [(string)$idEmpleado]);
    $fecha_ingreso = $this->formatLetraFecha($constancia[0]->fecha_ingreso);
    $data = [
      'fecha' => $this->fechaActual(),
      'fecha_ingreso' => $fecha_ingreso,
      'bonos' => $constancia[0]->BONOS,
      'comision' => $constancia[0]->COMISION,
      'detalle' => $constancia,
    ];
    $pdf = Pdf::loadView('constanciaIngreso.pdf', ["data" => $data]);
    // Bitácora.
    DB::select('CALL Sp_Insertar_Biacora(?, "HA GENERADO UNA CONSTANCIA DE SUELDO EN SIPLA")', [$request->user()->id]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('constancia_sueldo.pdf');
  }

  public function contanciaEmpleo(Request $request, $idEmpleado)
  {
    // Validamos
    if ($idEmpleado == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Empleado!",
      ], 500);
    }
    // Obtenemos Datos.
    $constancia = DB::select("CALL Sp_Mostrar_Constancia_empleo(?)", [(string)$idEmpleado]);
    $fecha_ingreso = $this->formatLetraFecha($constancia[0]->FECHA_INGRESO);
    $fecha_baja = !empty($constancia[0]->FECHA_BAJA) ? $this->formatLetraFecha($constancia[0]->FECHA_BAJA) : 'la fecha';
    $data = [
      'fecha' => $this->fechaActual(),
      'fecha_ingreso' => $fecha_ingreso,
      'fecha_baja' => $fecha_baja,
      'detalle' => $constancia,
    ];
    $pdf = Pdf::loadView('constanciaEmpleo.pdf', ["data" => $data]);
    // Bitácora.
    DB::select('CALL Sp_Insertar_Biacora(?, "HA GENERADO UNA CONSTANCIA DE EMPLEO EN SIPLA")', [$request->user()->id]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('constancia_empleo.pdf');
  }

  public function cartasRenta(Request $request, $anio)
  {
    // Validamos
    if ($anio == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Año!",
      ], 500);
    }
    // Obtenemos Datos.
    $constancias = DB::select("CALL sp_Mostrar_carta_renta(?)", [(int)$anio]);
    $data = [
      'fecha' => $this->formatLetraFecha(Carbon::now()),
      'anio' => $anio,
      'detalle' => $constancias,
    ];
    $pdf = Pdf::loadView('cartasRenta.pdf', ["data" => $data]);
    // Bitácora.
    $bitacora = "HA GENERADO LAS CARTAS DE RENTA DEL AÑO $anio DE SUELDO EN SIPLA";
    DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('cartas_renta.pdf');
  }

  public function reciboVacacion(Request $request, $idEmpleado)
  {
    // Validamos
    if ($idEmpleado == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Empleado!",
      ], 500);
    }
    // Obtenemos Datos.
    $recibo = DB::select(
      "SELECT a.*,
        DATE_FORMAT(a.DESDE,'%d/%m/%Y') DESDE_F,
        DATE_FORMAT(a.HASTA,'%d/%m/%Y') HASTA_F,
        DATE_FORMAT(a.F_GOZE_INICIO,'%d/%m/%Y') F_GOZE_INICIO_F,
        DATE_FORMAT(a.F_GOZE_FIN,'%d/%m/%Y') F_GOZE_FIN_F
      FROM v_recibo_vacacion a WHERE a.ID_EMPLEADO = ?;",
      [(int)$idEmpleado]
    );
    $fecha_ingreso = $this->fechaActual($recibo[0]->FECHA_INGRESO);
    // Asignamos Datos.
    $data = [
      'fecha_actual' => $this->fechaActual(),
      'fecha_ingreso' => $fecha_ingreso,
      'recibo' => $recibo,
    ];
    // Bitácora.
    DB::select('CALL Sp_Insertar_Biacora(?, "HA GENERADO UN RECIBO DE VACACIÓN EN SIPLA")', [$request->user()->id]);
    // Retornamos Respuesta.
    // return $data;
    return new VacacionExport($data);
  }

  public function reciboFiniquito(Request $request, $anio)
  {
    // Validamos
    if ($anio == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Año!",
      ], 500);
    }
    // Obtenemos Datos.
    $data = DB::select("CALL Sp_Mostrar_Finiquito_Indem(?)", [(int)$anio]);
    $recibo = [];
    $formatter = new NumeroALetras();
    foreach ($data as $key => $value) {
      $array = (object)[
        'nombre_completo' => $value->nombre_completo,
        'dui' => $value->dui,
        'fecha_ingreso' => $value->fecha_ingreso,
        'fecha_corte' => $value->fecha_corte,
        'inde_recivida' => $value->inde_recivida,
        'inde_recivida_letra' => $formatter->toInvoice($value->inde_recivida, 2, 'dólares'),
        'isr' => $value->isr,
        'pgr' => $value->pgr,
        'total_descuentos' => $value->total_descuentos,
        'liquido_Pagar' => $value->liquido_Pagar,
      ];
      array_push($recibo, $array);
    }
    $pdf = Pdf::loadView('reciboFiniquitos.pdf', ["data" => $recibo]);
    // Bitácora.
    $bitacora = "HA GENERADO LOS RECIBOS DE INDEMNIZACIÓN DEL $anio EN SIPLA";
    DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('recibo_finiquitos.pdf');
  }

  public function boletaQuincenal(Request $request, $idPlanilla, $idEmpleado = "")
  {
    // Validamos
    if ($idPlanilla == "undefined") {
      return response()->json([
        'success' => false,
        'message' => "¡Debe Ingresar un Año!",
      ], 500);
    }
    // Obtenemos Datos.
    $planilla = Planilla::find($idPlanilla);
    if (empty($idEmpleado)) {
      $bitacora = "HA GENERADO LAS BOLETAS QUINCENALES DE LA PLANILLA " . $planilla->codigo;
      $boleta = DB::select("CALL Sp_Mostrar_Boleta_Quincenal_Full(?)", [$idPlanilla]);
    } else {
      $bitacora = "HA GENERADO LA BOLETA QUINCENAL DE LA PLANILLA " . $planilla->codigo;
      $boleta = DB::select("CALL Sp_Mostrar_Boleta_Quincenal(?, ?)", [$idEmpleado, $idPlanilla]);
    }
    $mes = (int)Carbon::parse($planilla->f_inicio_planilla)->format('m');
    $dia = (int)Carbon::parse($planilla->f_inicio_planilla)->format('d');
    $data = [
      'fecha' => $this->formatLetraFecha(Carbon::now()),
      'mes' => $mes,
      'dia' => $dia,
      'detalle' => $boleta,
    ];
    $pdf = Pdf::loadView('boletaQuincenal.pdf', ["data" => $data]);
    // Bitácora.
    // DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('boletas_quincenales.pdf');
  }

  public function boletasAguinaldo(Request $request, $anio, $idEmpleado = "")
  {
    // Obtenemos Datos.
    if (empty($idEmpleado)) {
      $bitacora = "HA GENERADO LAS BOLETAS DE AGUINALDO DEL AÑO " . $anio;
      $boleta = DB::select("CALL Sp_Mostrar_boleta_Aguinaldo_Full(?)", [$anio]);
    } else {
      $bitacora = "HA GENERADO LA BOLETA DE AGUINALDO DEL AÑO " . $anio;
      $boleta = DB::select("CALL Sp_Mostrar_boleta_Aguinaldo(?, ?)", [$anio, $idEmpleado]);
    }
    $data = [
      'fecha' => $this->formatLetraFecha(Carbon::now()),
      'anio' => $anio,
      'detalle' => $boleta,
    ];
    // return $data;
    $pdf = Pdf::loadView('boletaAguinaldo.pdf', ["data" => $data]);
    // Bitácora.
    DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
    // Retornamos Respuesta.
    // return $pdf->stream();
    return $pdf->download('boletas_aguinaldo.pdf');
  }
}
