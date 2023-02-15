<table>
  <thead>
    <tr>
      <th>Asociación Cooperativa de Empresarios Salvadoreños de R.L.</th>
    </tr>
    <tr>
      <th>Planilla de Aguinaldo del Personal Correspondiente al año {{ $data->anio }}</th>
    </tr>
    <tr>
      <th>(EN DÓLARES DE LOS ESTADOS UNIDO DE AMÉRICA)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>N°</td>
      <td>Nombre del Colaborador</td>
      <td>Departamento</td>
      <td>Cargo</td>
      <td>Código</td>
      <td>Fecha de Ingreso</td>
      <td>Fecha de Corte</td>
      <td>30/12/{{ $data->anio }}</td>
      <td>Días Laborados</td>
      <td>Tiempo Laborado al 30/12/{{ $data->anio }}</td>
      <td>Comisión o Bonificación Promedio</td>
      <td>Salario</td>
      <td>Aguinaldo Según Ley</td>
      <td>Complemento Según Política</td>
      <td>Total Aguinaldo</td>
      <td>Tope de Aguinaldo</td>
      <td>Base de Retención de Aguinaldo</td>
      {{-- <td>ISR</td> --}}
      <td>PGR</td>
      <td>Total Retenciones</td>
      <td>Líquido a Recibir</td>
    </tr>
    @foreach ($data->detalles as $key)
    <tr>
      <td>{{ $key->contador }}</td>
      <td>{{ $key->colaborador }}</td>
      <td>{{ $key->departamento }}</td>
      <td>{{ $key->puesto }}</td>
      <td>{{ $key->num_cliente }}</td>
      <td>{{ $key->fecha_ingreso }}</td>
      <td>{{ $key->fecha_corte }}</td>
      <td>{{ $key->tiempo_lab_corte }}</td>
      <td>{{ $key->Dias_laborados }}</td>
      <td>{{ $key->tiempo_laborado_Ltrs }}</td>
      <td>{{ $key->comision }}</td>
      <td>{{ $key->sueldo }}</td>
      <td>{{ $key->ingreso_ley }}</td>
      <td>{{ $key->ingreso_politica }}</td>
      <td>{{ $key->total_aguinaldo }}</td>
      <td>{{ $key->tope_ingreso }}</td>
      <td>{{ $key->base_ingreso_isr }}</td>
      {{-- <td>{{ $key->renta }}</td> --}}
      <td>{{ $key->pgr }}</td>
      <td>{{ $key->total_descuentos }}</td>
      <td>{{ $key->liquido_Pagar }}</td>
    </tr>
    @endforeach
  </tbody>
</table>