<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vacacion extends Model
{
  use HasFactory;

  protected $table = 'tbl_vacaciones';

  protected $fillable = [
    'id_empleado',
    'f_inicio',
    'f_fin',
    'dias',
    'estado',
    'tipo',
  ];
}
