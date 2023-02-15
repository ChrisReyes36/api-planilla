<?php

namespace App\Exports;

//From package of Maatwebsite

use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithStyles;
//Contracts Laravel
use Illuminate\Contracts\View\View;
//Contracts Laravel
use Illuminate\Contracts\Support\Responsable;
//Work to sheet
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
//Format Cell
use App\Http\Controllers\Tool\ToolFormatExcelController;
//Own Traits
use App\Http\Traits\WorkSheet\Font;
use App\Http\Traits\WorkSheet\Alignment;
use App\Http\Traits\WorkSheet\Fill;
use App\Http\Traits\WorkSheet\Borders;

class VacacionExport implements FromView, Responsable, WithColumnWidths, WithStyles
{
  use Exportable, Font, Alignment, Fill, Borders;
  private $collection;
  private $fileName = 'document.xlsx';
  private $sheet;

  public function __construct($collection)
  {
    $this->collection = $collection;
  }

  public function view(): view
  {
    return view('reciboVacacion.excel', [
      'data' => $this->collection
    ]);
  }

  public function columnWidths(): array
  {
    return [
      'A' => 51,
      'B' => 25,
      'C' => 30,
      'D' => 14,
    ];
  }

  public function styles(WorkSheet $sheet)
  {
    $countData = count($this->collection['recibo']);
    $this->sheet = $sheet;
    $this->sheet->getStyle('B14:B20')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('B24:B26')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('B29')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());

    $this->fontSetName('A:D', 'Century Gothic');
    $this->alignmentSetWrapText('A:D');
    $this->alignmentSetHorizontal('A:D', 'center');
    $this->alignmentSetVertical('A:D', 'center');
    $this->fontSetSize('A:D', 12);

    $sheet->mergeCells('A1:D1');
    $this->fontSetBold('A1:D1');

    $sheet->mergeCells('B3:D3');
    $sheet->mergeCells('B4:D4');
    $sheet->mergeCells('B5:D5');
    $sheet->mergeCells('A8:B8');
    $sheet->mergeCells('C8:D8');
    $sheet->mergeCells('A23:B23');

    $body = $countData + 4;
    $this->bordersSetAllBordersStyle("A3:D{$body}", 'thin');
    $body = $body + 6;
    $this->bordersSetAllBordersStyle("A8:D{$body}", 'thin');
    $body = $body + 9;
    $this->bordersSetAllBordersStyle("A14:B{$body}", 'thin');
    $body = $body + 6;
    $this->bordersSetAllBordersStyle("A23:B{$body}", 'thin');
    $body = $body + 3;
    $this->bordersSetAllBordersStyle("A29:B{$body}", 'thin');
  }
}
