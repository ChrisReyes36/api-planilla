<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Cartas de Renta</title>
  <link rel="stylesheet" href="{{ asset('css/stylesCons.css') }}">
</head>

<body>
  @foreach ($data['detalle'] as $key)
  <div class="contenedor-imagenes">
    <img class="l-1" src="{{ asset('img/1.png') }}" alt="Img">
    <img class="l-2" src="{{ asset('img/2.png') }}" alt="Img">
  </div>
  <div></div>
  <div class="contenedor-texto">
    <h3>NIT: 0614-220671-002-1</h3>
    <p class="lineado" style="font-size: 15.5px !important;">
      El infrascrito pagador hace constar que: <b style="font-size: 15.5px !important;">{{ $key->nombrecompleto }}</b>
      con NIT: <br /> <b>{{ $key->nit }}.</b>
      <br />
      Devengo durante el periodo del <b style="font-size: 15.5px !important;">{{ $key->fechaperiodo }}</b>, los
      siguientes
      conceptos:
      <br />
      <b style="font-size: 15.5px !important;">
        Servicios de Carácter permanente con subordinación laboral, (código 01).
      </b>
      <br />
      La cantidad de:
      <br />
      De acuerdo al siguiente detalle:
    </p>
  </div>
  <div class="contenedor-tabla">
    <table class="cr" style="border: none !important;">
      <tr>
        <th>Total Devengado:</th>
        <td><b>${{ number_format($key->total_devengado, 2) }}</b></td>
      </tr>
      <tr>
        <th>Bonif. y Gratific.:</th>
        <td><b>${{ number_format($key->bonos, 2) }}</b></td>
      </tr>
      <tr>
        <th>Aguinaldo Gravado:</th>
        <td><b>${{ number_format($key->GRAVADO, 2) }}</b></td>
      </tr>
      <tr>
        <th>Aguinaldo Exento:</th>
        <td><b>${{ number_format($key->EXENTO, 2) }}</b></td>
      </tr>
      <tr>
        <th colspan="2">Deducciones Legales:</th>
      </tr>
      <tr>
        <th>ISSS:</th>
        <td><b>${{ number_format($key->isss, 2) }}</b></td>
      </tr>
      <tr>
        <th>AFP:</th>
        <td><b>${{ number_format($key->afp, 2) }}</b></td>
      </tr>
      <tr>
        <th>Renta Retenida:</th>
        <td><b>${{ number_format($key->Renta_retenida, 2) }}</b></td>
      </tr>
    </table>
  </div>
  <div class="contenedor-footer">
    <p>
      Cumpliendo con el art. 145, para los efectos de documentar la declaración del impuesto sobre la renta del año {{
      $data['anio'] }} se extiende la presente CONSTANCIA en San Salvador el día {{ $data['fecha'] }}.
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>Licda. Lisseth Calderón</p>
    <p><b>Jefe de Recursos Humanos.</b></p>
  </div>
  <div class="contenedor-imagenes-footer">
    <img src="{{ asset('img/3.png') }}" alt="Img">
  </div>
  @endforeach
</body>

</html>