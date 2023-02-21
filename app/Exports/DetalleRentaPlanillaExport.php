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

class DetalleRentaPlanillaExport implements FromView, Responsable, WithColumnWidths, WithStyles
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
    return view('detalleRentaPlanilla.excel', [
      'data' => $this->collection
    ]);
  }

  public function columnWidths(): array
  {
    return [
      'A' => 5,
      'B' => 50,
      'C' => 30,
      'D' => 44,
      'E' => 19,
      'F' => 9,
      'G' => 15,
      'H' => 13,
      'I' => 18,
      'J' => 15,
      'K' => 15,
      'L' => 18,
      'M' => 14,
      'N' => 14,
      'O' => 14,
      'P' => 22,
      'Q' => 22,
      'R' => 22,
    ];
  }

  public function styles(WorkSheet $sheet)
  {
    $letra = "Q";
    if ($this->collection->mes == 12) {
      $letra = "R";
    }
    $countData = count($this->collection->detalles);
    $this->sheet = $sheet;
    $this->sheet->getStyle('G')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('H')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('I')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('J')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('K')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('L')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('M')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('N')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('O')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('P')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('Q')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('R')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());

    $this->fontSetName("A:$letra", 'Tahoma');
    $this->alignmentSetWrapText("A:$letra");
    $this->alignmentSetHorizontal("A:$letra", 'center');
    $this->alignmentSetVertical("A:$letra", 'center');

    $sheet->mergeCells("A1:" . $letra . "1");
    // $this->fontSetBold("A1:" . $letra . "1");
    $this->fillSetTypeColorRGB("A1:" . $letra . "1", 'solid', 'fcfcfc');
    $this->fontSetSize("A1:" . $letra . "1", 28);

    $sheet->mergeCells("A2:" . $letra . "2");
    // $this->fontSetBold("A2:" . $letra . "2");
    $this->fillSetTypeColorRGB("A2:" . $letra . "2", 'solid', 'fcfcfc');
    $this->fontSetSize("A2:" . $letra . "2", 28);

    $sheet->mergeCells("A3:" . $letra . "3");
    // $this->fontSetBold("A3:" . $letra . "3");
    $this->fillSetTypeColorRGB("A3:" . $letra . "3", 'solid', 'fcfcfc');
    $this->fontSetSize("A3:" . $letra . "3", 28);

    $this->fontSetSize("A4:" . $letra . "4", 10);
    $this->fontSetBold("A4:" . $letra . "4");
    $this->fillSetTypeColorRGB("A4:" . $letra . "4", 'solid', 'fcfcfc');
    $this->fontSetRGB("A4:" . $letra . "4", '000000');

    $body = $countData + 4;
    $this->fillSetTypeColorRGB("A4:$letra{$body}", 'solid', 'fcfcfc');
    $this->bordersSetAllBordersStyle("A4:$letra{$body}", 'thin');

    $this->fontSetBold("A{$body}:$letra{$body}");
    $sheet->mergeCells("A{$body}:F{$body}");
    $this->alignmentSetHorizontal("B5:B{$body}", 'left');
    $this->alignmentSetHorizontal("C5:C{$body}", 'left');
    $this->alignmentSetHorizontal("D5:D{$body}", 'left');
  }
}
