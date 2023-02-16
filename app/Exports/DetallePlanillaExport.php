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
// Drawing
use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class DetallePlanillaExport implements FromView, Responsable, WithColumnWidths, WithStyles, WithDrawings
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
      'B' => 50,
      'C' => 30,
      'D' => 44,
      'E' => 19,
      'F' => 9,
      'G' => 20,
      'H' => 18,
      'I' => 6,
      'J' => 15,
      'K' => 13,
      'L' => 18,
      'M' => 15,
      'N' => 13,
      'O' => 18,
      'P' => 14,
      'Q' => 14,
      'R' => 14,
      'S' => 22,
      'T' => 22,
      'U' => 14,
      'V' => 19,
      'W' => 14,
      'X' => 14,
      'Y' => 14,
      'Z' => 14,
      'AA' => 15,
      'AB' => 15,
      'AC' => 16,
      'AD' => 15,
      'AE' => 18,
    ];
  }

  public function drawings()
  {
    $countData = count($this->collection->detalles);
    $body = $countData + 10;
    $drawing = new Drawing();
    $drawing->setName('Firmas');
    $drawing->setDescription('Mesa de Trabajo');
    $drawing->setPath(public_path('/img/firmas.png'));
    $drawing->setHeight(253);
    $drawing->setWidth(2419);
    $drawing->setCoordinates("F{$body}");
    return $drawing;
  }

  public function styles(WorkSheet $sheet)
  {
    $letra = "AD";
    if ($this->collection->mes == 12) {
      $letra = "AE";
    }
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
    $this->sheet->getStyle('AD')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
    $this->sheet->getStyle('AE')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());

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
    $sheet->mergeCells("A{$body}:G{$body}");
    $this->alignmentSetHorizontal("B5:B{$body}", 'left');
    $this->alignmentSetHorizontal("C5:C{$body}", 'left');
    $this->alignmentSetHorizontal("D5:D{$body}", 'left');
  }
}
