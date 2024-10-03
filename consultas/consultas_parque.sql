-- 1. Consultar el número de consejeros por cada parque natura
SELECT parque_nombre, COUNT(*) AS num_consejeros
FROM persona
WHERE rol = 'Consejero'
GROUP BY parque_nombre;


-- 2. Obtener los detalles de los parques que tienen más de 3 consejeros
SELECT p.nombre, p.telefono, p.direccion_administrativa, COUNT(pe.dni) AS num_consejeros
FROM parque p
JOIN persona pe ON p.nombre = pe.parque_nombre
WHERE pe.rol = 'Consejero'
GROUP BY p.nombre, p.telefono, p.direccion_administrativa
HAVING COUNT(pe.dni) > 3;

-- 3 Consultar los parques que tienen una extensión mayor a 50,000 hectáreas y la población total de animales

SELECT p.nombre, p.extension_ha, SUM(ca.poblacion_estimada) AS poblacion_total
FROM parque p
JOIN contiene_animales ca ON p.nombre = ca.parque_nombre
WHERE p.extension_ha > 8999
GROUP BY p.nombre, p.extension_ha;


-- 4. Obtener los municipios con más de 10,000 habitantes que están asociados a parques naturales:

SELECT m.nombre, m.num_hab, p.nombre AS parque
FROM municipio m
JOIN parque p ON m.parque_nombre = p.nombre
WHERE m.num_hab > 10000;


-- 5. Obtener la lista de parques y los presidentes asociados a ellos:

SELECT p.nombre AS parque, per.nombre AS presidente, per.telefono
FROM parque p
JOIN persona per ON p.persona_dni = per.dni
WHERE per.rol = 'Presidente';



-- 6.  Calcular la población media de animales en parques donde la extensión es menor de 30,000 hectáreas:
SELECT p.nombre, AVG(ca.poblacion_estimada) AS poblacion_media
FROM parque p
JOIN contiene_animales ca ON p.nombre = ca.parque_nombre
WHERE p.extension_ha < 30000
GROUP BY p.nombre;
