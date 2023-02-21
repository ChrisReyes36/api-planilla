<?php

namespace App\Http\Controllers\Tool\Empleado;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Tool\ToolDateController;
use App\Http\Controllers\Tool\ToolFormatExcelController;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class ToolEmpleadoController extends Controller
{
  public function headerExcel()
  {
    return [
      'Núm Cliente', //A
      'Razón Social', //B
      'Correo Institucional', //C
      'Correo Personal', //D
      'Tel. Fijo', //E
      'Tel. Fijo Personal', // F
      'Tel. Celular', //G
      'Tel. Celular Personal', //H
      'Dirección', //I
      'DUI', //J
      'NIT', //K
      'Sexo', //L
      'Fecha Ingreso', //M
      'Fecha Nacimiento', //N
      'Fecha Baja', //O
      'Sueldo', //P
      'Agencia', //Q
      'Departamento', //R
      'Puesto', //S
      'Cuenta Bancaria', //T
      'Fecha Expedición', //U
      'Fecha Expiración', //V
      'Lugar Expedición', //W
      'Edad', //X
      'Profesión', //Y
      'Estado Civil', //A
      'Nacionalidad', //AA
      'Estado', //AB
    ];
  }

  public function columnExcelFormats()
  {
    $format = new ToolFormatExcelController();
    return [
      'M' => NumberFormat::FORMAT_DATE_DDMMYYYY,
      'N' => NumberFormat::FORMAT_DATE_DDMMYYYY,
      'P' => $format::formatAccounting(),
    ];
  }

  public function fillData($array, $data)
  {
    $dateFormat = new ToolDateController();
    $headers = $this->headerExcel();
    array_push($array, $headers);
    foreach ($data as $key => $value) {
      $arrayAux = [
        (string)$value->num_cliente,
        $value->razon_social,
        $value->correo_institucional,
        $value->correo_personal,
        $value->telfijo,
        $value->telfijo_per,
        $value->celular,
        $value->celular_per,
        $value->direccion,
        $value->dui,
        $value->nit,
        $value->sexo,
        $dateFormat->dateTimeToExcel($dateFormat->dateCarbonFormat($value->fecha_ingreso, $dateFormat->getFormatDateExport())),
        $dateFormat->dateTimeToExcel($dateFormat->dateCarbonFormat($value->fecha_nacimiento, $dateFormat->getFormatDateExport())),
        $value->fecha_baja,
        $value->sueldo,
        $value->agencia,
        $value->departamento,
        $value->puesto,
        $value->num_cuenta,
        $value->fecha_expedicion,
        $value->fecha_expiracion,
        $value->lugar_expedicion,
        $value->edad,
        $value->profesion,
        $value->estado_civil,
        $value->nacionalidad,
        $value->estado_letra,
      ];
      array_push($array, $arrayAux);
    }
    return $array;
  }
}
