-- Trigger para actualizar el número de municipios al insertar
CREATE TRIGGER actualizar_numero_municipios_insert
ON municipio
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET p.num_municipios = p.num_municipios + 1
    FROM parque p
    WHERE p.nombre IN (
        SELECT parque_nombre
        FROM inserted
    );
END;
GO

-- Trigger para actualizar el número de municipios al eliminar
CREATE TRIGGER actualizar_numero_municipios_delete
ON municipio
AFTER DELETE
AS
BEGIN
    UPDATE p
    SET p.num_municipios = p.num_municipios - 1
    FROM parque p
    WHERE p.nombre IN (
        SELECT parque_nombre
        FROM deleted
    );
END;
GO

INSERT INTO animal (nombre_cientifico, nombre_comun, vida_media, extension_necesaria)
VALUES 
    ('Lynx pardinus', 'Lynx ibérico', 13.0, 50.0),  -- Endémico de la Península Ibérica
    ('Mammalia', 'Lobo ibérico', 10.0, 200.0),  -- Subespecie del lobo que habita en la península
    ('Cervus elaphus', 'Ciervo', 15.0, 100.0),  -- Presente en varios parques naturales
    ('Capra pyrenaica', 'Cabra montés', 15.0, 100.0),  -- Habitante de montañas y sierras
    ('Oryctolagus cuniculus', 'Conejo', 9.0, 1.0),  -- Muy común en Andalucía
    ('Aquila chrysaetos', 'Águila real', 25.0, 100.0),  -- Ave de presa presente en las sierras
    ('Bubo bubo', 'Búho real', 20.0, 50.0),  -- Gran ave nocturna
    ('Testudo graeca', 'Tortuga mora', 50.0, 5.0),  -- Reptil terrestre típico
    ('Alcaudón real', 'Alcaudón', 5.0, 20.0),  -- Ave típica de zonas rurales
    ('Cygnus olor', 'Cisne mudo', 10.0, 100.0),  -- Común en lagos y ríos
    ('Emys orbicularis', 'Tortuga de río', 40.0, 5.0),  -- Reptil acuático
    ('Aquila fasciata', 'Águila perdicera', 15.0, 100.0),  -- Ave de presa en zonas montañosas
    ('Martes martes', 'Marta', 10.0, 50.0),  -- Mamífero que habita bosques
    ('Canis lupus signatus', 'Lobo ibérico', 10.0, 200.0),  -- Subespecie de lobo
    ('Equus asinus', 'Asno', 30.0, 5.0),  -- Común en áreas rurales
    ('Sula bassanus', 'Alcatraz', 15.0, 100.0),  -- Ave marina
    ('Bufo bufo', 'Sapo común', 10.0, 10.0),  -- Común en áreas húmedas
    ('Crotalus atrox', 'Serpiente de cascabel', 20.0, 1.0),  -- Presente en áreas cálidas
    ('Pernis apivorus', 'Águila de Bonelli', 15.0, 100.0),  -- Ave de presa
    ('Dama dama', 'Dama', 15.0, 100.0),  -- Ciervo común en parques naturales
    ('Aquila adalberti', 'Águila imperial', 20.0, 100.0),  -- Ave de presa en peligro de extinción
    ('Capra pyrenaica', 'Gamo', 15.0, 100.0),  -- Mamífero herbívoro típico de montañas
    ('Marmota marmota', 'Marmota', 10.0, 50.0),  -- Mamífero roedor de montaña
    ('Gallotia galloti', 'Lagarto gigante de El Hierro', 10.0, 5.0),  -- Reptil endémico de Canarias
    ('Phalacrocorax carbo', 'Cormorán grande', 15.0, 100.0),  -- Ave acuática común
	('Felis silvestris', 'Gato montés', 12.0, 20.0);  -- Presente en bosques y áreas rurales


	



