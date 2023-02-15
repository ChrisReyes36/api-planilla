<?php

namespace App\Http\Controllers\Tool;

use App\Exports\DataExport;
use App\Exports\PlanillaCsvExport;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class ToolExcelController extends Controller
{
  //función para exportar data a excel según tipo de extensión.
  public function createExcel($data, $columnFormats = [])
  {
    $export = new DataExport($data, $columnFormats);
    return Excel::download($export, 'document.xlsx', \Maatwebsite\Excel\Excel::XLSX);
  }

  //función para exportar data a excel según tipo de extensión.
  public function createCsv($data)
  {
    $export = new PlanillaCsvExport($data);
    return Excel::download($export, 'document.xlsx', \Maatwebsite\Excel\Excel::XLSX);
  }
}
