<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Empleado;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmpleadoController extends Controller
{
  public function index()
  {
    // Obtenemos datos.
    $empleados = Empleado::select(
      'a.id',
      'a.num_cliente',
      DB::raw("CONCAT_WS(' ', a.nombres, a.apellidos) razon_social"),
      'a.correo_institucional',
      'a.correo_personal',
      'a.telfijo',
      'a.celular',
      'a.direccion',
      'a.dui',
      'a.nit',
      'a.correo_institucional',
      DB::raw("CASE WHEN a.sexo = 'F' THEN 'FEMENINO' ELSE 'MASCULINO' END sexo"),
      'a.fecha_ingreso',
      'a.fecha_nacimiento',
      'a.estado',
      'a.sueldo',
      'b.nombre as agencia',
      'c.nombre as puesto',
      'd.nombre as departamento',
      'e.num_cuenta',
    )
      ->from('tbl_empleados as a')
      ->join('tbl_agencias as b', function ($query) {
        $query->on('a.id_agencia', '=', 'b.id');
      })
      ->leftjoin('tbl_puestos as c', function ($query) {
        $query->on('a.id_puesto', '=', 'c.id');
      })
      ->leftjoin('tbl_departamentos as d', function ($query) {
        $query->on('c.id_departamento', '=', 'd.id');
      })
      ->leftjoin('tbl_cuentas as e', function ($query) {
        $query->on('a.id_cuenta', '=', 'e.id');
      })
      ->orderBy('a.num_cliente', 'asc')
      ->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'empleados' => $empleados,
    ], 200);
  }

  public function showActivated()
  {
    // Obtenemos datos.
    $empleados = Empleado::select(
      'a.id',
      DB::raw("CONCAT_WS(' ', a.nombres, a.apellidos) razon_social"),
      'a.num_cliente',
    )
      ->from('tbl_empleados as a')
      ->where('a.estado', 'A')
      ->orderBy('a.num_cliente', 'asc')
      ->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'empleados' => $empleados,
    ], 200);
  }

  public function store(Request $request)
  {
    //
  }

  public function show($id)
  {
    //
  }

  public function update(Request $request, $id)
  {
    //
  }

  public function destroy($id)
  {
    try {
      // Obtenemos registro.
      $empleado = Empleado::find($id);
      // Verificando si existe.
      if (!$empleado) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $empleado->estado == 'A' ? 'I' : 'A';
      $mensaje = $empleado->estado == 'A' ?
        '¡Empleado desactivado exitósamente!' :
        '¡Empleado activado exitósamente!';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $empleado->update($data);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => $mensaje,
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }
}
