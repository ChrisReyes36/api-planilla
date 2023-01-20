<?php

namespace App\Http\Traits\WorkSheet;

use PhpOffice\PhpSpreadsheet\Style\Alignment as AlignmentOficial;

trait Alignment
{
  public function convertTypesOrientationHorizontal()
  {
    return [
      'left' => AlignmentOficial::HORIZONTAL_LEFT,
      'center' => AlignmentOficial::HORIZONTAL_CENTER,
    ];
  }
  public function convertTypesOrientationVertical()
  {
    return [
      'center' => AlignmentOficial::VERTICAL_CENTER,
    ];
  }
  public function alignmentSetWrapText($range, $wrapText = true)
  {
    $this->sheet->getStyle($range)->getAlignment()->setWrapText($wrapText);
  }
  public function alignmentSetHorizontal($range, $orientation)
  {
    $alignment = $this->convertTypesOrientationHorizontal()[$orientation];
    $this->sheet->getStyle($range)->getAlignment()->setHorizontal($alignment);
  }
  public function alignmentSetVertical($range, $orientation)
  {
    $alignment = $this->convertTypesOrientationVertical()[$orientation];
    $this->sheet->getStyle($range)->getAlignment()->setVertical($alignment);
  }
}