INSERT INTO persona (dni, nombre, fech_nac, direccion, telefono, parque_nombre, rol)
VALUES 
    ('12345678A', 'Juan Pérez', '1975-05-20', 'Calle Falsa 123', '654321789', 'Parque Natural de Doñana', 'Presidente'),
	('67345678A', 'Ángel Jereez', '1975-05-20', 'Calle Falsa 123', '654321789', 'Parque Natural de Doñana', 'Presidente'),
    ('87654321B', 'Ana Gómez', '1980-11-15', 'Avenida Siempre Viva 456', '654987321', 'Parque Natural de Sierra de Cazorla', 'Presidente'),
    ('13579246C', 'Carlos Ruiz', '1990-02-10', 'Calle Ejemplo 789', '612345678', 'Parque Natural de la Sierra de Andújar', 'Presidente'),
    ('23456789D', 'María López', '1985-03-22', 'Calle Real 101', '655432198', 'Parque Natural de las Marismas del Odiel', 'Presidente'),
    ('34567890E', 'José Martínez', '1978-08-30', 'Avenida de Andalucía 45', '611223344', 'Parque Natural de la Breña y Marismas del Barbate', 'Presidente'),
    ('45678901F', 'Laura Sánchez', '1992-01-12', 'Calle del Río 77', '622334455', 'Parque Natural de la Sierra de Grazalema', 'Presidente'),
    ('56789012G', 'David Fernández', '1988-06-05', 'Plaza de la Paz 33', '633445566', 'Parque Natural de los Alcornocales', 'Presidente'),
    ('67890123H', 'Patricia Ruiz', '1995-12-17', 'Calle Nueva 89', '644556677', 'Parque Natural de la Sierra de las Villas', 'Presidente'),
    ('78901234I', 'Pedro González', '1983-04-28', 'Calle de la Esperanza 22', '655667788', 'Parque Natural de la Laguna de Fuente de Piedra', 'Presidente'),
    ('89012345J', 'Cristina Jiménez', '1979-09-09', 'Avenida de la Libertad 12', '688778899', 'Parque Natural de la Sierra de Mágina', 'Presidente'),
    ('90123456K', 'Javier Ortega', '1982-11-02', 'Calle de los Olivos 5', '677889900', 'Parque Natural de las Nieves', 'Presidente'),
    ('01234567L', 'Elena Castro', '1993-07-19', 'Calle del Sol 88', '699990011', 'Parque Natural de El Estrecho', 'Presidente');



INSERT INTO parque (nombre, telefono, direccion_administrativa, web, correo, fech_declara, extension_ha, num_municipios, persona_dni)
VALUES 
    ('Parque Natural de Doñana', '959123456', 'Calle Ejemplo 1', 'www.marismasdelodiel.es', 'info@marismasdelodiel.es', '1985-04-12', 12000.50, 3, '12345678A'),
    ('Parque Natural de Sierra de Cazorla', '958987654', 'Calle Ejemplo 2', 'www.sierradecazorla.es', 'info@sierradecazorla.es', '1986-07-15', 25000.00, 5, '87654321B'),
    ('Parque Natural de la Sierra de Andújar', '953456789', 'Calle Ejemplo 3', 'www.sierrandeandujar.es', 'info@sierrandeandujar.es', '1989-10-20', 15000.00, 2, '13579246C'),
    ('Parque Natural de las Marismas del Odiel', '956123456', 'Calle de la Marisma 45', 'www.marismasdelodiel.es', 'info@marismasdelodiel.es', '2002-06-12', 9000.00, 4, '23456789D'),
    ('Parque Natural de la Breña y Marismas del Barbate', '956123456', 'Calle de la Breña 45', 'www.brenaymarismas.es', 'info@brenaymarismas.es', '2002-06-12', 9000.00, 4, '34567890E'),
    ('Parque Natural de la Sierra de Grazalema', '956654321', 'Plaza del Pueblo 3', 'www.sierradegrazalema.es', 'info@sierradegrazalema.es', '1984-11-29', 5000.00, 2, '45678901F'),
    ('Parque Natural de los Alcornocales', '956987654', 'Avenida del Alcornocal 12', 'www.alcornocales.es', 'info@alcornocales.es', '1989-03-10', 42000.00, 3, '56789012G'),
    ('Parque Natural de la Sierra de las Villas', '957123456', 'Calle del Bosque 78', 'www.sierravillas.es', 'info@sierravillas.es', '1995-10-10', 15000.00, 2, '67890123H'),
    ('Parque Natural de la Laguna de Fuente de Piedra', '958456789', 'Avenida del Lago 33', 'www.fuentepiedra.es', 'info@fuentepiedra.es', '1998-05-15', 8000.00, 1, '78901234I'),
    ('Parque Natural de la Sierra de Mágina', '959654321', 'Calle de Mágina 22', 'www.sierrodemagina.es', 'info@sierromagina.es', '2001-11-11', 6000.00, 1, '89012345J'),
    ('Parque Natural de las Nieves', '952123456', 'Calle del Cielo 101', 'www.nieves.es', 'info@nieves.es', '1992-12-31', 12000.00, 2, '90123456K'),
    ('Parque Natural de el Estrecho', '951234567', 'Avenida del Estrecho 25', 'www.estrecho.es', 'info@estrecho.es', '1994-01-01', 20000.00, 3, '01234567L');



