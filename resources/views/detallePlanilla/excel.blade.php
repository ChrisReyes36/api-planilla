<table>
  <thead>
    <tr>
      <th>Asociación Cooperativa de Empresarios Salvadoreños de R.L.</th>
    </tr>
    <tr>
      <th>Planilla de Sueldos y Salarios del Personal</th>
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
      <td>Cuenta</td>
      <td>Salario Mensual</td>
      <td>Días</td>
      <td>Quincena</td>
      <td>Bonos</td>
      <td>Bonos Variables</td>
      <td>Vacaciones</td>
      <td>Comisión</td>
      <td>Total de la 15na</td>
      <td>ISSS</td>
      <td>AFP</td>
      <td>IPSFA</td>
      <td>15na-ISSS-AFP-IPSFA</td>
      <td>ISR</td>
      <td>Total descuentos</td>
      <td>Préstamos</td>
      <td>PGR</td>
      <td>FSV</td>
      <td>FOSAFI</td>
      <td>Anticipos</td>
      <td>D.V</td>
      <td>Viáticos</td>
      <td>Líquido a Pagar</td>
    </tr>
    @foreach ($data->detalles as $key)
    <tr>
      <td>{{ $key->contador }}</td>
      <td>{{ $key->colaborador }}</td>
      <td>{{ $key->departamento }}</td>
      <td>{{ $key->puesto }}</td>
      <td>{{ $key->fecha_ingreso }}</td>
      <td>{{ $key->num_cliente }}</td>
      <td>{{ $key->num_cuenta }}</td>
      <td>{{ $key->sueldo }}</td>
      <td>{{ $key->dias_trabajados }}</td>
      <td>{{ $key->calculo_salario }}</td>
      <td>{{ $key->bonos }}</td>
      <td>{{ $key->bonos_variables }}</td>
      <td>{{ $key->vacaciones }}</td>
      <td>{{ $key->comision }}</td>
      <td>{{ $key->t_quincena }}</td>
      <td>{{ $key->isss }}</td>
      <td>{{ $key->afp }}</td>
      <td>{{ $key->ipsfa }}</td>
      <td>{{ $key->t_quincena_desc }}</td>
      <td>{{ $key->renta }}</td>
      <td>{{ $key->total_descuentos }}</td>
      <td>{{ $key->prestamos }}</td>
      <td>{{ $key->pgr }}</td>
      <td>{{ $key->fsv }}</td>
      <td>{{ $key->fosafi }}</td>
      <td>{{ $key->anticipos }}</td>
      <td>{{ $key->dv }}</td>
      <td>{{ $key->viaticos }}</td>
      <td>{{ $key->sueldo_liquido }}</td>
    </tr>
    @endforeach
  </tbody>
</table>