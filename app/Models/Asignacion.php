<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asignacion extends Model
{
  use HasFactory;

  protected $table = 'tbl_asignaciones';

  protected $fillable = [
    'id_empleado',
    'id_concepto',
    'id_tipo_asignacion',
    'monto',
    'estado',
  ];
}
