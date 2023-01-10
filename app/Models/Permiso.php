<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permiso extends Model
{
  use HasFactory;

  protected $table = 'tbl_permisos_usuarios';

  protected $fillable = [
    'id_usuario',
    'id_ruta',
    'estado',
  ];
}
