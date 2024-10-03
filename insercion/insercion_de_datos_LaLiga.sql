INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (1, 'Juan Perez', 'DNI123456', 10, 'Primera', 'Principal');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (2, 'Carlos Lopez', 'DNI654321', 8, 'Segunda', 'Asistente');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (3, 'Ana Ruiz', 'DNI789123', 12, 'Primera', 'Principal');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (4, 'Luis Gomez', 'DNI321987', 6, 'Segunda', 'Asistente');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (5, 'Elena Garcia', 'DNI456789', 15, 'Primera', 'Principal');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (6, 'Pedro Sanchez', 'DNI654987', 9, 'Segunda', 'Asistente');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (7, 'Sofia Martinez', 'DNI852369', 11, 'Primera', 'Principal');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (8, 'Miguel Ortiz', 'DNI963258', 4, 'Tercera', 'Asistente');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (9, 'Lucia Hernandez', 'DNI741258', 13, 'Primera', 'Principal');
INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado) VALUES (10, 'David Alvarez', 'DNI147852', 7, 'Segunda', 'Asistente');


INSERT INTO COLEGIADO (N_colegiado, Nombre, DNI, Antiguedad, Categoria_ano_anterior, Tipo_colegiado)
VALUES
(11, 'Jorge Sánchez', '12345678A', 5, 'Primera', 'Principal'),
(12, 'María López', '23456789B', 8, 'Segunda', 'Asistente'),
(13, 'Luis Fernández', '34567890C', 3, 'Primera', 'Principal'),
(14, 'Ana Pérez', '45678901D', 7, 'Tercera', 'Principal'),
(15, 'Carlos Ramírez', '56789012E', 2, 'Primera', 'Principal'),
(16, 'Laura García', '67890123F', 6, 'Segunda', 'Asistente'),
(17, 'Fernando Torres', '78901234G', 9, 'Primera', 'Principal'),
(18, 'Sara Moreno', '89012345H', 4, 'Segunda', 'Asistente'),
(19, 'Pablo Martín', '90123456I', 1, 'Primera', 'Principal'),
(20, 'Elena Ruiz', '01234567J', 10, 'Tercera', 'Principal');

