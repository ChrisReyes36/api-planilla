<table>
  <tr>
    <th>DATOS DE VACACIÓN</th>
  </tr>
  <tr></tr>
  <tr>
    <th>NOMBRE</th>
    <td>{{ $data['recibo'][0]->NOMBRECOMPLETO }}</td>
  </tr>
  <tr>
    <th>CARGO</th>
    <td>{{ $data['recibo'][0]->PUESTO }}</td>
  </tr>
  <tr>
    <th>FECHA DE INGRESO</th>
    <td>{{ $data['fecha_ingreso'] }}</td>
  </tr>
  <tr></tr>
  <tr></tr>
  <tr>
    <th><b>PERIODO VACACIONAL</b></th>
    <th></th>
    <th><b>GOCE DE VACIONES</b></th>
  </tr>
  <tr>
    <th>DESDE</th>
    <td>{{ $data['recibo'][0]->DESDE_F }}</td>
    <th>DESDE</th>
    <td>{{ $data['recibo'][0]->F_GOZE_INICIO_F }}</td>
  </tr>
  <tr>
    <th>HASTA</th>
    <td>{{ $data['recibo'][0]->HASTA_F }}</td>
    <th>HASTA</th>
    <td>{{ $data['recibo'][0]->F_GOZE_FIN_F }}</td>
  </tr>
  <tr>
    <th>TOTAL DE DÍAS</th>
    <td>{{ $data['recibo'][0]->TOTALDIAS }}</td>
    <th>TOTAL DE DÍAS</th>
    <td>{{ $data['recibo'][0]->DIAS_GOZADOS }}</td>
  </tr>
  <tr></tr>
  <tr></tr>
  <tr>
    <th>SUELDO BASE</th>
    <td>{{ $data['recibo'][0]->SUELDO }}</td>
  </tr>
  <tr>
    <th>PROMEDIO DE COMISIÓN (6 MESES)</th>
    <td>{{ $data['recibo'][0]->PROMEDIO_DE_COMISION_6_MESES }}</td>
  </tr>
  <tr>
    <th>PROMEDIO DE COMISIÓN (18 DÍAS)</th>
    <td>{{ $data['recibo'][0]->PROMEDIO_DE_COMISION_18_DIAS }}</td>
  </tr>
  <tr>
    <th>SUELDO DE VACACIÓN (18 DÍAS)</th>
    <td>{{ $data['recibo'][0]->SUELDO_MAS_COMISION_18_DIAS }}</td>
  </tr>
  <tr>
    <th>PRESTACIÓN DE VACACIÓN SEG. LEY</th>
    <td>{{ $data['recibo'][0]->VACACION_LEY }}</td>
  </tr>
  <tr>
    <th>PRESTACIÓN DE VACACIÓN SEG. POLÍTICA</th>
    <td>{{ $data['recibo'][0]->VACACION_POLITICA }}</td>
  </tr>
  <tr>
    <th><b>TOTAL</b></th>
    <td><b>{{ $data['recibo'][0]->vacacionsinpgr }}</b></td>
  </tr>
  <tr></tr>
  <tr></tr>
  <tr>
    <th><b>INGRESO QUINCENAL</b></th>
  </tr>
  <tr>
    <th>PRIMA VACACIONAL</th>
    <td>{{ $data['recibo'][0]->vacacionsinpgr }}</td>
  </tr>
  <tr>
    <th>PGR</th>
    <td>{{ $data['recibo'][0]->pgr }}</td>
  </tr>
  <tr>
    <th><b>TOTAL INGRESOS</b></th>
    <td><b>{{ $data['recibo'][0]->vaciontotal }}</b></td>
  </tr>
  <tr></tr>
  <tr></tr>
  <tr>
    <th><b>LIQUIDO A RECIBIR</b></th>
    <td><b>{{ $data['recibo'][0]->vaciontotal }}</b></td>
  </tr>
  <tr></tr>
  <tr></tr>
  <tr></tr>
  <tr></tr>
  <tr></tr>
  <tr></tr>
  <tr>
    <td>LISSETH CALDERÓN</td>
  </tr>
  <tr>
    <td>RECURSOS HUMANOS</td>
  </tr>
  <tr>
    <td>{{ $data['fecha_actual'] }}</td>
  </tr>
</table>