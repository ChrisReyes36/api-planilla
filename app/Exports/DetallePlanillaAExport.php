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

class DetallePlanillaAExport implements FromView, Responsable, WithColumnWidths, WithStyles, WithDrawings
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
    return view('detallePlanillaA.excel', [
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
      'E' => 9,
      'F' => 20,
      'G' => 20,
      'H' => 15,
      'I' => 20,
      'J' => 35,
      'K' => 30,
      'L' => 15,
      'M' => 20,
      'N' => 20,
      'O' => 18,
      'P' => 17,
      'Q' => 15,
      'R' => 15,
      'S' => 15,
      'T' => 15,
      // 'U' => 15,
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
    $drawing->setHeight(189);
    $drawing->setWidth(1928);
    $drawing->setCoordinates("F{$body}");
    return $drawing;
  }

  public function styles(WorkSheet $sheet)
  {
    $countData = count($this->collection->detalles);
    $this->sheet = $sheet;
    // $this->sheet->getStyle('H')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());
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
    // $this->sheet->getStyle('U')->getNumberFormat()->setFormatCode(ToolFormatExcelController::formatAccounting());

    $this->fontSetName('A:T', 'Tahoma');
    $this->alignmentSetWrapText('A:T');
    $this->alignmentSetHorizontal('A:T', 'center');
    $this->alignmentSetVertical('A:T', 'center');

    $sheet->mergeCells('A1:T1');
    // $this->fontSetBold('A1:T1');
    $this->fillSetTypeColorRGB('A1:T1', 'solid', 'fcfcfc');
    $this->fontSetSize('A1:T1', 28);

    $sheet->mergeCells('A2:T2');
    // $this->fontSetBold('A2:T2');
    $this->fillSetTypeColorRGB('A2:T2', 'solid', 'fcfcfc');
    $this->fontSetSize('A2:T2', 28);

    $sheet->mergeCells('A3:T3');
    // $this->fontSetBold('A3:T3');
    $this->fillSetTypeColorRGB('A3:T3', 'solid', 'fcfcfc');
    $this->fontSetSize('A3:T3', 28);

    $this->fontSetSize('A4:T4', 10);
    $this->fontSetBold('A4:T4');
    $this->fillSetTypeColorRGB('A4:T4', 'solid', 'fcfcfc');
    $this->fontSetRGB('A4:T4', '000000');

    $body = $countData + 4;
    $this->fillSetTypeColorRGB("A4:T{$body}", 'solid', 'fcfcfc');
    $this->bordersSetAllBordersStyle("A4:T{$body}", 'thin');

    $this->fontSetBold("A{$body}:T{$body}");
    $sheet->mergeCells("A{$body}:J{$body}");
    $this->alignmentSetHorizontal("B5:B{$body}", 'left');
    $this->alignmentSetHorizontal("C5:C{$body}", 'left');
    $this->alignmentSetHorizontal("D5:D{$body}", 'left');
  }
}
