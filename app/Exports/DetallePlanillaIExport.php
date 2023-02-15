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

class DetallePlanillaIExport implements FromView, Responsable, WithColumnWidths, WithStyles, WithDrawings
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
    return view('detallePlanillaI.excel', [
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
      'O' => 25,
      'P' => 15,
      'Q' => 15,
      'R' => 15,
      'S' => 15,
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

    $this->fontSetName('A:S', 'Tahoma');
    $this->alignmentSetWrapText('A:S');
    $this->alignmentSetHorizontal('A:S', 'center');
    $this->alignmentSetVertical('A:S', 'center');

    $sheet->mergeCells('A1:S1');
    $this->fontSetBold('A1:S1');
    $this->fillSetTypeColorRGB('A1:S1', 'solid', 'fcfcfc');
    $this->fontSetSize('A1:S1', 48);

    $sheet->mergeCells('A2:S2');
    $this->fontSetBold('A2:S2');
    $this->fillSetTypeColorRGB('A2:S2', 'solid', 'fcfcfc');
    $this->fontSetSize('A2:S2', 48);

    $sheet->mergeCells('A3:S3');
    $this->fontSetBold('A3:S3');
    $this->fillSetTypeColorRGB('A3:S3', 'solid', 'fcfcfc');
    $this->fontSetSize('A3:S3', 48);

    $this->fontSetSize('A4:S4', 10);
    $this->fontSetBold('A4:S4');
    $this->fillSetTypeColorRGB('A4:S4', 'solid', 'fcfcfc');
    $this->fontSetRGB('A4:S4', '000000');

    $body = $countData + 4;
    $this->fillSetTypeColorRGB("A4:S{$body}", 'solid', 'fcfcfc');
    $this->bordersSetAllBordersStyle("A4:S{$body}", 'thin');

    $sheet->mergeCells("A{$body}:J{$body}");
    $this->alignmentSetHorizontal("B5:B{$body}", 'left');
    $this->alignmentSetHorizontal("C5:C{$body}", 'left');
    $this->alignmentSetHorizontal("D5:D{$body}", 'left');
  }
}
