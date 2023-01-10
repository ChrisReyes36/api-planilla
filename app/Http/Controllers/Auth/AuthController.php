<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
  private function validations()
  {
    // Validaciones.
    return [
      'codigo' => ['required'],
      'contrasenia' => ['required'],
    ];
  }

  public function login(Request $request)
  {
    // Obtenemos datos.
    $data = $request->all();
    $hoy = Carbon::now();
    // Validamos.
    $validator = Validator::make($data, $this->validations());
    if ($validator->fails()) {
      return response()->json([
        'success' => false,
        'errors' => $validator->errors(),
      ], 400);
    }
    // Buscamos usuario por código y contraseña.
    $user = User::select('a.*')
      ->from('tbl_usuarios as a')
      ->join('tbl_empleados as b', function ($query) {
        $query->on('a.id_empleado', '=', 'b.id');
      })
      ->where([
        ['a.codigo', $data['codigo']],
        ['b.estado', 'A']
      ])->first();
    if (!$user || !Hash::check($data['contrasenia'], $user->contrasenia)) {
      return response()->json([
        'success' => false,
        'message' => '¡Correo o contraseña incorrectos!',
      ], 404);
    } elseif ($hoy >= $user->vencimiento_contrasenia) {
      return response()->json([
        'success' => false,
        'message' => '¡La contraseña se ha vencido!',
      ], 403);
    }
    // Creando token.
    $token = $user->createToken('auth_token');
    $token->accessToken->expires_at = Carbon::now()->addHours(3);
    $token->accessToken->save();
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'message' => '¡Usuario autenticado exitósamente!',
      'token' => $token->plainTextToken,
      'token_type' => 'Bearer',
      'expires_at' => Carbon::parse($token->accessToken->expires_at)->toDateTimeString(),
      'usuario' => $user->id,
    ], 200);
  }

  public function logout(Request $request)
  {
    // Obtenemos token.
    $request->user()->currentAccessToken()->delete();
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'message' => '¡Sesión cerrada exitósamente!',
    ], 200);
  }

  public function updatePassword(Request $request, $codigo)
  {
    try {
      // Obtenemos datos.
      $data = $request->all();
      $hoy = Carbon::now();
      // Obtenemos registro.
      $usuario = User::where('codigo', $codigo);
      // Verificando si existe.
      if (!$usuario) {
        return response()->json([
          'success' => false,
          'message' => '¡Registro no encontrado!',
        ], 404);
      }
      // Validamos.
      $validator = Validator::make($data, [
        'contrasenia' => ['required', 'regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/'],
        'contrasenia_confirmation' => ['required', 'same:contrasenia']
      ]);
      if ($validator->fails()) {
        return response()->json([
          'success' => false,
          'errors' => $validator->errors()
        ], 400);
      }
      $data['contrasenia'] = bcrypt($data['contrasenia']);
      // Actualizamos registro.
      DB::update(
        'update tbl_usuarios set contrasenia = ?, vencimiento_contrasenia = ? where codigo = ?',
        [
          (string)$data['contrasenia'],
          (string)$hoy->addMonth(),
          (string)$codigo,
        ]
      );
      // Retornando respuesta.
      return response()->json([
        'success' => true,
        'message' => '¡Contraseña actualizada exitósamente!',
      ], 200);
    } catch (\Exception $e) {
      // Retornando respuesta del error.
      return response()->json([
        'success' => false,
        'message' => $e->getMessage(),
      ], 500);
    }
  }

  public function getUserByInformation($dui, $fecha)
  {
    // Validamos
    if (!$dui || !$fecha) {
      return response()->json([
        'success' => false,
        'message' => '¡Debe ingresar el DUI y Fecha de nacimiento!',
      ], 404);
    }
    // Buscamos usuario por DUI y Fecha de nacimiento.
    $usuario = User::select('a.*')
      ->from('tbl_usuarios as a')
      ->join('tbl_empleados as b', function ($query) {
        $query->on('a.id_empleado', '=', 'b.id');
      })
      ->where([
        ['b.dui', $dui],
        ['b.fecha_nacimiento', $fecha],
        ['b.estado', 'A']
      ])->first();
    // Verificamos si existe el usuario.
    if (!$usuario) {
      return response()->json([
        'success' => false,
        'message' => '¡Datos del usuario incorrectos!',
      ], 404);
    }
    // Retornando respuesta.
    return response()->json([
      'success' => true,
      'usuario' => $usuario,
    ], 200);
  }
}
