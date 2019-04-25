<table border="3">
<tr>
<th>FECHA</th>
<th>FECHA LARGA</th>
<th>Tª MÁXIMA</th>
<th>Tª MÍNIMA</th>
<th></th>
<th>AMBIENTE</th>
<th>HUMEDAD</th>
<th>VIENTO</th>
<th>DIRECCION DEL VIENTO</th>
<th></th>
<th>SALIDA DE SOL</th>
<th>PUESTA DE SOL</th>
<th>SALIDA DE LUNA</th>
<th>PUESTA DE LUNA</th>
<th></th>
</tr>
{
  for $c in db:open("weather")//pronostico_dias/dia
  return
  <p>
{if ($c/temp_maxima/text() = (for $c in max(db:open("weather")//pronostico_dias/dia/temp_maxima/text()) return $c))
  then
  <tr class="max">
  <td>{$c/fecha/text()}</td>
  <td>{$c/fecha_larga/text()}</td>
  <td>{$c/temp_maxima/text()}</td>
  <td>{$c/temp_minima/text()}</td>
  <td><img src="{$c/icono/text()}"/></td>
  <td>{$c/texto/text()}</td>
  <td>{$c/humedad/text()}</td>
  <td>{$c/viento/text()}</td>
  <td>{$c/dir_viento/text()}</td>
  <td><img src="{$c/ico_viento/text()}"/></td>
  <td>{$c/salida_sol/text()}</td>
  <td>{$c/puesta_sol/text()}</td>
  <td>{$c/salida_luna/text()}</td>
  <td>{$c/puesta_luna/text()}</td>
  <td><img src="{$c/ico_fase_luna/text()}"/></td>  
  </tr> 
  else
  <tr>
  <td>{$c/fecha/text()}</td>
  <td>{$c/fecha_larga/text()}</td>
  <td>{$c/temp_maxima/text()}</td>
  <td>{$c/temp_minima/text()}</td>
  <td><img src="{$c/icono/text()}"/></td>
  <td>{$c/texto/text()}</td>
  <td>{$c/humedad/text()}</td>
  <td>{$c/viento/text()}</td>
  <td>{$c/dir_viento/text()}</td>
  <td><img src="{$c/ico_viento/text()}"/></td>
  <td>{$c/salida_sol/text()}</td>
  <td>{$c/puesta_sol/text()}</td>
  <td>{$c/salida_luna/text()}</td>
  <td>{$c/puesta_luna/text()}</td>
  <td><img src="{$c/ico_fase_luna/text()}"/></td>  
  </tr>}</p> 
}
</table>