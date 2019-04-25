<table border="3">
<tr>
<th>FECHA</th>
<th>HORA</th>
<th>TEMPERATURAS</th>
<th>AMBIENTE</th>
<th></th>
<th>HUMEDAD</th>
<th>PRESIÓN</th>
<th>VIENTO</th>
<th>DIRECCIÓN DEL VIENTO</th>
<th></th>
</tr>
{
  for $c in db:open("weather")//pronostico_horas/hora
  return
  <p>
  {
    if ($c/temperatura/text() = (for $c in max(db:open("weather")//pronostico_horas/hora/temperatura) return $c))
  then
  <tr class="max">
  <td>{$c/fecha/text()}</td>
  <td>{$c/hora_datos/text()}</td>
  <td>{$c/temperatura/text()}</td>
  <td>{$c/texto/text()}</td>
  <td><img src="{$c/icono/text()}"/></td>
  <td>{$c/humedad/text()}</td>
  <td>{$c/presion/text()}</td>
  <td>{$c/viento/text()}</td>
  <td>{$c/dir_viento/text()}</td>
  <td><img src="{$c/ico_viento/text()}"/></td>
  </tr>
else
  <tr>
  <td>{$c/fecha/text()}</td>
  <td>{$c/hora_datos/text()}</td>
  <td>{$c/temperatura/text()}</td>
  <td>{$c/texto/text()}</td>
  <td><img src="{$c/icono/text()}"/></td>
  <td>{$c/humedad/text()}</td>
  <td>{$c/presion/text()}</td>
  <td>{$c/viento/text()}</td>
  <td>{$c/dir_viento/text()}</td>
  <td><img src="{$c/ico_viento/text()}"/></td>
  </tr> }</p>
}

</table>