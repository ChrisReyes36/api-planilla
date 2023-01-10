<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
  use HasFactory;

  protected $table = 'tbl_empleados';

  protected $fillable = [
    'num_cliente',
    'nombres',
    'apellidos',
    'correo_institucional',
    'correo_personal',
    'telfijo',
    'celular',
    'direccion',
    'dui',
    'nit',
    'sexo',
    'fecha_ingreso',
    'fecha_nacimiento',
    'estado',
    'sueldo',
    'id_agencia',
    'id_puesto',
    'id_cuenta',
  ];
}
