<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Constancia de Ingreso</title>
  <link rel="stylesheet" href="{{ asset('css/stylesCons.css') }}">
</head>

<body>
  <div class="contenedor-imagenes">
    <img class="l-1" src="{{ asset('img/1.png') }}" alt="Img">
    <img class="l-2" src="{{ asset('img/2.png') }}" alt="Img">
  </div>
  <div class="contenedor-texto">
    <h3>San Salvador, {{ $data['fecha'] }}</h3>
    <p>A quien interese.</p>
    <br />
    <p class="lineado">
      Por medio de la presente hacemos constar que (e)l(a) Sr(ta). <span class="subtitle"><b>{{
          $data['detalle'][0]->NOMBRE }}</b></span>,
      labora para la <b>ASOCIACIÓN COOPERATIVA DE AHORRO Y CRÉDITO DE EMPRESARIOS SALVADOREÑOS DE RESPONSABILIDAD
        LIMITADA, -(ACACES de R.L.) -</b> desde el {{ $data['fecha_ingreso'] }} hasta la fecha, desempeñando el
      cargo de <span class="subtitle"><b>{{ $data['detalle'][0]->puesto }}</b></span> con un salario mensual de <span
        class="subtitle"><b>${{
          number_format($data['detalle'][0]->SUELDO, 2) }}</b></span>
      @if ((float)$data['bonos'] > 0 && (float)$data['comision'] > 0)
      <b>
        más un bono de <span class="subtitle">${{number_format($data['bonos'], 2) }}, </span>
        más un promedio de comisiones de <span class="subtitle">${{number_format($data['comision'], 2) }}</span>
      </b>
      @elseif ((float)$data['bonos'] > 0 && (float)$data['comision'] == 0.0)
      <b>
        más un bono de <span class="subtitle">${{number_format($data['bonos'], 2) }}, </span>
      </b>
      @elseif ((float)$data['bonos'] == 0.0 && (float)$data['comision'] > 0)
      <b>
        más un promedio de comisiones de <span class="subtitle">${{number_format($data['comision'], 2) }}</span>
      </b>
      @endif
      <b>mensuales, menos descuentos detallados en el siguiente cuadro:</b>
    </p>
  </div>
  <div class="contenedor-tabla">
    <table class="cs">
      <tr>
        <th>ISSS</th>
        <td>${{ number_format($data['detalle'][0]->ISSS, 2) }}</td>
      </tr>
      <tr>
        <th>AFP</th>
        <td>${{ number_format($data['detalle'][0]->AFP, 2) }}</td>
      </tr>
      <tr>
        <th>ISLR</th>
        <td>${{ number_format($data['detalle'][0]->RENTA, 2) }}</td>
      </tr>
      <tr>
        <th>Préstamos ACACES de R.L.</th>
        <td>${{ number_format($data['detalle'][0]->PRESTAMOS, 2) }}</td>
      </tr>
      <tr>
        <th>Deudor Vario</th>
        <td>${{ number_format($data['detalle'][0]->DV, 2) }}</td>
      </tr>
      <tr>
        <th>TOTAL DE DEDUCCIONES</th>
        <td>${{ number_format($data['detalle'][0]->TOTAL_DESCUENTOS, 2) }}</td>
      </tr>
      <tr>
        <th>Nivel de Endeudamiento con OID</th>
        <td>{{ number_format($data['detalle'][0]->OID, 2) }}%</td>
      </tr>
    </table>
  </div>
  <div class="contenedor-footer">
    <p>
      Y para los usos que el (la) interesado(a) estime conveniente se le extiende la presente en San Salvador el día
      {{ $data['fecha'] }}.
      <br />
      <br />
      Atentamente.
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>Licda. Lisseth Calderón</p>
    <p>Jefe de Recursos Humanos.</p>
    <p>Asociación Cooperativa de Ahorro y Crédito de Empresarios Salvadoreños</p>
  </div>
  <div class="contenedor-imagenes-footer">
    <img src="{{ asset('img/3.png') }}" alt="Img">
  </div>
</body>

</html>