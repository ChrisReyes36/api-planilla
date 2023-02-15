<?php

namespace App\Http\Controllers\Tool\Planilla;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ToolPlanillaController extends Controller
{
  private function getHeader($idPlanilla)
  {
    $sql = "SELECT 'B' dato_banco_1, 'AJD1' dato_banco_2, c.correlativo_pago, '' dui, '' contador, REPLACE(YEAR(NOW()), ',', '') anio, DATE_FORMAT(NOW(), '%m') mes, DATE_FORMAT(NOW(), '%d') dia,
      REPLACE(REPLACE(FORMAT(SUM(b.sueldo_liquido), 2), ',', ''), '.', '') liquido_Pagar, COUNT(a.id) total_empleados, '' codigo, '' campo_vacio, '' nombre_empleado, '' num_cuenta
    FROM tbl_empleados a
    INNER JOIN tbl_detalle_planillas b ON a.id = b.id_empleado
    INNER JOIN tbl_planillas c ON b.id_planilla = c.id
    INNER JOIN tbl_cuentas d ON a.id_cuenta = d.id
    WHERE c.id = ?
    GROUP BY c.id";
    $header = DB::select($sql, [(int)$idPlanilla]);
    return $header;
  }

  private function getHeaderAi($idPlanilla)
  {
    $sql = "SELECT 'B' dato_banco_1, 'AJD1' dato_banco_2, c.correlativo_pago, '' dui, '' contador, REPLACE(YEAR(NOW()), ',', '') anio, DATE_FORMAT(NOW(), '%m') mes, DATE_FORMAT(NOW(), '%d') dia,
      REPLACE(REPLACE(FORMAT(SUM(b.liquido_Pagar), 2), ',', ''), '.', '') liquido_Pagar, COUNT(a.id) total_empleados, '' codigo, '' campo_vacio, '' nombre_empleado, '' num_cuenta
    FROM tbl_empleados a
    INNER JOIN tbl_detalle_planillas_ai b ON a.id = b.id_empleado
    INNER JOIN tbl_planillas c ON b.id_planilla = c.id
    INNER JOIN tbl_cuentas d ON a.id_cuenta = d.id
    WHERE c.id = ?
    GROUP BY c.id";
    $header = DB::select($sql, [(int)$idPlanilla]);
    return $header;
  }

  private function getData($idPlanilla)
  {
    $sql = "SELECT 'T' dato_banco_1, 'AJD1' dato_banco_2, c.correlativo_pago, REPLACE(a.dui, '-', '') dui, '' contador, REPLACE(YEAR(NOW()), ',', '') anio,
      DATE_FORMAT(NOW(), '%m') mes, DATE_FORMAT(NOW(), '%d') dia, REPLACE(REPLACE(FORMAT(b.sueldo_liquido, 2), ',', ''), '.', '') liquido_Pagar,
      '' total_empleados, c.codigo, '' campo_vacio, CONCAT_WS(' ', UPPER(a.nombres), UPPER(a.apellidos)) nombre_empleado,
      REPLACE(d.num_cuenta, '-', '') num_cuenta
    FROM tbl_empleados a
    INNER JOIN tbl_detalle_planillas b ON a.id = b.id_empleado
    INNER JOIN tbl_planillas c ON b.id_planilla = c.id
    INNER JOIN tbl_cuentas d ON a.id_cuenta = d.id
    WHERE c.id = ?
    ORDER BY a.nombres ASC";
    $data = DB::select($sql, [(int)$idPlanilla]);
    return $data;
  }

  private function getDataAi($idPlanilla)
  {
    $sql = "SELECT 'T' dato_banco_1, 'AJD1' dato_banco_2, c.correlativo_pago, REPLACE(a.dui, '-', '') dui, '' contador, REPLACE(YEAR(NOW()), ',', '') anio,
      DATE_FORMAT(NOW(), '%m') mes, DATE_FORMAT(NOW(), '%d') dia, REPLACE(REPLACE(FORMAT(b.liquido_Pagar, 2), ',', ''), '.', '') liquido_Pagar,
      '' total_empleados, c.codigo, '' campo_vacio, CONCAT_WS(' ', UPPER(a.nombres), UPPER(a.apellidos)) nombre_empleado,
      REPLACE(d.num_cuenta, '-', '') num_cuenta
    FROM tbl_empleados a
    INNER JOIN tbl_detalle_planillas_ai b ON a.id = b.id_empleado
    INNER JOIN tbl_planillas c ON b.id_planilla = c.id
    INNER JOIN tbl_cuentas d ON a.id_cuenta = d.id
    WHERE c.id = ?
    ORDER BY a.nombres ASC";
    $data = DB::select($sql, [(int)$idPlanilla]);
    return $data;
  }

  public function headerExcel($idPlanilla, $array, $tipo)
  {
    if ($tipo == "PQ" || $tipo == "PM") {
      $headers = $this->getHeader($idPlanilla);
    } elseif ($tipo == "PA" || $tipo == "PI") {
      $headers = $this->getHeaderAi($idPlanilla);
    }
    foreach ($headers as $key => $value) {
      $arrayAux = [
        (string)$value->dato_banco_1,
        (string)$value->dato_banco_2,
        (string)$value->correlativo_pago,
        (string)$value->dui,
        (string)$value->contador,
        (string)$value->anio,
        (string)$value->mes,
        (string)$value->dia,
        (string)$value->liquido_Pagar,
        (string)$value->total_empleados,
        (string)$value->codigo,
        (string)$value->campo_vacio,
        (string)$value->nombre_empleado,
        (string)$value->num_cuenta,
      ];
      array_push($array, $arrayAux);
    }
    return $array;
  }

  public function fillData($idPlanilla, $array, $tipo)
  {
    if ($tipo == "PQ" || $tipo == "PM") {
      $data = $this->getData($idPlanilla);
    } elseif ($tipo == "PA" || $tipo == "PI") {
      $data = $this->getDataAi($idPlanilla);
    }
    $contador = 0;
    foreach ($data as $key => $value) {
      $arrayAux = [
        (string)trim($value->dato_banco_1),
        (string)trim($value->dato_banco_2),
        (string)trim($value->correlativo_pago),
        (string)trim($value->dui),
        (string)trim($contador = $contador + 1),
        (string)trim($value->anio),
        (string)trim($value->mes),
        (string)trim($value->dia),
        (string)trim($value->liquido_Pagar),
        (string)trim($value->total_empleados),
        (string)trim($value->codigo),
        (string)trim($value->campo_vacio),
        (string)trim($value->nombre_empleado),
        (string)trim($value->num_cuenta),
      ];
      array_push($array, $arrayAux);
    }
    return $array;
  }
}
