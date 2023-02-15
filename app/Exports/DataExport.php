<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class DataExport implements FromArray, WithColumnFormatting, ShouldAutoSize
{
  protected $data;
  protected $columnFormats;

  public function __construct(array $data, $columnFormats)
  {
    $this->data = $data;
    $this->columnFormats = $columnFormats;
  }

  public function array(): array
  {
    return $this->data;
  }

  public function columnFormats(): array
  {
    return $this->columnFormats;
  }
}
