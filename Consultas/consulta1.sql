#1 Primer consulta, obtener la lista de direcciones IP relacionadas con el gobierno nicaraguense.
#No se encuentran resultados
USE `DATABASE`;
SELECT cities.country ,blocks.ipfrom , blocks.ipto FROM swgeoipcities as cities ,swgeoipcityblocks1 as blocks
WHERE blocks.blockid = cities.blockid and cities.country= 'NI';
