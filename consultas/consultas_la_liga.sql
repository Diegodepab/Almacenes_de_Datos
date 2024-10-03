-- 1. Listar el personal que trabaja para el "FC Barcelona" y tiene un sueldo mayor a 41,000:
SELECT Nombre, Sueldo
FROM PERSONAL
WHERE EQUIPO_Nombre_equipo = 'FC Barcelona'
AND Sueldo > 41000;

-- 2. Obtener los nombres y equipos de todo el personal cuya sede está en Madrid:
SELECT Nombre, EQUIPO_Nombre_equipo
FROM PERSONAL
WHERE Direccion LIKE '%Madrid%';
-- 3. Consulta sobre personal de un equipo específico
SELECT Nombre, DNI, Telefono, Sueldo
FROM PERSONAL
WHERE EQUIPO_Nombre_equipo = 'FC Barcelona';

-- 4. Listar los jueces de línea con posibilidad de estar en la próxima temporada "Alta"
SELECT C.Nombre, C.DNI, A.Ex_futbolista
FROM COLEGIADO C
JOIN ARBITRO A ON C.N_colegiado = A.N_colegiado
WHERE A.Ex_futbolista = 1;

-- 5. Consulta sobre los árbitros que fueron ex futbolistas
SELECT C.Nombre, C.DNI, A.Internacional
FROM COLEGIADO C
JOIN ARBITRO A ON C.N_colegiado = A.N_colegiado
WHERE A.Internacional = 1;
