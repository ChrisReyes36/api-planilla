<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Operacion extends Model
{
  use HasFactory;

  protected $table = 'tbl_operaciones';

  protected $fillable = [
    'descripcion',
    'desde',
    'hasta',
    'porcentaje_min',
    'porcentaje_max',
    'sobre_exceso',
    'cuota',
    'id_concepto',
  ];
}
