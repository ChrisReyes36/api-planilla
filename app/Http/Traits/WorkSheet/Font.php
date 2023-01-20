<?php

namespace App\Http\Traits\WorkSheet;

trait Font
{
  public function fontSetName($range, $name)
  {
    return $this->sheet->getStyle($range)->getFont()->setName($name);
  }
  public function fontSetBold($range, $bold = true)
  {
    return $this->sheet->getStyle($range)->getFont()->setBold($bold);
  }
  public function fontSetSize($range, $size)
  {
    return $this->sheet->getStyle($range)->getFont()->setSize($size);
  }
  public function fontSetRGB($range, $color)
  {
    return $this->sheet->getStyle($range)->getFont()->getColor()->setRGB($color);
  }
}