INSERT INTO persona (dni, nombre, fech_nac, direccion, telefono, parque_nombre, rol)
VALUES 
    ('12345678M', 'Antonio Ruiz', '1980-01-15', 'Calle de la Esperanza 1', '654321000', 'Parque Natural de Doñana', 'Consejero'),
    ('22345678N', 'Marta López', '1975-04-25', 'Calle Falsa 456', '654321111', 'Parque Natural de Doñana', 'Consejero'),
    ('32345678O', 'Luis García', '1990-07-30', 'Calle de los Jardines 3', '654321222', 'Parque Natural de Sierra de Cazorla', 'Consejero'),
    ('42345678P', 'Raquel Torres', '1985-09-18', 'Avenida del Sol 4', '654321333', 'Parque Natural de Sierra de Cazorla', 'Consejero'),
    ('52345678Q', 'Fernando Díaz', '1982-11-02', 'Calle del Río 5', '654321444', 'Parque Natural de la Sierra de Andújar', 'Consejero'),
    ('62345678R', 'Lucía Martínez', '1987-06-11', 'Calle Real 6', '654321555', 'Parque Natural de las Marismas del Odiel', 'Consejero'),
    ('72345678S', 'Javier Fernández', '1991-03-19', 'Avenida Siempre Viva 7', '654321666', 'Parque Natural de la Breña y Marismas del Barbate', 'Consejero'),
    ('82345678T', 'Patricia Sánchez', '1984-12-05', 'Calle del Sol 8', '654321777', 'Parque Natural de la Sierra de Grazalema', 'Consejero'),
    ('92345678U', 'David Morales', '1978-10-20', 'Plaza de la Paz 9', '654321888', 'Parque Natural de los Alcornocales', 'Consejero'),
    ('02345678V', 'Elena Castro', '1995-08-15', 'Calle Nueva 10', '654321999', 'Parque Natural de la Sierra de las Villas', 'Consejero'),
    ('12345679W', 'Cristina Jiménez', '1992-05-17', 'Calle de la Libertad 11', '655432111', 'Parque Natural de la Laguna de Fuente de Piedra', 'Consejero'),
    ('22345679X', 'José Antonio Romero', '1988-02-28', 'Avenida del Norte 12', '655432222', 'Parque Natural de la Sierra de Mágina', 'Consejero'),
    ('32345679Y', 'Ángela Pérez', '1986-03-01', 'Calle de la Esperanza 13', '655432333', 'Parque Natural de las Nieves', 'Consejero'),
    ('42345679Z', 'Alberto Medina', '1994-07-29', 'Calle de los Olivos 14', '655432444', 'Parque Natural de Doñana', 'Consejero'),
    ('52345679A', 'Vanessa Gómez', '1991-12-12', 'Calle del Mar 15', '655432555', 'Parque Natural de Doñana', 'Consejero'),
    ('62345679B', 'Sergio González', '1983-09-16', 'Avenida del Este 16', '655432666', 'Parque Natural de Sierra de Cazorla', 'Consejero'),
    ('72345679C', 'Isabel Núñez', '1979-01-04', 'Calle de la Paz 17', '655432777', 'Parque Natural de la Sierra de Andújar', 'Consejero'),
    ('82345679D', 'Cristian Pérez', '1982-06-23', 'Calle de los Ríos 18', '655432888', 'Parque Natural de las Marismas del Odiel', 'Consejero'),
    ('92345679E', 'María del Mar Ortega', '1990-04-14', 'Calle del Campo 19', '655432999', 'Parque Natural de la Breña y Marismas del Barbate', 'Consejero'),
    ('02345679F', 'Jorge Muñoz', '1995-10-30', 'Calle de la Luz 20', '655433000', 'Parque Natural de la Sierra de Grazalema', 'Consejero'),
    ('12345670G', 'Patricia Moreno', '1985-11-22', 'Calle de las Flores 21', '655433111', 'Parque Natural de los Alcornocales', 'Consejero'),
    ('22345670H', 'Pablo Vargas', '1984-05-07', 'Avenida del Sur 22', '655433222', 'Parque Natural de la Sierra de las Villas', 'Consejero'),
    ('32345670I', 'Álvaro Salinas', '1992-03-13', 'Calle de los Ángeles 23', '655433333', 'Parque Natural de la Laguna de Fuente de Piedra', 'Consejero'),
    ('42345670J', 'Lourdes Castro', '1989-09-15', 'Calle de la Rosa 24', '655433444', 'Parque Natural de la Sierra de Mágina', 'Consejero'),
    ('52345670K', 'Rafael Romero', '1991-12-30', 'Calle de la Esperanza 25', '655433555', 'Parque Natural de las Nieves', 'Consejero'),
    ('62345670L', 'Monica Torres', '1980-04-18', 'Calle del Sol 26', '655433666', 'Parque Natural de Doñana', 'Consejero'),
    ('72345670M', 'Raúl León', '1987-07-21', 'Avenida de Andalucía 27', '655433777', 'Parque Natural de Doñana', 'Consejero'),
    ('82345670N', 'Miriam Romero', '1985-02-14', 'Calle de los Pinos 28', '655433888', 'Parque Natural de Sierra de Cazorla', 'Consejero'),
    ('92345670O', 'Inés Vargas', '1993-01-16', 'Calle de la Libertad 29', '655433999', 'Parque Natural de la Sierra de Andújar', 'Consejero'),
    ('02345670P', 'Cristian Martín', '1988-08-24', 'Calle Nueva 30', '655434000', 'Parque Natural de las Marismas del Odiel', 'Consejero');

