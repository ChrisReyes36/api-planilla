<?php

namespace App\Http\Controllers\Tool\Vacacion;

use App\Http\Controllers\Controller;

class ToolVacacionController extends Controller
{
  public function headerExcel()
  {
    return [
      'Núm Cliente', //A
      'Razón Social', //B
      'Departamento', //C
      'Puesto', //D
      'Fecha Inicio', //E
      'Fecha Fin', //F
      'Días Vacaciones', //G
      'Estado', //H
      'Tipo', //I
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
        $value->departamento,
        $value->puesto,
        $value->f_inicio,
        $value->f_fin,
        $value->dias,
        $value->estado,
        $value->tipo,
      ];
      array_push($array, $arrayAux);
    }
    return $array;
  }
}
