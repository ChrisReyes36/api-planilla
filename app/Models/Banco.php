<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banco extends Model
{
  use HasFactory;

  protected $table = 'tbl_bancos';

  protected $fillable = [
    'nombre',
    'telefono',
    'direccion',
  ];
}
