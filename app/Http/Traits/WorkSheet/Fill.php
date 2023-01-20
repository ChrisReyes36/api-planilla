<?php

namespace App\Http\Traits\WorkSheet;

use PhpOffice\PhpSpreadsheet\Style\Fill as FillOficial;

trait Fill
{
  public function convertTypeFill()
  {
    return [
      'solid' => FillOficial::FILL_SOLID,
    ];
  }
  public function fillSetTypeColorRGB($range, $type, $color)
  {
    $fill = $this->convertTypeFill()[$type];
    $this->sheet->getStyle($range)->getFill()->setFillType($fill)->getStartColor()->setRGB($color);
  }
}
