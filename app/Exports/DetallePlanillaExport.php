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

class DetallePlanillaExport implements FromView, Responsable, WithColumnWidths, WithStyles
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
    return view('detallePlanilla.excel', [
      'data' => $this->collection
    ]);
  }

  public function columnWidths(): array
  {
    return [
      'A' => 5,
      'B' => 60,
      'C' => 32,
      'D' => 40,
      'E' => 19,
      'F' => 9,
      'G' => 35,
      'H' => 18,
      'I' => 6,
      'J' => 12,
      'K' => 13,
      'L' => 18,
      'M' => 15,
      'N' => 13,
      'O' => 18,
      'P' => 14,
      'Q' => 14,
      'R' => 14,
      'S' => 22,
      'T' => 14,
      'U' => 19,
      'V' => 14,
      'W' => 14,
      'X' => 14,
      'Y' => 14,
      'Z' => 15,
      'AA' => 15,
      'AB' => 16,
      'AC' => 18,
    ];
  }

  public function styles(WorkSheet $sheet)
  {
    $countData = count($this->collection->detalles);
    $this->sheet = $sheet;
    $this->sheet->getStyle('H')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('J')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('K')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('L')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('M')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('N')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('O')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('P')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('Q')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('R')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('S')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('T')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('U')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('V')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('W')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('X')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('Y')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('Z')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('AA')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('AB')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('AC')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());

    $this->fontSetName('A:AC', 'Century Gothic');
    $this->alignmentSetWrapText('A:AC');
    $this->alignmentSetHorizontal('A:AC', 'center');
    $this->alignmentSetVertical('A:AC', 'center');

    $sheet->mergeCells('A1:AC1');
    $this->fontSetBold('A1:AC1');
    $this->fillSetTypeColorRGB('A1:AC1', 'solid', 'fcfcfc');
    $this->fontSetSize('A1:AC1', 10);

    $sheet->mergeCells('A2:AC2');
    $this->fontSetBold('A2:AC2');
    $this->fillSetTypeColorRGB('A2:AC2', 'solid', 'fcfcfc');
    $this->fontSetSize('A2:AC2', 10);

    $sheet->mergeCells('A3:AC3');
    $this->fontSetBold('A3:AC3');
    $this->fillSetTypeColorRGB('A3:AC3', 'solid', 'fcfcfc');
    $this->fontSetSize('A3:AC3', 10);

    $this->fontSetSize('A4:AC4', 11);
    $this->fontSetBold('A4:AC4');
    $this->fillSetTypeColorRGB('A4:AC4', 'solid', 'fcfcfc');
    $this->fontSetRGB('A4:AC4', '000000');

    $body = $countData + 4;
    $this->fillSetTypeColorRGB("A4:AC{$body}", 'solid', 'fcfcfc');
    $this->bordersSetAllBordersStyle("A4:AC{$body}", 'thin');
  }
}
