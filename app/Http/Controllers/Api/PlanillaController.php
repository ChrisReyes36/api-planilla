<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Planilla;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PlanillaController extends Controller
{
  private function validations($planillaId = '')
  {
    // Validaciones.
    $id = $planillaId ? ', ' . $planillaId : '';
    return [
      'codigo' => ['unique:tbl_planillas,codigo' . $id],
      'id_tipo_planilla' => ['required', 'int'],
    ];
  }

  private function dateEnd()
  {
    $mesActual = date('m', strtotime(Carbon::now()));
    $anioActual = date('Y', strtotime(Carbon::now()));
    $validar31 = checkdate($mesActual, 31, $anioActual);
    $validar29 = checkdate($mesActual, 29, $anioActual);
    if ($validar31 && (int)$mesActual != 2) {
      $f_fin = "$anioActual-$mesActual-31";
    } elseif ((int)$mesActual == 2) {
      if ($validar29) {
        $f_fin = "$anioActual-$mesActual-29";
      } else {
        $f_fin = "$anioActual-$mesActual-28";
      }
    } else {
      $f_fin = "$anioActual-$mesActual-30";
    }
    return $f_fin;
  }

  private function datesTypesCode($tPlanilla = 0)
  {
    $diaActual = date('d', strtotime(Carbon::now()));
    $mesActual = date('m', strtotime(Carbon::now()));
    $anioActual = date('Y', strtotime(Carbon::now()));
    $meses = ["ENE", "FE", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC"];
    $tipo = DB::select('SELECT nombre FROM tbl_tipo_planillas a WHERE a.id = ?', [(int)$tPlanilla]);
    // Fechas.
    if ((int)$diaActual > 15 && $tipo[0]->nombre == "PQ") {
      $quincena = "Q2";
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-16")->format('Y-m-d');
      $f_fin_planilla = $this->dateEnd();
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre . '-' . $quincena;
    } elseif ((int)$diaActual <= 15 && $tipo[0]->nombre == "PQ") {
      $quincena = "Q1";
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-01")->format('Y-m-d');
      $f_fin_planilla = "$anioActual-$mesActual-15";
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre . '-' . $quincena;
    } elseif ($tipo[0]->nombre == "PM") {
      $f_inicio_planilla = Carbon::parse("$anioActual-$mesActual-01")->format('Y-m-d');
      $f_fin_planilla = $this->dateEnd();
      $codigo = $anioActual . '-' . $meses[(int)$mesActual - 1] . '-' . $tipo[0]->nombre;
    }
    // Retorno.
    return [
      $f_inicio_planilla,
      $f_fin_planilla,
      $codigo,
    ];
  }

  public function index()
  {
    // Obtenemos datos.
    $planillas = Planilla::select(
      'a.id',
      'a.codigo',
      DB::raw('(SELECT CONCAT_WS("-", b.nombre, b.detalle) FROM tbl_tipo_planillas b WHERE b.id = a.id_tipo_planilla) tipo_planilla'),
      'a.f_inicio_planilla',
      'a.f_fin_planilla',
      'a.total_planilla',
      'a.estado'
    )
      ->from('tbl_planillas as a')
      ->get();
    // Retornado respuesta.
    return response()->json([
      'success' => true,
      'planillas' => $planillas,
    ], 200);
  }

  public function store(Request $request)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $values = $this->datesTypesCode($data['id_tipo_planilla']);
      $data["f_inicio_planilla"] = $values[0];
      $data["f_fin_planilla"] = $values[1];
      $data["codigo"] = $values[2];
      // Validamos.
      $validator = Validator::make($data, $this->validations());
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      // Creando un registro.
      $planilla = Planilla::create($data);
      $planilla->save();
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Planilla creada exitósamente!',
      ], 201);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
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
    //
  }
}
