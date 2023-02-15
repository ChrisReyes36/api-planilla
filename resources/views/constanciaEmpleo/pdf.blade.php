<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Constancia de Empleo</title>
  <link rel="stylesheet" href="{{ asset('css/stylesCons.css') }}">
</head>

<body>
  <div class="contenedor-imagenes">
    <img class="l-1" src="{{ asset('img/1.png') }}" alt="Img">
    <img class="l-2" src="{{ asset('img/2.png') }}" alt="Img">
  </div>
  <div class="contenedor-texto">
    <h3>San Salvador, {{ $data['fecha'] }}</h3>
    <br />
    <br />
    <p>A quien interese.</p>
    <br />
    <p class="lineado">
      Por medio de la presente hacemos constar que (e)l(a) Sr(ta). <span class="subtitle"><b>{{
          $data['detalle'][0]->NOMBRE_COMPLETO }}</b></span>,
      labora para la <b>ASOCIACIÓN COOPERATIVA DE AHORRO Y CRÉDITO DE EMPRESARIOS SALVADOREÑOS DE RESPONSABILIDAD
        LIMITADA, -(ACACES de R.L.) -</b> con contrato permanente bajo el cargo <span class="subtitle"><b>{{
          $data['detalle'][0]->PUESTO }}</b></span> desde {{ $data['fecha_ingreso'] }}
      (hasta {{ $data['fecha_baja'] }}).
    </p>
  </div>
  <div class="contenedor-footer">
    <p>
      Y para los usos que el (la) interesado(a) estime conveniente se le extiende la presente en San Salvador el día
      {{ $data['fecha'] }}.
      <br />
      <br />
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