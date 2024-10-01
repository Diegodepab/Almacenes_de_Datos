# Almacenes_de_Datos
Uno de los valores añadidos de los sistemas de información es que la información que contiene puede ser utilizada por los cuadros de mando del mismo para detectar situaciones de riesgo y mejorar la organización. En cursos anteriores el alumnado han podido trabajar con los sistemas de bases de datos

La tarea en estos ejercicios es que dada una descripción de una organización, debe generarse el modelo Entidad/Relación correspondiente a dicho sistema de información. 



La Junta de Andalucía desea mantener la información sobre los parques naturales que hay en su comunidad autónoma. En particular sería necesario conocer el nombre del parque (que es único), su teléfono, dirección administrativa, una dirección web, un correo electrónico, su fecha de declaración como parque natural, la extensión (en hectáreas) de cada zona protegida, las especies animales que contiene, la población estimada de cada una de ellas y la dirección gestora del parque. Esta dirección gestora del parque está coordinada por un presidente y un número no determinado de consejeros. De todos estos miembros de la dirección gestora se desea conocer el DNI, nombre, fecha de nacimiento, dirección y teléfono de cada uno de ellos. Cada persona puede ser a lo sumo consejero en un parque y presidente de otro. De las especies guardamos su nombre científico y el común (ambos son únicos), el número de años de vida media. 

Con objeto de poder determinar el estado de salud del parque necesitamos información sobre la interacción del hombre con el entorno. Para ello se almacenan datos sobre los municipios donde está ubicado el parque: número de municipios que abarca, nombre de cada uno de ellos, enlace a su web, fichero con la foto de su escudo, partido que gobierna en la alcaldía, número de habitantes y gasto de agua medio por habitante. 

Las especies tienen una extensión (en hectáreas) necesaria para desarrollarse en libertad, dato que aparece en los estudios generales sobre cada especie. Sin embargo, el dato de si la especie está superpoblada en cada parque se guardará explícitamente, porque puede depender de factores como si el parque es montañoso, si tiene acuíferos, etc y por tanto precisa de la opinión última de un experto. Tenga en cuenta que cada municipio abarca a lo sumo un sólo parque. 

Información sobre parques naturales en https://www.juntadeandalucia.es/medioambiente/portal/areas-tematicas/espacios-protegidos/legislacion-autonomica-nacional/parques-naturales y https://es.wikipedia.org/wiki/Anexo:Espacios_naturales_protegidos_de_Andaluc%C3%ADa

Se quiere crear una base de datos que almacene información sobre la liga española de primera división. Esta información es anual (sólo datos de la liga en curso) y se recolectan los datos sobre los equipos que militan ese año en la categoría, su plantilla, cuerpo técnico y directivos, partidos en los que se enfrentan y resultados (parciales y globales de la liga). 

Los equipos están identificados por su nombre y guardaremos además su número de socios, el nombre de su campo, la ciudad a la que pertenecen, el año de fundación, el número de años continuados en primera división y el nombre de su fundador. 

Los equipos están compuestos por un entrenador, un médico, un preparador físico, un director deportivo, un entrenador de porteros, un presidente del club, varios consejeros y la plantilla de jugadores. De todo este personal se guarda su nombre, fecha de nacimiento, DNI, teléfono, dirección y sueldo. Además, de los jugadores se guarda el apodo o alias, el puesto en el equipo, los años para el fin del contrato, la cuantía para la claúsula de rescisión y el número de años en el equipo. 

El campeonato de liga está compuesto por una serie de jornadas que se identifican con un número. Cada jornada está formada por un conjunto de partidos, que son enfrentamientos entre una pareja de equipos y se juegan en el campo de uno de los dos. Queremos tener asociados los partidos a cada jornada y deseamos conocer su resultado (5-0, 3-1, 0-0, etc.), la fecha y hora en que se celebraron, la recaudación por taquilla, el número de espectadores y las personas que forman el equipo arbitral (un árbitro principal, dos jueces de línea y un cuarto árbitro) . Además guardamos para cada jornada el total de goles marcados de cabeza, en propia meta y de penalti y la recaudación obtenida por medio de las quinielas de esa jornada. 

Los colegiados (árbitros y jueces de línea) son seleccionados al principio de temporada para participar en esa categoría. De ellos se almacena el número de colegiado (que identifica a cada uno), nombre, DNI, antigüedad en la categoría y categoría en la que participó el año anterior. En cada temporada no son intercambiables los papeles de árbitro y juez de línea (un juez de línea no puede actuar como árbitro ni al revés). De los jueces de línea, además de los datos antes mencionados guardamos un dato que indique las posibilidades de desempeñar funciones de árbitro en la temporada siguiente y edad, y de los árbitros si ha sido o no internacional y si fue futbolista anteriormente. 

Información sobre la liga de fútbol profesional en www.lfp.es 
