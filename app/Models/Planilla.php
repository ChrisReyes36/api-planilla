<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planilla extends Model
{
  use HasFactory;

  protected $table = 'tbl_planillas';

  protected $fillable = [
    'codigo',
    'f_inicio_planilla',
    'f_fin_planilla',
    'total_planilla',
    'id_tipo_planilla',
    'estado',
  ];
}
