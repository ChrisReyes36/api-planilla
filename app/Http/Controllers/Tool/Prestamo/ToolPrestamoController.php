<?php

namespace App\Http\Controllers\Tool\Prestamo;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Tool\ToolFormatExcelController;

class ToolPrestamoController extends Controller
{
  public function headerExcel()
  {
    return [
      'Núm Cliente', //A
      'Razón Social', //B
      'Núm Préstamo', //C
      'Saldo Préstamo', //D
      'Cuota Mensual', //E
      'Cuota Quincena', //F
      'Valor Descuento', //G
      'Tipo Préstamo', //H
      'Fecha Cancelado', //I
      'Estado', //J
    ];
  }

  public function columnExcelFormats()
  {
    $format = new ToolFormatExcelController();
    return [
      'D' => $format::formatAccounting(),
      'E' => $format::formatAccounting(),
      'F' => $format::formatAccounting(),
      'G' => $format::formatAccounting(),
    ];
  }

  public function fillData($array, $data)
  {
    $headers = $this->headerExcel();
    array_push($array, $headers);
    foreach ($data as $key => $value) {
      $arrayAux = [
        (string)$value->num_cliente,
        $value->razon_social,
        (string)$value->num_prestamo,
        $value->saldo_prestamo,
        $value->cuota_mensual,
        $value->cuota_quincena,
        $value->valor_descuento,
        $value->tipo_prestamo,
        $value->fecha_cancelado,
        $value->estado,
      ];
      array_push($array, $arrayAux);
    }
    return $array;
  }
}
