<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Tool\Prestamo\ToolPrestamoController;
use App\Http\Controllers\Tool\ToolExcelController;
use App\Models\Prestamo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PrestamoController extends Controller
{
  private function validations($prestamoId = '')
  {
    // Validaciones.
    $id = $prestamoId ? ', ' . $prestamoId : '';
    return [
      'num_cliente' => ['required'],
      'num_prestamo' => ['required', 'unique:tbl_prestamos,num_prestamo' . $id],
      'saldo_prestamo' => ['required'],
      'cuota_mensual' => ['required'],
      'cuota_quincena' => ['required'],
      'valor_descuento' => ['required'],
      'tipo_prestamo' => ['required', 'string'],
    ];
  }

  private function createStruct()
  {
    return (object) [
      'id' => null,
      'num_cliente' => null,
      'razon_social' => null,
      'agencia' => null,
      'departamento' => null,
      'puesto' => null,
      'prestamos' => [],
    ];
  }

  private function getEmpleados()
  {
    $sql = "SELECT b.id, a.num_cliente, CONCAT_WS(' ', b.nombres, b.apellidos) razon_social,
    c.nombre agencia, d.nombre puesto, e.nombre departamento
    FROM tbl_prestamos a
    INNER JOIN tbl_empleados b ON a.num_cliente = b.num_cliente
    INNER JOIN tbl_agencias c ON b.id_agencia = c.id
    LEFT JOIN tbl_puestos d ON b.id_puesto = d.id
    LEFT JOIN tbl_departamentos e ON d.id_departamento = e.id
    GROUP BY b.id, a.num_cliente, b.nombres, b.apellidos, c.nombre, d.nombre, e.nombre
    ORDER BY b.nombres ASC;";

    return DB::select($sql);
  }

  private function getPrestamosByEmpleado($numCliente)
  {
    $sql = "SELECT a.id, a.num_prestamo, a.saldo_prestamo, a.cuota_mensual, a.cuota_quincena,
    a.valor_descuento, a.tipo_prestamo, a.estado, DATE_FORMAT(a.fecha_cancelado, '%d/%m/%Y') fecha_cancelado
    FROM tbl_prestamos a
    WHERE a.num_cliente = ?
    ORDER BY a.tipo_prestamo DESC, a.estado ASC;";

    return DB::select($sql, [$numCliente]);
  }

  private function getPrestamos()
  {
    $sql = "SELECT a.num_cliente, CONCAT_WS(' ', b.nombres, b.apellidos) razon_social,
    a.num_prestamo, a.saldo_prestamo, a.cuota_mensual, a.cuota_quincena, a.valor_descuento,
    CASE WHEN a.tipo_prestamo = 'I' THEN 'Interno' ELSE 'Externo' END tipo_prestamo,
    CASE WHEN a.estado = 'A' THEN 'ACTIVO' ELSE 'INACTIVO' END estado,
    DATE_FORMAT(a.fecha_cancelado, '%d/%m/%Y') fecha_cancelado
    FROM tbl_prestamos a
    INNER JOIN tbl_empleados b ON a.num_cliente = b.num_cliente
    ORDER BY b.nombres ASC;";

    return DB::select($sql);
  }

  public function index()
  {
    $prestamos = [];
    // Obtenemos datos.
    $data = $this->getEmpleados();
    foreach ($data as $key => $value) {
      $prestamo = $this->createStruct();
      $prestamo->id = $value->id;
      $prestamo->num_cliente = $value->num_cliente;
      $prestamo->razon_social = $value->razon_social;
      $prestamo->agencia = $value->agencia;
      $prestamo->departamento = $value->departamento;
      $prestamo->puesto = $value->puesto;
      $prestamo->prestamos = $this->getPrestamosByEmpleado($value->num_cliente);
      array_push($prestamos, $prestamo);
    }
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'prestamos' => $prestamos,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Creando un registro.
      $prestamo = Prestamo::create($data);
      $prestamo->save();
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA INGRESADO UN PRÉSTAMO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Préstamo creado exitósamente!',
      ], 201);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function show(Request $request, $id)
  {
    // Obtenemos registro.
    $prestamo = Prestamo::find($id);
    // Verificamos si existe el registro.
    if (!$prestamo) {
      return response()->json([
        'success' => true,
        'message' => '¡Registro no encontrado!',
      ], 404);
    }
    // Bitácora.
    DB::select(
      'CALL Sp_Insertar_Biacora(?, "HA OBTENIDO INFORMACIÓN DE UN PRÉSTAMO PARA ACTUALIZAR EN SIPLA")',
      [$request->user()->id]
    );
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'prestamo' => $prestamo,
    ], 200);
  }

  public function update(Request $request, $id)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      // Obtenemos registro.
      $prestamo = Prestamo::find($id);
      // Verificando si existe.
      if (!$prestamo) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Validamos.
      $validator = Validator::make($data, $this->validations($id));
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Actualizamos registro.
      $prestamo->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, "HA ACTUALIZADO UN PRÉSTAMO EN SIPLA")', [$request->user()->id]);
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Préstamo actualizado exitósamente!',
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function destroy(Request $request, $id)
  {
    try {
      // Obtenemos registro.
      $prestamo = Prestamo::find($id);
      // Verificando si existe.
      if (!$prestamo) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Asignamos estado
      $estado = $prestamo->estado == 'A' ? 'I' : 'A';
      $mensaje = $prestamo->estado == 'A' ?
        '¡Préstamo desactivado exitósamente!' :
        '¡Préstamo activado exitósamente!';
      $bitacora = $prestamo->estado == 'A' ?
        'HA DESACTIVADO UN PRÉSTAMO EN SIPLA' :
        'HA ACTIVADO UN PRÉSTAMO EN SIPLA';
      $data['estado'] = $estado;
      // Actualizamos registro.
      $prestamo->update($data);
      // Bitácora.
      DB::select('CALL Sp_Insertar_Biacora(?, ?)', [$request->user()->id, $bitacora]);
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

  public function exportXls(Request $request)
  {
    $prestamos = $this->getPrestamos();
    $excel = new ToolExcelController();
    $tool = new ToolPrestamoController();
    $data = [];
    $data = $tool->fillData($data, $prestamos);
    // Bitácora.
    DB::select('CALL Sp_Insertar_Biacora(?, "HA GENERADO REPORTE PRÉSTAMOS EN SIPLA")', [$request->user()->id]);
    return $excel->createExcel($data, $tool->columnExcelFormats());
  }
}
