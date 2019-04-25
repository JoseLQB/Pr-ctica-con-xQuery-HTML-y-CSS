<html>
<head>
</head>
<body>
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
for $d in db:open("weather")//pronostico_horas/hora

where $d/hora_datos="10:00"
order by $d/temperatura ascending
  return
   <p>
  {
    if ($d/temperatura/text() != (for $d in max(db:open("weather")//pronostico_horas/hora/temperatura) return $d))
  then(
  <tr>
  <td class="maxf">{$d/fecha/text()}</td>
  <td class="maxhd">{$d/hora_datos/text()}</td>
  <td class="maxt">{$d/temperatura/text()}</td>
  <td class="maxtxt">{$d/texto/text()}</td>
  <td><img src="{$d/icono/text()}"/></td>
  <td class="maxh">{$d/humedad/text()}</td>
  <td class="maxp">{$d/presion/text()}</td>
  <td class="maxv">{$d/viento/text()}</td>
  <td class="maxdv">{$d/dir_viento/text()}</td>
  <td class="maxhd"><img src="{$d/ico_viento/text()}"/></td>
  </tr>)
else(
  <tr>
  <td>{$d/fecha/text()}</td>
  <td>{$d/hora_datos/text()}</td>
  <td>{$d/temperatura/text()}</td>
  <td>{$d/texto/text()}</td>
  <td><img src="{$d/icono/text()}"/></td>
  <td>{$d/humedad/text()}</td>
  <td>{$d/presion/text()}</td>
  <td>{$d/viento/text()}</td>
  <td>{$d/dir_viento/text()}</td>
  <td><img src="{$d/ico_viento/text()}"/></td>
  </tr> )}</p>
}
</table>
</body>
</html>