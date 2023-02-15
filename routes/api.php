<?php

use App\Http\Controllers\Api\AgenciaController;
use App\Http\Controllers\Api\AsignacionController;
use App\Http\Controllers\Api\BancoController;
use App\Http\Controllers\Api\ComisionController;
use App\Http\Controllers\Api\ConceptoController;
use App\Http\Controllers\Api\CuentaController;
use App\Http\Controllers\Api\DepartamentoController;
use App\Http\Controllers\Api\EmpleadoController;
use App\Http\Controllers\Api\OperacionController;
use App\Http\Controllers\Api\PermisoController;
use App\Http\Controllers\Api\PlanillaController;
use App\Http\Controllers\Api\PrestamoController;
use App\Http\Controllers\Api\PuestoController;
use App\Http\Controllers\Api\ReporteController;
use App\Http\Controllers\Api\RutaController;
use App\Http\Controllers\Api\UsuarioController;
use App\Http\Controllers\Api\VacacionController;
use App\Http\Controllers\Auth\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('login', [AuthController::class, 'login']);
Route::put('update/password/{codigo}', [AuthController::class, 'updatePassword']);
Route::get('obtener/{dui}/{fecha}', [AuthController::class, 'getUserByInformation']);

Route::group(['middleware' => 'auth:sanctum'], function () {
  Route::post('logout', [AuthController::class, 'logout']);
  // Rutas Agencias
  Route::group(['prefix' => 'agencias'], function () {
    Route::get('/', [AgenciaController::class, 'index']);
    Route::post('/', [AgenciaController::class, 'store']);
    Route::get('/{id}', [AgenciaController::class, 'show']);
    Route::put('/{id}', [AgenciaController::class, 'update']);
  });
  // Rutas Departametos
  Route::group(['prefix' => 'departamentos'], function () {
    Route::get('/', [DepartamentoController::class, 'index']);
    Route::post('/', [DepartamentoController::class, 'store']);
    Route::get('/{id}', [DepartamentoController::class, 'show']);
    Route::put('/{id}', [DepartamentoController::class, 'update']);
  });
  // Rutas Departametos
  Route::group(['prefix' => 'puestos'], function () {
    Route::get('/', [PuestoController::class, 'index']);
    Route::post('/', [PuestoController::class, 'store']);
    Route::get('/{id}', [PuestoController::class, 'show']);
    Route::put('/{id}', [PuestoController::class, 'update']);
  });
  // Rutas Rutas
  Route::group(['prefix' => 'rutas'], function () {
    Route::get('/', [RutaController::class, 'index']);
    Route::post('/', [RutaController::class, 'store']);
    Route::get('/{id}', [RutaController::class, 'show']);
    Route::put('/{id}', [RutaController::class, 'update']);
  });
  // Rutas Permisos
  Route::group(['prefix' => 'permisos'], function () {
    Route::get('/', [PermisoController::class, 'index']);
    Route::post('/', [PermisoController::class, 'store']);
    Route::get('/{id}', [PermisoController::class, 'show']);
    Route::get('/usuario/{id_usuario}', [PermisoController::class, 'showByUser']);
    Route::put('/{id}', [PermisoController::class, 'update']);
    Route::delete('/{id}', [PermisoController::class, 'destroy']);
  });
  // Rutas Usuarios
  Route::group(['prefix' => 'usuarios'], function () {
    Route::get('/', [UsuarioController::class, 'index']);
    Route::post('/', [UsuarioController::class, 'store']);
    Route::get('/{id}', [UsuarioController::class, 'show']);
    Route::put('/{id}', [UsuarioController::class, 'update']);
    Route::delete('/{id}', [UsuarioController::class, 'destroy']);
  });
  // Rutas Bancos
  Route::group(['prefix' => 'bancos'], function () {
    Route::get('/', [BancoController::class, 'index']);
    Route::post('/', [BancoController::class, 'store']);
    Route::get('/{id}', [BancoController::class, 'show']);
    Route::put('/{id}', [BancoController::class, 'update']);
  });
  // Rutas Cuentas
  Route::group(['prefix' => 'cuentas'], function () {
    Route::get('/', [CuentaController::class, 'index']);
    Route::post('/', [CuentaController::class, 'store']);
    Route::get('/{id}', [CuentaController::class, 'show']);
    Route::get('/activas/registradas', [CuentaController::class, 'showByCuentas']);
    Route::put('/{id}', [CuentaController::class, 'update']);
    Route::delete('/{id}', [CuentaController::class, 'destroy']);
  });
  // Rutas Empleados
  Route::group(['prefix' => 'empleados'], function () {
    Route::get('/', [EmpleadoController::class, 'index']);
    Route::get('/estado/activos', [EmpleadoController::class, 'showActivated']);
    Route::delete('/{id}', [EmpleadoController::class, 'destroy']);
    Route::post('/', [EmpleadoController::class, 'exportXls']);
  });
  // Rutas Conceptos
  Route::group(['prefix' => 'conceptos'], function () {
    Route::get('/', [ConceptoController::class, 'index']);
    Route::post('/', [ConceptoController::class, 'store']);
    Route::get('/{id}', [ConceptoController::class, 'show']);
    Route::put('/{id}', [ConceptoController::class, 'update']);
  });
  // Rutas Operaciones
  Route::group(['prefix' => 'operaciones'], function () {
    Route::get('/', [OperacionController::class, 'index']);
    Route::post('/', [OperacionController::class, 'store']);
    Route::get('/{id}', [OperacionController::class, 'show']);
    Route::put('/{id}', [OperacionController::class, 'update']);
  });
  // Rutas Asignaciones
  Route::group(['prefix' => 'asignaciones'], function () {
    Route::get('/', [AsignacionController::class, 'index']);
    Route::post('/', [AsignacionController::class, 'store']);
    Route::get('/{id}', [AsignacionController::class, 'show']);
    Route::put('/{id}', [AsignacionController::class, 'update']);
    Route::delete('/{id}', [AsignacionController::class, 'destroy']);
  });
  // Rutas Planillas
  Route::group(['prefix' => 'planillas'], function () {
    Route::get('/', [PlanillaController::class, 'index']);
    Route::post('/', [PlanillaController::class, 'store']);
    Route::post('/exportar/{id}', [PlanillaController::class, 'exportExcel']);
    Route::get('/exportar/csv/planilla/{id}', [PlanillaController::class, 'exportCsv']);
    Route::get('/tipos', [PlanillaController::class, 'getTypes']);
    Route::get('/detalle/{id}', [PlanillaController::class, 'getDetailPlanilla']);
    Route::put('/recalcular/detalle/{id}', [PlanillaController::class, 'update']);
    Route::put('/actualizar/pago/{id}', [PlanillaController::class, 'updatePayment']);
    Route::put('/estado/aprobada/planilla/registro/{id}', [PlanillaController::class, 'updateState']);
    Route::delete('/{id}/{idPlanilla}', [PlanillaController::class, 'destroy']);
  });
  // Rutas Comisiones
  Route::group(['prefix' => 'comisiones'], function () {
    Route::get('/', [ComisionController::class, 'index']);
    Route::post('/', [ComisionController::class, 'store']);
    Route::get('/{id}', [ComisionController::class, 'show']);
    Route::put('/{id}', [ComisionController::class, 'update']);
  });
  // Rutas Préstamos
  Route::group(['prefix' => 'prestamos'], function () {
    Route::get('/', [PrestamoController::class, 'index']);
    Route::post('/', [PrestamoController::class, 'store']);
    Route::get('/{id}', [PrestamoController::class, 'show']);
    Route::put('/{id}', [PrestamoController::class, 'update']);
    Route::delete('/{id}', [PrestamoController::class, 'destroy']);
    Route::post('/exportar', [PrestamoController::class, 'exportXls']);
  });
  // Rutas Reportes
  Route::group(['prefix' => 'reportes'], function () {
    Route::get('/constancia/ingreso/{idEmpleado}', [ReporteController::class, 'contanciaIngreso']);
    Route::get('/constancia/empleo/{idEmpleado}', [ReporteController::class, 'contanciaEmpleo']);
    Route::get('/cartas/renta/{anio}', [ReporteController::class, 'cartasRenta']);
    Route::get('/recibo/vacacion/{idEmpleado}', [ReporteController::class, 'reciboVacacion']);
    Route::get('/recibo/finiquito/{anio}', [ReporteController::class, 'reciboFiniquito']);
    Route::get('/boleta/quincenal/{idPlanilla}/{idEmpleado?}', [ReporteController::class, 'boletaQuincenal']);
    Route::get('/boletas/aguinaldo/{anio}/{idEmpleado?}', [ReporteController::class, 'boletasAguinaldo']);
  });
  // Rutas Vacaciones
  Route::group(['prefix' => 'vacaciones'], function () {
    Route::get('/', [VacacionController::class, 'index']);
    Route::post('/', [VacacionController::class, 'store']);
    Route::get('/{id}', [VacacionController::class, 'show']);
    Route::put('/{id}', [VacacionController::class, 'update']);
    Route::delete('/{id}', [VacacionController::class, 'destroy']);
    Route::post('/exportar', [VacacionController::class, 'exportXls']);
  });
});