INSERT INTO municipio (nombre, web, escudo, partido, num_hab, gasto_medio_agua, parque_nombre)
VALUES 
    ('Huelva', 'www.huelva.es', 'escudo_huelva.png', 'PSOE', 145000, 120.50, 'Parque Natural de Doñana'),
    ('Cazorla', 'www.cazorla.es', 'escudo_cazorla.png', 'PP', 20000, 150.00, 'Parque Natural de Sierra de Cazorla'),
    ('Andújar', 'www.andujar.es', 'escudo_andujar.png', 'PSOE', 35000, 130.00, 'Parque Natural de la Sierra de Andújar'),
    ('Barbate', 'www.barbate.es', 'escudo_barbate.png', 'PP', 22000, 140.00, 'Parque Natural de la Breña y Marismas del Barbate'),
    ('Grazalema', 'www.grazalema.es', 'escudo_grazalema.png', 'PSOE', 2500, 100.00, 'Parque Natural de la Sierra de Grazalema'),
    ('Los Alcornocales', 'www.alcornocales.es', 'escudo_alcornocales.png', 'PSOE', 15000, 110.00, 'Parque Natural de los Alcornocales'),
    ('Sierra de las Villas', 'www.sierravillas.es', 'escudo_sierravillas.png', 'PP', 8000, 125.00, 'Parque Natural de la Sierra de las Villas'),
    ('Fuente de Piedra', 'www.fuentepiedra.es', 'escudo_fuentepiedra.png', 'PSOE', 1200, 130.00, 'Parque Natural de la Laguna de Fuente de Piedra'),
    ('Mágina', 'www.magina.es', 'escudo_magina.png', 'PP', 17000, 135.00, 'Parque Natural de la Sierra de Mágina'),
    ('Nieves', 'www.nieves.es', 'escudo_nieves.png', 'PSOE', 6000, 110.00, 'Parque Natural de las Nieves'),
    ('Tarifa', 'www.tarifa.es', 'escudo_tarifa.png', 'PP', 18000, 125.00, 'Parque Natural de el Estrecho'),
    ('Almonte', 'www.almonte.es', 'escudo_almonte.png', 'PSOE', 25000, 120.00, 'Parque Natural de Doñana'),
    ('Bailén', 'www.bailen.es', 'escudo_bailen.png', 'PP', 17000, 130.00, 'Parque Natural de la Sierra de Andújar'),
    ('Ubrique', 'www.ubrique.es', 'escudo_ubrique.png', 'PSOE', 16000, 115.00, 'Parque Natural de la Sierra de Grazalema'),
    ('Benalmádena', 'www.benalmadena.es', 'escudo_benalmadena.png', 'PP', 61000, 140.00, 'Parque Natural de la Sierra de Mágina');



