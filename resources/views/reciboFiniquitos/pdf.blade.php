<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Recibo Finiquitos</title>
  <link rel="stylesheet" href="{{ asset('css/stylesCons.css') }}">
</head>

<body>
  @foreach ($data as $key)
  <div class="contenedor-imagenes">
    <img class="l-1" src="{{ asset('img/1.png') }}" alt="Img">
    <img class="l-2" src="{{ asset('img/2.png') }}" alt="Img">
  </div>
  <div></div>
  <div class="contenedor-texto">
    <h3 style="text-align: center !important;">Por ${{ number_format($key->inde_recivida, 2) }}</h3>
    <p class="lineado" style="font-size: 15.5px !important;">
      Recibí de la Asociación Cooperativa de Ahorro y Crédito de Empresarios Salvadoreños (ACACES de R.L.), La cantidad
      de <b>{{ $key->inde_recivida_letra }}</b>, en concepto de Indemnización Laboral, correspondiente al periodo del
      <b>{{ $key->fecha_ingreso }} al {{ $key->fecha_corte }}</b> según el detalle siguiente:
    </p>
  </div>
  <div class="contenedor-tabla">
    <table class="cs">
      <tr>
        <th colspan="2">Ingresos</th>
      </tr>
      <tr>
        <th>Indemnización Recibida</th>
        <td>${{ number_format($key->inde_recivida, 2) }}</td>
      </tr>
      <tr>
        <th colspan="2">Descuentos</th>
      </tr>
      <tr>
        <th>ISR</th>
        <td>${{ number_format($key->isr, 2) }}</td>
      </tr>
      <tr>
        <th>PGR</th>
        <td>${{ number_format($key->pgr, 2) }}</td>
      </tr>
      <tr>
        <th>Total Descuentos</th>
        <td>${{ number_format($key->total_descuentos, 2) }}</td>
      </tr>
      <tr>
        <th>Líquido a Pagar</th>
        <td>${{ number_format($key->liquido_Pagar, 2) }}</td>
      </tr>
    </table>
  </div>
  <div class="contenedor-footer">
    <p>
      Por lo que firmo el presente recibo, liberando a la Cooperativa ACACES de R.L., de toda responsabilidad legal
      futura.
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
      <div>
        <p>Autorizado por <br /> Representante Legal</p>
      </div>
      <div>
        <p>
          Recibí Conforme. <br />
          <b>{{ $key->nombre_completo }}</b> <br />
          DUI: <b>{{ $key->dui }}</b>
        </p>
      </div>
    </div>
  </div>
  <div class="contenedor-imagenes-footer">
    <img src="{{ asset('img/3.png') }}" alt="Img">
  </div>
  @endforeach
</body>

</html>