Tarea 1, Análisis de Bases de datos
===========================
Equipo de trabajo
-----------------
- Kenneth Sanchez Marín
- José Gustavo González González.

Objetivos
--------------
Introducir al estudiante al análisis bases de datos ya existentes.

Parte 1 - Diseño
--------------
Se debe realizar el diseño de una base de datos que se encargue de organizar duelos de magic. Estos duelos son dados por distintos jugadores, de varios husos horarios en distintos países alrededor del mundo. Es necesario obtener el tiempo promedio de juego, las cartas más utilizadas, las cartas más raras y los juegos más interesantes. En este juego de magic cada carta que ingresa al mundo del juego debe de estar registrada, también se debe de registrar cada movimiento del juego y se registra cada intercambio de cartas (en cuanto se vendieron, cuando sucedió el evento, porqué sucedió, cuales cartas se intercambiaron, etc). Las cartas de deben de clasificar por la clasificación estándar del Juego Magic. Además se debe de guardar un ranking.


Parte 2 - Análisis de BD
--------------
Basado en la base de datos pública que se puede obtener [aquí](https://mega.co.nz/#!H0A21CDK!UGLhasXzB-e28omj_325mMu1A4Y8xVnvT4w9lL1D-nM)

Realice lo siguiente: 
 - Un Modelo relacional de la base de datos compartida.
 - Extraiga solo el subconjunto de información que corresponde a Nicaragua y cree una nueva base de datos de MySQL.

Aparte, cree consultas para:
 - Obtener la lista de direcciones IP relacionadas con el gobierno nicaraguense.
 - La lista de Tickets por paises centroamericanos.
 - Lista de Tickets por Institución.
 - El consecutivo de Tickets.
 - Cuáles números de tickets están asociados a un determinado país centroamericano.

Además debe crear un cliente en Perl que extraiga la información de Wikileaks relacionadas a hackingteam, este cliente debe de permitir los siguiente:

 - Parseo a CSV de los resultados de Wikileaks de la siguiente dirección, estos resultados deben de ser la suma de todos los resultados provistos por este sitio web. O sea si existen 5 páginas de resultados, es necesario revisarlas todas e incluirlas en el CSV.
 - El link es [este](https://www.wikileaks.org/hackingteam/emails/)
 - El cliente deberá permitir realizar una búsqueda en consola por: palabra en todo el correo, correo de envío y correo de recibido.
 - El cliente deberá permitir realizar una búsqueda dada una expresión regular en consola por: palabra en todo el correo, correo de envío y correo de recibido.
 - El cliente deberá de utilizar la biblioteca GetOps.
 
 
