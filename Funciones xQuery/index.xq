<ul>{
for $c in db:open("weather") //datos/localidad


return

<info>
<li>Localidad: {$c/nombre/text()}</li>
<li>Pais: {$c/pais/text()}</li>
<p><b>Urls de interés: </b></p>
<li>{$c/url_pronostico_15_dias/text()}</li>
<li>{$c/url_pronostico_por_horas/text()}</li>
<li>{$c/url_pais/text()}</li>
</info>
}
</ul>