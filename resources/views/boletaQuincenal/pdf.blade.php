<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Boleta Quincenal</title>
  <link rel="stylesheet" href="{{ asset('css/stylesBoleQ.css') }}">
</head>

<body>
  @foreach ($data['detalle'] as $key)
  <div class="contenedor-texto">
    <div>
      <h2 style="text-align: center !important;">ACACES de R.L</h2>
      <br>
      <h3 style="text-align: center !important;">Señor(a) (ita): {{ $key->NOMBRE_COMPLETO }}</h3>
      <br>
      <h4 style="text-align: center !important;">{{ $key->NOMBRE }}</h4>
      <p class="lineado">
        Presente.
        <br />
        Atentamente le informamos que el valor correspondiente a su salario quincenal, ha sido Depositado en su cuenta
        planillera de Banco de América Central.
        <br />
        Periodo correspondiente: <b>{{ $key->F_INICIO_PLANILLA }}</b> al <b>{{ $key->F_FIN_PLANILLA }}</b>
      </p>
    </div>
  </div>
  <div class="contenedor-tabla">
    <div>
      <table>
        <tr>
          <th colspan="2"><b>SUELDO DEVENGADO</b></th>
          <th colspan="2"><b>DESCUENTOS</b></th>
        </tr>
        <tr>
          <th>Sueldo Quincenal</th>
          <td>${{ number_format($key->SUELDO_QUINCENAL, 2) }}</td>
          <th>I.S.S.S.</th>
          <td>${{ number_format($key->ISSS, 2) }}</td>
        </tr>
        <tr>
          <th>Bonificación permanente</th>
          <td>${{ number_format($key->BONOS_PERMANENTES, 2) }}</td>
          <th>AFP</th>
          <td>${{ number_format($key->AFP, 2) }}</td>
        </tr>
        <tr>
          <th>Bonificación Variable</th>
          <td>${{ number_format($key->BONOS_VARIABLES, 2) }}</td>
          <th>ISR</th>
          <td>${{ number_format($key->ISR, 2) }}</td>
        </tr>
        <tr>
          <th>Comisión</th>
          <td>${{ number_format($key->COMISION, 2) }}</td>
          <th>Préstamos</th>
          <td>${{ number_format($key->PRESTAMOS, 2) }}</td>
        </tr>
        <tr>
          <th>Prima Vacacional</th>
          <td>${{ number_format($key->PRIMA_VACACIONAL, 2) }}</td>
          <th>Cuota Ptmo.FSV</th>
          <td>${{ number_format($key->FSV, 2) }}</td>
        </tr>
        @if ($data["mes"] == 12 && $data["dia"] <= 15)
          <tr>
            <th>Aguinaldo Gravado</th>
            <td>${{ $key->BASE_AGRAVADO }}</td>
            <th>DV</th>
            <td>${{ number_format($key->DV, 2) }}</td>
          </tr>
          <tr>
            <th>Días Pagados</th>
            <td>{{ $key->DIAS_TRABAJADOS }}</td>
            <th>Procuraduría</th>
            <td>${{ number_format($key->PGR, 2) }}</td>
          </tr>
          <tr>
            <th>DEVENGADO</th>
            <td>${{ number_format($key->DEVENGADO, 2) }}</td>
            <th>IPSFA</th>
            <td>${{ number_format($key->IPSFA, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>FOSSAFI</th>
            <td>${{ number_format($key->FOSAFI, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>TOTAL DESCUENTOS</th>
            <td>
              <hr>
              <b>${{ number_format($key->TOTAL_DESCUENTOS, 2) }}</b>
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Viáticos</th>
            <td>
              <hr>
              ${{ number_format($key->VIATICOS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Reintegros</th>
            <td>
              ${{ number_format($key->REINTEGROS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>VALOR RECIBIDO</th>
            <td>
              <hr>
              <b>${{ number_format($key->VALOR_RECIBIDO, 2) }}</b>
            </td>
          </tr>
        @elseif($data["mes"] == 12 && $data["dia"] > 15)
          <tr>
            <th>Indemnización Gravada</th>
            <td>${{ $key->BASE_AGRAVADO }}</td>
            <th>DV</th>
            <td>${{ number_format($key->DV, 2) }}</td>
          </tr>
          <tr>
            <th>Días Pagados</th>
            <td>{{ $key->DIAS_TRABAJADOS }}</td>
            <th>Procuraduría</th>
            <td>${{ number_format($key->PGR, 2) }}</td>
          </tr>
          <tr>
            <th>DEVENGADO</th>
            <td>${{ number_format($key->DEVENGADO, 2) }}</td>
            <th>IPSFA</th>
            <td>${{ number_format($key->IPSFA, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>FOSSAFI</th>
            <td>${{ number_format($key->FOSAFI, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>TOTAL DESCUENTOS</th>
            <td>
              <hr>
              <b>${{ number_format($key->TOTAL_DESCUENTOS, 2) }}</b>
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Viáticos</th>
            <td>
              <hr>
              ${{ number_format($key->VIATICOS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Reintegros</th>
            <td>
              ${{ number_format($key->REINTEGROS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>VALOR RECIBIDO</th>
            <td>
              <hr>
              <b>${{ number_format($key->VALOR_RECIBIDO, 2) }}</b>
            </td>
          </tr>
        @else
          <tr>
            <th>Días Pagados</th>
            <td>{{ $key->DIAS_TRABAJADOS }}</td>
            <th>Procuraduría</th>
            <td>${{ number_format($key->PGR, 2) }}</td>
          </tr>
          <tr>
            <th><b>DEVENGADO</b></th>
            <td>${{ number_format($key->DEVENGADO, 2) }}</td>
            <th>DV</th>
            <td>${{ number_format($key->DV, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>IPSFA</th>
            <td>${{ number_format($key->IPSFA, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>FOSSAFI</th>
            <td>${{ number_format($key->FOSAFI, 2) }}</td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>TOTAL DESCUENTOS</th>
            <td>
              <hr>
              <b>${{ number_format($key->TOTAL_DESCUENTOS, 2) }}</b>
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Viáticos</th>
            <td>
              <hr>
              ${{ number_format($key->VIATICOS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>(+)Reintegros</th>
            <td>
              ${{ number_format($key->REINTEGROS, 2) }}
            </td>
          </tr>
          <tr>
            <th></th>
            <td></td>
            <th>VALOR RECIBIDO</th>
            <td>
              <hr>
              <b>${{ number_format($key->VALOR_RECIBIDO, 2) }}</b>
            </td>
          </tr>
        @endif
        <tr>
          <th><br /></th>
          <td></td>
          <th></th>
          <td></td>
        </tr>
        <tr>
          <th><br /></th>
          <td></td>
          <th></th>
          <td></td>
        </tr>
        <tr>
          <th><br /></th>
          <td></td>
          <th></th>
          <td></td>
        </tr>
        <tr>
          <th><br /></th>
          <td></td>
          <th></th>
          <td></td>
        </tr>
        <tr>
          <th colspan="2" style="text-align: center !important;">
            <img class="l-2" height="95" src="{{ asset('img/RRHH-01-01.png') }}" alt="Img">
            <hr />
          </th>
          <th colspan="2">
          </th>
        </tr>
        <tr>
          <th colspan="2" style="text-align: center !important;">
            Autorizado
          </th>
          <th colspan="2">
          </th>
        </tr>
      </table>
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
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  @endforeach
</body>

</html>