INSERT INTO contiene_animales (poblacion_estimada, esta_superpoblada, parque_nombre, animal_nombre_cientifico, animal_nombre_comun)
VALUES 
    (200, 'S', 'Parque Natural de las Marismas del Odiel', 'Lynx pardinus', 'Lynx ibérico'),
	(250, 'S', 'Parque Natural de las Marismas del Odiel', 'Capra pyrenaica', 'Cabra montés'),
	(220, 'S', 'Parque Natural de las Marismas del Odiel', 'Oryctolagus cuniculus', 'Conejo'),
	(220, 'S', 'Parque Natural de las Marismas del Odiel', 'Aquila chrysaetos', 'Águila real'),
	(240, 'S', 'Parque Natural de las Marismas del Odiel', 'Testudo graeca', 'Tortuga mora'),
    (300, 'N', 'Parque Natural de las Marismas del Odiel', 'Felis silvestris', 'Gato montés'),
    (120, 'S', 'Parque Natural de las Marismas del Odiel', 'Dama dama', 'Dama'),
	(250, 'N', 'Parque Natural de las Marismas del Odiel', 'Aquila adalberti', 'Águila imperial'),
    (180, 'N', 'Parque Natural de las Marismas del Odiel', 'Capra pyrenaica', 'Gamo'),
    (70, 'S','Parque Natural de las Marismas del Odiel', 'Marmota marmota', 'Marmota'),
    (90, 'N', 'Parque Natural de las Marismas del Odiel', 'Gallotia galloti', 'Lagarto gigante de El Hierro'),
    (60, 'N', 'Parque Natural de las Marismas del Odiel', 'Phalacrocorax carbo', 'Cormorán grande'),
    (150, 'N', 'Parque Natural de Sierra de Cazorla', 'Mammalia', 'Lobo ibérico'),
    (80, 'N', 'Parque Natural de la Sierra de Andújar', 'Cervus elaphus', 'Ciervo');

