-- Comprobar y eliminar la restricción de clave foránea en la tabla persona
IF EXISTS (SELECT * 
           FROM sys.foreign_keys 
           WHERE name = 'persona_parque_fk')
BEGIN
    ALTER TABLE persona DROP CONSTRAINT persona_parque_fk;
END

-- Comprobar y eliminar la restricción de clave foránea en la tabla parque
IF EXISTS (SELECT * 
           FROM sys.foreign_keys 
           WHERE name = 'parque_persona_fk')
BEGIN
    ALTER TABLE parque DROP CONSTRAINT parque_persona_fk;
END

-- Luego, elimina las tablas
DROP TABLE IF EXISTS contiene_animales;
DROP TABLE IF EXISTS municipio;
DROP TABLE IF EXISTS persona;
DROP TABLE IF EXISTS parque;
DROP TABLE IF EXISTS animal;

CREATE TABLE animal (
    nombre_cientifico   VARCHAR(50) NOT NULL,
    nombre_comun        VARCHAR(35) NOT NULL,
    vida_media          DECIMAL(5,2), -- Cambiado a DECIMAL para mayor precisión
    extension_necesaria DECIMAL(5,2)  -- Cambiado a DECIMAL para mayor precisión
);

ALTER TABLE animal ADD CONSTRAINT animal_pk PRIMARY KEY ( nombre_cientifico,
                                                          nombre_comun ) WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON );


CREATE TABLE contiene_animales (
    poblacion_estimada       INTEGER,
    esta_superpoblada        CHAR(1), -- Cambiado a CHAR para un solo carácter
    parque_nombre            VARCHAR(60) NOT NULL,
    animal_nombre_cientifico VARCHAR(50) NOT NULL,
    animal_nombre_comun      VARCHAR(35) NOT NULL,
    CONSTRAINT check_superpoblada CHECK (esta_superpoblada IN ('S', 'N')) -- Restricción CHECK
);

ALTER TABLE contiene_animales
    ADD CONSTRAINT contiene_animales_pk PRIMARY KEY ( parque_nombre,
                                                      animal_nombre_cientifico,
                                                      animal_nombre_comun );

CREATE TABLE municipio (
    nombre           VARCHAR(30) NOT NULL UNIQUE, -- Añadido UNIQUE si se necesita
    web              VARCHAR(80),
    escudo           VARCHAR(80),
    partido          VARCHAR(50),
    num_hab          INTEGER,
    gasto_medio_agua DECIMAL(8,2), -- Cambiado a DECIMAL para mayor precisión
    parque_nombre    VARCHAR(60) NOT NULL
);

ALTER TABLE municipio ADD CONSTRAINT municipio_pk PRIMARY KEY ( nombre ) WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON );


CREATE TABLE parque (
    nombre                   VARCHAR(60) NOT NULL,
    telefono                 VARCHAR(15),
    direccion_administrativa VARCHAR(50),
    web                      VARCHAR(70),
    correo                   VARCHAR(50),
    fech_declara             DATE,
    extension_ha             DECIMAL(10,2), -- Cambiado a DECIMAL para mayor precisión
    num_municipios           INTEGER,
    persona_dni              VARCHAR(15) NOT NULL
);

CREATE UNIQUE NONCLUSTERED INDEX parque__idx ON parque ( persona_dni ASC );

ALTER TABLE parque ADD CONSTRAINT parque_pk PRIMARY KEY ( nombre )WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON );

CREATE TABLE persona (
    dni           VARCHAR(15) NOT NULL,
    nombre        VARCHAR(35),
    fech_nac      DATE,
    direccion     VARCHAR(45),
    telefono      VARCHAR(12),
    parque_nombre VARCHAR(60),
    rol           VARCHAR(20) NOT NULL CHECK (rol IN ('Presidente', 'Consejero'))  -- Añadido campo de rol
);

ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY CLUSTERED ( dni )WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON );

ALTER TABLE contiene_animales
    ADD CONSTRAINT contiene_animales_animal_fk FOREIGN KEY ( animal_nombre_cientifico,
                                                             animal_nombre_comun )
        REFERENCES animal ( nombre_cientifico,
                            nombre_comun );

ALTER TABLE contiene_animales
    ADD CONSTRAINT contiene_animales_parque_fk FOREIGN KEY ( parque_nombre )
        REFERENCES parque ( nombre )    ON DELETE NO ACTION 
    ON UPDATE NO ACTION ;

ALTER TABLE municipio
    ADD CONSTRAINT municipio_parque_fk FOREIGN KEY ( parque_nombre )
        REFERENCES parque ( nombre )    ON DELETE NO ACTION 
    ON UPDATE NO ACTION ;

ALTER TABLE parque
    ADD CONSTRAINT parque_persona_fk FOREIGN KEY ( persona_dni )
        REFERENCES persona ( dni )    ON DELETE NO ACTION 
    ON UPDATE NO ACTION ;
