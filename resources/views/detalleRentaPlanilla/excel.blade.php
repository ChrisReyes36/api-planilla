<table>
  <thead>
    <tr>
      <th>Asociación Cooperativa de Empresarios Salvadoreños de R.L.</th>
    </tr>
    <tr>
      <th>{{ $data->encabezado }}</th>
    </tr>
    <tr>
      <th>Correspondiente al Período del: {{ $data->f_inicio }} al {{ $data->f_fin }}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>N°</td>
      <td>Nombre del Colaborador</td>
      <td>Departamento</td>
      <td>Cargo</td>
      <td>Fecha de Ingreso</td>
      <td>Código</td>
      <td>Quincena</td>
      <td>Bonos</td>
      <td>Bonos Variables</td>
      <td>Vacaciones</td>
      <td>Comisión</td>
      <td>Total de la 15na</td>
      <td>ISSS</td>
      <td>AFP</td>
      <td>IPSFA</td>
      @if($data->mes == 12 && $data->dia <= 15)
        <td>Aguinaldo Gravado</td>
      @elseif($data->mes == 12 && $data->dia > 15)
        <td>Indemnización Gravada</td>
      @endif
      <td>15na-ISSS-AFP-IPSFA</td>
      <td>ISR</td>
    </tr>
    @foreach ($data->detalles as $key)
    <tr>
      <td>{{ $key->contador }}</td>
      <td>{{ $key->colaborador }}</td>
      <td>{{ $key->departamento }}</td>
      <td>{{ $key->puesto }}</td>
      <td>{{ $key->fecha_ingreso }}</td>
      <td>{{ $key->num_cliente }}</td>
      <td>{{ $key->calculo_salario }}</td>
      <td>{{ $key->bonos }}</td>
      <td>{{ $key->bonos_variables }}</td>
      <td>{{ $key->vacaciones }}</td>
      <td>{{ $key->comision }}</td>
      <td>{{ $key->t_quincena }}</td>
      <td>{{ $key->isss }}</td>
      <td>{{ $key->afp }}</td>
      <td>{{ $key->ipsfa }}</td>
      @if($data->mes == 12 && $data->dia <= 15)
        <td>{{ $key->base_agravado }}</td>
      @elseif($data->mes == 12 && $data->dia > 15)
        <td>{{ $key->base_agravado }}</td>
      @endif
      <td>{{ $key->t_quincena_desc }}</td>
      <td>{{ $key->renta }}</td>
    </tr>
    @endforeach
  </tbody>
</table>