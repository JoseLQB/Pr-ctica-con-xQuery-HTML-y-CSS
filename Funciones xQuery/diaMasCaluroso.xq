<html>
<head>
</head>
<body>
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
  
  where $c//temp_maxima = max(//temp_maxima)
  return 
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
  </tr>  
}
</table>
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
 where $d/fecha = (  for $c in db:open("weather")//pronostico_dias/dia
 where $c//temp_maxima = max(//temp_maxima)
  return $c/fecha)  
  return<tr>
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
  </tr>  
}

</table>
</body>
</html>