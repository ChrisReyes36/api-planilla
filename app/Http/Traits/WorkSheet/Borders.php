<?php

namespace App\Http\Traits\WorkSheet;

use PhpOffice\PhpSpreadsheet\Style\Border;

trait Borders
{
  public function convertTypesBorder()
  {
    return [
      'thin' => Border::BORDER_THIN,
    ];
  }
  public function bordersSetAllBordersStyle($range, $border)
  {
    $type = $this->convertTypesBorder()[$border];
    return $this->sheet->getStyle($range)->getBorders()->getAllBorders()->setBorderStyle($type);
  }
}
