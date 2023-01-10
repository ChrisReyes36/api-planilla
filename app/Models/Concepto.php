<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Concepto extends Model
{
  use HasFactory;

  protected $table = 'tbl_conceptos';

  protected $fillable = [
    'nombre',
    'detalle',
    'tipo',
  ];
}
