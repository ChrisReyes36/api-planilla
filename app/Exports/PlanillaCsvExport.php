<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class PlanillaCsvExport implements FromArray, WithColumnWidths
{
  protected $data;

  public function __construct(array $data)
  {
    $this->data = $data;
  }

  public function array(): array
  {
    return $this->data;
  }

  public function columnWidths(): array
  {
    return [
      'A' => 1.72,
      'B' => 4.73,
      'C' => 5.74,
      'D' => 20.73,
      'E' => 5.74,
      'F' => 4.72,
      'G' => 2.72,
      'H' => 2.72,
      'I' => 13.72,
      'J' => 5.72,
      'K' => 30.72,
      'L' => 1.72,
      'M' => 30.72,
      'N' => 9.72,
    ];
  }
}
