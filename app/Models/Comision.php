<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comision extends Model
{
  use HasFactory;

  protected $table = 'tbl_comisiones';

  protected $fillable = [
    'num_cliente',
    'fecha_creacion',
    'comision',
    'observaciones',
  ];
}
