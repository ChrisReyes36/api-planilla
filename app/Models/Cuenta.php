<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cuenta extends Model
{
  use HasFactory;

  protected $table = 'tbl_cuentas';

  protected $fillable = [
    'num_cuenta',
    'id_banco',
    'estado',
  ];
}