-- Insertar árbitros en la tabla ARBITRO
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (1, 1, 0, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (2, 0, 1, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (3, 1, 0, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (4, 0, 1, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (5, 1, 0, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (6, 0, 1, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (7, 1, 0, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (8, 0, 1, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (9, 1, 0, 'ARBITRO');
INSERT INTO ARBITRO (N_colegiado, Internacional, Ex_futbolista, ARBITRO_TYPE) VALUES (10, 0, 1, 'ARBITRO');



INSERT INTO JUEZ_LINEA (N_colegiado, Posibilidad_prox_temp, Edad, JUEZ_LINEA_TYPE) 
VALUES
(11, 'Alta', 30, 'JUEZ_LINEA'),
(12, 'Baja', 34, 'JUEZ_LINEA'),
(13, 'Moderada', 28, 'JUEZ_LINEA'),
(14, 'Alta', 29, 'JUEZ_LINEA'),
(15, 'Baja', 32, 'JUEZ_LINEA'),
(16, 'Moderada', 27, 'JUEZ_LINEA'),
(17, 'Alta', 31, 'JUEZ_LINEA'),
(18, 'Baja', 35, 'JUEZ_LINEA'),
(19, 'Moderada', 33, 'JUEZ_LINEA'),
(20, 'Alta', 30, 'JUEZ_LINEA');

ALTER TABLE PERSONAL
DROP CONSTRAINT PERSONAL_EQUIPO_FK;


ALTER TABLE PERSONAL
ALTER COLUMN EQUIPO_Nombre_equipo VARCHAR(20) NULL;

INSERT INTO PERSONAL (DNI, Nombre, F_nacimiento, Telefono, Direccion, Sueldo, EQUIPO_Nombre_equipo) VALUES
('12345678A', 'Mario Gomez', '1985-03-25', '612345678', 'Calle Falsa 123, Madrid', 30000, 'FC Barcelona'),
('23456789B', 'Laura Martinez', '1990-06-15', '623456789', 'Avenida Siempre Viva 742, Sevilla', 32000, 'Real Madrid'),
('34567890C', 'Carlos Ruiz', '1988-11-30', '634567890', 'Paseo del Prado 456, Valencia', 35000, 'Atlético de Madrid'),
('45678901D', 'Sofia Lopez', '1992-02-20', '645678901', 'Calle Gran Via 1, Barcelona', 31000, 'Sevilla FC'),
('56789012E', 'David Fernandez', '1986-09-12', '656789012', 'Calle Mayor 99, Bilbao', 34000, 'Valencia CF'),
('67890123F', 'Isabel Torres', '1984-01-05', '667890123', 'Plaza Mayor 5, Zaragoza', 36000, 'FC Barcelona'),
('78901234G', 'Antonio Ramos', '1995-04-18', '678901234', 'Calle del Mar 87, Malaga', 30000, 'Real Madrid'),
('89012345H', 'Cristina Jimenez', '1991-07-27', '689012345', 'Avenida de la Paz 34, Granada', 31000, 'Atlético de Madrid'),
('90123456I', 'Javier Sánchez', '1989-05-10', '612345678', 'Calle de la Libertad 44, Toledo', 33000, 'Sevilla FC'),
('01234567J', 'Patricia Castillo', '1993-12-01', '623456789', 'Calle del Sol 18, Murcia', 32000, 'Valencia CF');

INSERT INTO PERSONAL (DNI, Nombre, F_nacimiento, Telefono, Direccion, Sueldo, EQUIPO_Nombre_equipo) VALUES
('22222222A', 'Andrés Martín', '1985-01-25', '612345678', 'Calle Verde 10, Madrid', 35000, 'FC Barcelona'),
('33333333B', 'Rosa López', '1989-02-14', '623456789', 'Avenida Azul 20, Sevilla', 34000, 'Real Madrid'),
('44444444C', 'Francisco Torres', '1990-03-05', '634567890', 'Paseo Rojo 30, Valencia', 36000, 'Atlético de Madrid'),
('55555555D', 'Beatriz Medina', '1988-04-16', '645678901', 'Calle Amarilla 40, Barcelona', 37000, 'Sevilla FC'),
('66666666E', 'Fernando Ruiz', '1986-05-27', '656789012', 'Calle Naranja 50, Bilbao', 38000, 'Valencia CF'),
('77777777F', 'María Gómez', '1984-06-12', '667890123', 'Calle Purpura 60, Zaragoza', 39000, 'FC Barcelona'),
('88888888G', 'José Antonio Jiménez', '1987-07-21', '678901234', 'Calle Blanca 70, Málaga', 34000, 'Real Madrid'),
('99999999H', 'Carla Sánchez', '1991-08-30', '689012345', 'Calle Marrón 80, Granada', 31000, 'Atlético de Madrid'),
('00000000I', 'Hugo Martínez', '1993-09-10', '612345678', 'Calle Celeste 90, Toledo', 32000, 'Sevilla FC'),
('11111111J', 'Cristina Fernández', '1992-10-22', '623456789', 'Calle Verde 100, Murcia', 33000, 'Valencia CF'),
('22222222K', 'Antonio Castillo', '1985-11-17', '634567890', 'Calle Real 110, Oviedo', 34000, 'FC Barcelona'),
('33333333L', 'Laura Ruiz', '1988-12-06', '645678901', 'Calle Mistral 120, Almería', 35000, 'Real Madrid'),
('44444444M', 'Ricardo Peña', '1990-03-22', '656789012', 'Calle Sur 130, Salamanca', 36000, 'Atlético de Madrid'),
('55555555N', 'Isabel Herrera', '1994-04-18', '667890123', 'Calle Este 140, Santiago', 37000, 'Sevilla FC'),
('66666666O', 'Eduardo Ortega', '1995-05-25', '678901234', 'Calle Oeste 150, Cáceres', 38000, 'Valencia CF'),
('77777777P', 'Patricia Núñez', '1989-06-14', '689012345', 'Calle Norte 160, Jaén', 34000, 'FC Barcelona'),
('88888888Q', 'Sergio Ruiz', '1987-07-19', '601234567', 'Calle Sur 170, Huelva', 31000, 'Real Madrid'),
('99999999R', 'Clara Romero', '1986-02-09', '612345678', 'Calle del Sol 180, León', 32000, 'Atlético de Madrid'),
('00000000S', 'Luis Delgado', '1992-12-30', '623456789', 'Calle del Mar 190, Córdoba', 33000, 'Sevilla FC'),
('12121212T', 'Álvaro Ortega', '1994-01-15', '634567890', 'Calle del Viento 200, Palencia', 35000, 'Valencia CF'),
('13131313U', 'Natalia Castro', '1985-04-10', '645678901', 'Calle de la Paz 210, Ronda', 36000, 'FC Barcelona'),
('14141414V', 'Javier Salas', '1991-08-24', '656789012', 'Calle del Amor 220, Badajoz', 37000, 'Real Madrid'),
('15151515W', 'Verónica López', '1988-05-02', '667890123', 'Calle de la Esperanza 230, Lugo', 38000, 'Atlético de Madrid'),
('16161616X', 'Samuel Martínez', '1990-11-18', '678901234', 'Calle del Saber 240, Soria', 34000, 'Sevilla FC'),
('17171717Y', 'Alba Ruiz', '1993-03-12', '689012345', 'Calle del Camino 250, Cuenca', 31000, 'Valencia CF');

INSERT INTO PERSONAL (DNI, Nombre, F_nacimiento, Telefono, Direccion, Sueldo, EQUIPO_Nombre_equipo) VALUES
('12345679A', 'Jorge Silva', '1985-03-01', '612345670', 'Calle Luna 1, Madrid', 31000, 'FC Barcelona'),
('23456780B', 'Elena Ruiz', '1990-01-15', '623456780', 'Avenida del Sol 2, Sevilla', 32000, 'Real Madrid'),
('34567891C', 'Pablo García', '1988-02-28', '634567891', 'Paseo del Arte 3, Valencia', 33000, 'Atlético de Madrid'),
('45678902D', 'Ana López', '1991-04-20', '645678902', 'Calle del Viento 4, Barcelona', 34000, 'Sevilla FC'),
('56789013E', 'Javier Pérez', '1986-05-30', '656789013', 'Calle del Mar 5, Bilbao', 35000, 'Valencia CF'),
('67890124F', 'Sandra Díaz', '1984-06-10', '667890124', 'Plaza del Parque 6, Zaragoza', 36000, 'FC Barcelona'),
('78901235G', 'Miguel Ángel Ruiz', '1995-07-15', '678901235', 'Calle de la Paz 7, Málaga', 37000, 'Real Madrid'),
('89012346H', 'Patricia Sánchez', '1991-08-22', '689012346', 'Avenida de la Libertad 8, Granada', 38000, 'Atlético de Madrid'),
('90123457I', 'Rafael Martínez', '1989-09-18', '612345678', 'Calle del Sol 9, Toledo', 39000, 'Sevilla FC'),
('01234568J', 'Laura Hernández', '1993-10-25', '623456789', 'Calle del Río 10, Murcia', 40000, 'Valencia CF'),
('22222223K', 'Raúl Moreno', '1985-11-02', '634567890', 'Calle Nueva 11, Oviedo', 41000, 'FC Barcelona'),
('33333334L', 'Carmen Romero', '1988-12-16', '645678901', 'Calle del Norte 12, Almería', 42000, 'Real Madrid'),
('44444445M', 'Luis Alberto Castro', '1990-01-22', '656789012', 'Calle del Este 13, Salamanca', 43000, 'Atlético de Madrid'),
('55555556N', 'María Teresa Herrera', '1994-02-14', '667890123', 'Calle del Sur 14, Santiago', 44000, 'Sevilla FC'),
('66666667O', 'Antonio Navarro', '1995-03-25', '678901234', 'Calle del Oeste 15, Cáceres', 45000, 'Valencia CF'),
('77777778P', 'David Salas', '1989-04-30', '689012345', 'Calle del Centro 16, Jaén', 46000, 'FC Barcelona'),
('88888889Q', 'Isabel Ortega', '1987-05-21', '601234567', 'Calle del Mar 17, Huelva', 47000, 'Real Madrid'),
('99999990R', 'Sergio Martínez', '1986-06-05', '612345678', 'Calle de la Esperanza 18, León', 48000, 'Atlético de Madrid'),
('00000001S', 'Marta González', '1992-07-10', '623456789', 'Calle de la Libertad 19, Córdoba', 49000, 'Sevilla FC'),
('12121213T', 'Carlos Fernández', '1994-08-16', '634567890', 'Calle de la Paz 20, Palencia', 50000, 'Valencia CF'),
('13131314U', 'Natalia Ruiz', '1985-09-01', '645678901', 'Calle de la Historia 21, Ronda', 31000, 'FC Barcelona'),
('14141415V', 'Cristina Salazar', '1991-10-19', '656789012', 'Calle de los Jardines 22, Badajoz', 32000, 'Real Madrid'),
('15151516W', 'Hugo Castro', '1988-11-23', '667890123', 'Calle del Acero 23, Lugo', 33000, 'Atlético de Madrid'),
('16161617X', 'Álvaro López', '1990-12-08', '678901234', 'Calle del Templo 24, Soria', 34000, 'Sevilla FC'),
('17171718Y', 'Belén Ruiz', '1993-01-15', '689012345', 'Calle del Mar 25, Cuenca', 35000, 'Valencia CF');



DROP INDEX JUGADOR__IDX ON JUGADOR;

INSERT INTO JUGADOR (Dni, Alias, Puesto, Anos_contrato, Clausula_rescision, Anos_en_equipo, Personal_Dni) 
VALUES 
('12345678A', 'El Mago', 'Delantero', 3, 5000000, 2, '78901234G'),
('23456789B', 'El Gato', 'Portero', 5, 3000000, 4, '78901234G'),
('34567890C', 'El Tanque', 'Defensa', 4, 2500000, 3, '78901234G'),
('45678901D', 'El Rápido', 'Extremo', 2, 2000000, 1, '78901234G'),
('56789012E', 'El Cerebro', 'Centrocampista', 6, 6000000, 5, '78901234G');

INSERT INTO JUGADOR (Dni, Alias, Puesto, Anos_contrato, Clausula_rescision, Anos_en_equipo, Personal_Dni) 
VALUES 
('88888888G', 'El Talento', 'Delantero', 3, 4500000, 1, '77777777F'),
('99999999H', 'La Muralla', 'Defensa', 4, 3000000, 2, '77777777F'),
('00000000I', 'El Veloz', 'Extremo', 5, 2500000, 3, '77777777F'),
('11111111J', 'El Capitán', 'Centrocampista', 2, 2000000, 1, '77777777F'),
('22222222K', 'El Mágico', 'Portero', 6, 5000000, 4, '77777777F');

INSERT INTO JUGADOR (Dni, Alias, Puesto, Anos_contrato, Clausula_rescision, Anos_en_equipo, Personal_Dni) 
VALUES 
('33333333B', 'El Halcón', 'Delantero', 4, 7000000, 2, '17171718Y'),
('44444444C', 'El Guerrero', 'Defensa', 3, 5500000, 1, '17171718Y'),
('55555555D', 'El Maestro', 'Centrocampista', 5, 6000000, 3, '17171718Y'),
('66666666E', 'El Brillante', 'Extremo', 2, 4500000, 1, '17171718Y'),
('77777777F', 'La Leyenda', 'Portero', 6, 8000000, 4, '17171718Y');


INSERT INTO EQUIPO (Nombre_equipo, N_socios, Campo, Ciudad, Ano_fundacion, Anos_en_primera, Nombre_fundador, PERSONAL_Dni, PERSONAL_Dni1, PERSONAL_Dni5, PERSONAL_Dni2, PERSONAL_Dni3, PERSONAL_Dni6) VALUES
('FC Barcelona', 90000, 'Camp Nou', 'Barcelona', 1899, 122, 'Joan Gamper', '12345678A', '22222222A', '33333333B', '44444444C', '55555555D', '66666666E'),
('Real Madrid', 100000, 'Santiago Bernabéu', 'Madrid', 1902, 118, 'Santiago Bernabéu', '23456789B', '77777777F', '88888888G', '99999999H', '00000000I', '11111111J'),
('Atlético de Madrid', 30000, 'Cívitas Metropoli', 'Madrid', 1903, 119, 'Lázaro Pérez', '34567890C', '22222222K', '33333333L', '44444444M', '55555555N', '66666666O'),
('Sevilla FC', 40000, 'Ramón Sánchez-Piz', 'Sevilla', 1890, 134, 'José Luis Romero', '45678901D', '77777777P', '88888888Q', '99999999R', '00000000S', '12121212T'),
('Valencia CF', 50000, 'Mestalla', 'Valencia', 1919, 103, 'Juan Soler', '56789012E', '22222223K', '33333334L', '44444445M', '55555556N', '66666667O');



JORNADA:

INSERT INTO JORNADA (N_jornada, Fecha, Goles_cabeza, Goles_propia, Goles_penalti, Recaudacion_quinielas)
VALUES
(1, '2024-09-15', 3, 1, 2, 50000),
(2, '2024-09-22', 2, 0, 1, 60000),
(3, '2024-09-29', 1, 2, 0, 45000),
(4, '2024-10-06', 4, 1, 3, 55000),
(5, '2024-10-13', 2, 1, 2, 48000),
(6, '2024-10-20', 3, 0, 1, 51000),
(7, '2024-10-27', 1, 1, 1, 62000),
(8, '2024-11-03', 2, 2, 3, 58000),
(9, '2024-11-10', 4, 0, 2, 53000),
(10, '2024-11-17', 3, 1, 0, 49000);



TEMPORADA:

INSERT INTO TEMPORADA (Ano_temporada) 
VALUES 
(2020),
(2021),
(2022),
(2023),
(2024),
(2025);


PARTIDO:
INSERT INTO PARTIDO (
    ID_Partido, 
    Fecha, 
    Resultado, 
    Recaudacion_taquilla, 
    N_espectadores, 
    JORNADA_N_jornada, 
    TEMPORADA_Ano_temporada, 
    Hora, 
    EQUIPO_Nombre_equipo, 
    EQUIPO_Nombre_equipo1, 
    JUEZ_LINEA_N_colegiado, 
    ARBITRO_N_COLEGIADO, 
    Local, 
    Local2
) 
VALUES 
(1, '2024-10-05', '2-1', 150000, 50000, 1, 2024, '17:00', 'Real Madrid', 'FC Barcelona', 11, 1, 1, 0),
(2, '2024-10-06', '3-2', 120000, 45000, 1, 2024, '19:00', 'Atlético de Madrid', 'Valencia CF', 12, 2, 1, 0),
(3, '2024-10-07', '1-1', 80000, 30000, 2, 2024, '16:30', 'Atlético de Madrid', 'FC Barcelona', 13, 3, 1, 0),
(4, '2024-10-08', '0-0', 50000, 20000, 2, 2024, '18:00', 'Real Madrid', 'Atlético de Madrid', 14, 4, 1, 0),
(5, '2024-10-09', '2-3', 110000, 60000, 3, 2024, '20:00', 'Valencia CF', 'FC Barcelona', 15, 5, 0, 1);