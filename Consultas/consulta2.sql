#2 Segunda consulta, la lista de Tickets por paises centroamericanos
# No se encontraron resultados por lo que 0 estan asociados
USE `DATABASE`; 
SELECT t.tickets, org.country 
FROM swusers as u, swtickets as t, swuserorganizations as org
WHERE u.userid = t.userid 
AND u.userorganizationid = org.userorganizationid 
AND org.country = 'Costa Rica'
AND org.country = 'Panama'
AND org.country = 'Nicaragua'
AND org.country = 'El Salvador'
AND org.country = 'Belice'
AND org.country = 'Guatemala'
AND org.country = 'Honduras';
