<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Boletas Aguinaldo</title>
  <link rel="stylesheet" href="{{ asset('css/stylesCons.css') }}">
</head>

<body>
  @foreach ($data["detalle"] as $key)
  <div class="contenedor-imagenes">
    <img class="l-1" src="{{ asset('img/1.png') }}" alt="Img">
    <img class="l-2" src="{{ asset('img/2.png') }}" alt="Img">
  </div>
  <div></div>
  <div class="contenedor-texto">
    <h3 style="text-align: center !important;">Por ${{ number_format($key->TOTAL_AGUINALDO, 2) }}</h3>
    <p class="lineado" style="font-size: 15.5px !important;">
      Atentamente informamos que el valor correspondiente de aguinaldo completo que corresponde al período
      {{ $data['anio'] }} ha sido depósitado en su cuenta planillera de Banco de América Central el día
      {{ $key->FECHA_PAGO }}, reflejados en base siguiente detalle:
    </p>
  </div>
  <div class="contenedor-tabla">
    <table class="cs">
      <tr>
        <th>
          <p style="text-decoration: underline;">Aguinaldo</p>
        </th>
        <th>
          <p style="text-decoration: underline;">${{ number_format($key->TOTAL_AGUINALDO, 2) }}</p>
        </th>
      </tr>
      <tr>
        <th colspan="2">Descuentos</th>
      </tr>
      <tr>
        <th>PGR</th>
        <td>${{ number_format($key->PGR, 2) }}</td>
      </tr>
      <tr>
        <th>
          <p style="text-decoration: underline;">Total Descuentos</p>
        </th>
        <td>
          <p style="text-decoration: underline;"><b>${{ number_format($key->TOTAL_DESCUENTOS, 2) }}</b></p>
        </td>
      </tr>
      <tr>
        <th>
          <p style="text-decoration: underline;">Líquido a Pagar</p>
        </th>
        <td>
          <p style="text-decoration: underline;"><b>${{ number_format($key->LIQUIDO_PAGAR, 2) }}</b></p>
        </td>
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
  </div>
  <div class="contenedor-tabla">
    <div>
      <table class="ca" style="border: none !important;">
        <tr>
          <td>
            <b>
              <hr />
            </b>
          </td>
          <td>
            <b>
              <hr />
            </b>
          </td>
        </tr>
        <tr>
          <th>Autorizado</th>
          <td>
            <b>
              Recibí Conforme <br />
              {{ $key->NOMBRE_COMP }}
            </b>
          </td>
        </tr>
      </table>
      <br />
      <br />
      <br />
      <h4 style="text-align: left !important;">San salvador, {{ $data['fecha'] }}</h4>
    </div>
  </div>
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <div class="contenedor-imagenes-footer">
    <img src="{{ asset('img/3.png') }}" alt="Img">
  </div>
  @endforeach
</body>

</html>