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
      'Tel. Celular', //F
      'Dirección', //G
      'DUI', //H
      'NIT', //I
      'Sexo', //J
      'Fecha Ingreso', //K
      'Fecha Nacimiento', //L
      'Fecha Baja', //M
      'Sueldo', //N
      'Agencia', //O
      'Departamento', //P
      'Puesto', //Q
      'Cuenta Bancaria', //R
      'Fecha Expedición', //S
      'Fecha Expiración', //T
      'Lugar Expedición', //U
      'Edad', //V
      'Profesión', //W
      'Estado Civil', //X
      'Nacionalidad', //Y
      'Estado', //Z
    ];
  }

  public function columnExcelFormats()
  {
    $format = new ToolFormatExcelController();
    return [
      'K' => NumberFormat::FORMAT_DATE_DDMMYYYY,
      'L' => NumberFormat::FORMAT_DATE_DDMMYYYY,
      'N' => $format::formatAccounting(),
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
        $value->celular,
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
