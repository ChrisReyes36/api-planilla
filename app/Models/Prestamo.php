<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prestamo extends Model
{
  use HasFactory;

  protected $table = 'tbl_prestamos';

  protected $fillable = [
    'num_cliente',
    'num_prestamo',
    'saldo_prestamo',
    'cuota_mensual',
    'cuota_quincena',
    'valor_descuento',
    'tipo_prestamo',
    'fecha_cancelado',
    'estado',
  ];
}
