<?php

namespace App\Http\Controllers\Tool;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Shared\Date;

class ToolDateController extends Controller
{
  private $delimiter = '-';
  private $lessDate = '2007-01-01';
  private $greaterDate;
  private $formatDb = 'Y-m-d';
  private $delimiterDateTimeToExcel = '/';
  private $formatDateExport = 'd/m/Y';

  //función que retorna la fecha mínima aceptada por el sistema
  public function lessDate($date =  null)
  {
    return (!empty($date)) ? $this->dateCarbon($date) : $this->dateCarbon($this->lessDate);
  }

  //función que retorna la fecha máxima aceptada por el sistema
  public function greaterDate()
  {
    $this->greaterDate = Carbon::now();
    return $this->greaterDate;
  }

  //crear fecha par ser manipulada con carbon
  public function dateCarbon($string)
  {
    return Carbon::create($string);
  }

  //función para identificar si una fecha dada es menor o igual a otra fecha
  //ambas fechas tiene que ser fechas Carbon
  public function lessThanOrEqualTo($date1, $date2)
  {
    return $date1->lessThanOrEqualTo($date2);
  }

  //función para identificar si una fecha dada es mayor a otra fecha
  public function greaterThanOrEqualTo($date1, $date2)
  {
    return $date1->greaterThanOrEqualTo($date2);
  }

  //función para generar fecha formateada
  public function dateCarbonFormat($string, $format)
  {
    return (!empty($string)) ? $this->dateCarbon($string)->format($format) : $string;
  }

  //funcion para retornar formato usado para consultas DB
  public function getFormatDb()
  {
    return $this->formatDb;
  }

  //función para retornar meses humanos largos
  public function getMonthHumas()
  {
    return [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre',
    ];
  }

  public function formatHumansDMMMMY($date, $concat = '-')
  {
    $date = $this->dateCarbon($date);
    $months = $this->getMonthHumas();
    $month = $date->format('m') - 1;
    return $date->format('d') . $concat . $months[$month] . $concat . $date->format('Y');
  }

  // formato recibido -> d/m/Y
  // formato a generar para utilizar función Date -> Y-m-d
  public function dateTimeToExcel($date)
  { //Y-m-d
    $dateTimeToExcel = $date;
    if (!empty($date)) {
      $dateExplode = explode($this->delimiterDateTimeToExcel, $date);
      $dateCarbon = $dateExplode[2] . '-' . $dateExplode[1] . '-' . $dateExplode[0];
      $dateCarbon = $this->dateCarbon($dateCarbon);
      $dateTimeToExcel = Date::dateTimeToExcel($dateCarbon);
    }
    return $dateTimeToExcel;
  }

  public function dateTimeToExcelBetter($date)
  { //Y-m-d
    $date = $this->dateCarbonFormat($date, $this->getFormatDateExport());
    if (!empty($date)) {
      $dateExplode = explode($this->delimiterDateTimeToExcel, $date);
      $dateCarbon = $dateExplode[2] . '-' . $dateExplode[1] . '-' . $dateExplode[0];
      $dateCarbon = $this->dateCarbon($dateCarbon);
      $date = Date::dateTimeToExcel($dateCarbon);
    }
    return $date;
  }

  //función para otener el último día del mes actual
  public function endOfMonth($string = null)
  {
    return ($string) ? Carbon::create($string)->startofMonth()->endOfMonth() : Carbon::now()->startofMonth()->endOfMonth();
  }

  //función para otener el primer día según fecha
  public function startOfMonth($string)
  {
    return Carbon::create($string)->startofMonth();
  }

  //función para obtener la diferencia en días
  public function diffDaysDate($date1, $date2)
  {
    return $date1->diffInDays($date2);
  }

  //función para identificar si una fecha dada es menor a otra fecha
  //ambas fechas tiene que ser fechas Carbon
  public function lessThan($date1, $date2)
  {
    return $date1->lessThan($date2);
  }

  //función para retornar formato date en request export
  public function getFormatDateExport()
  {
    return $this->formatDateExport;
  }

  //función para retornar día final del mes anterior, recibe un parámetro tipo Carbon
  public function lastMonth($fecha)
  {
    return $fecha->firstOfMonth()->subDay();
  }
}
