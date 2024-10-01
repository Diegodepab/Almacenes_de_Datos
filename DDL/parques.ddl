-- Generado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   en:        2024-10-02 00:56:59 CEST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE animal (
    nombre_cientifico VARCHAR2(50) NOT NULL,
    nombre_comun      VARCHAR2(35) NOT NULL,
    vida_media        FLOAT(6),
    espacio_necesario FLOAT(6)
);

ALTER TABLE animal ADD CONSTRAINT animal_pk PRIMARY KEY ( nombre_cientifico );

CREATE TABLE contiene_animales (
    poblacion_estimada       INTEGER NOT NULL,
    esta_superpoblada        VARCHAR2(2) NOT NULL,
    parque_nombre            VARCHAR2(60) NOT NULL,
    animal_nombre_cientifico VARCHAR2(50) NOT NULL
);

ALTER TABLE contiene_animales ADD CONSTRAINT contiene_animales_pk PRIMARY KEY ( parque_nombre,
                                                                                animal_nombre_cientifico );

CREATE TABLE municipio (
    nombre           VARCHAR2(25) NOT NULL,
    web              VARCHAR2(40),
    escudo           VARCHAR2(60),
    partido          VARCHAR2(50),
    num_hab          INTEGER,
    gasto_medio_agua FLOAT(5),
    parque_nombre    VARCHAR2(60) NOT NULL
);

ALTER TABLE municipio ADD CONSTRAINT municipio_pk PRIMARY KEY ( nombre );

CREATE TABLE parque (
    nombre                   VARCHAR2(60) NOT NULL,
    teléfono                 VARCHAR2(15),
    direccion_administrativa VARCHAR2(50),
    web                      VARCHAR2(55),
    correo                   VARCHAR2(50),
    fecha_de_declaracion     DATE,
    extension                INTEGER,
    num_municipios           INTEGER,
    persona_dni              VARCHAR2(15) NOT NULL,
    dirreccion_gestora_id    INTEGER NOT NULL
);

CREATE UNIQUE INDEX parque__idx ON
    parque (
        dirreccion_gestora_id
    ASC );

CREATE UNIQUE INDEX parque__idx ON
    parque (
        persona_dni
    ASC );

ALTER TABLE parque ADD CONSTRAINT parque_pk PRIMARY KEY ( nombre );

CREATE TABLE persona (
    dni                   VARCHAR2(15) NOT NULL,
    nombre                VARCHAR2(35) NOT NULL,
    fech_nac              DATE NOT NULL,
    dirreccion            VARCHAR2(45) NOT NULL,
    telefono              VARCHAR2(12) NOT NULL,
    dirreccion_gestora_id INTEGER,
    parque_nombre         VARCHAR2(60)
);

ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY ( dni );

ALTER TABLE contiene_animales
    ADD CONSTRAINT contiene_animales_animal_fk FOREIGN KEY ( animal_nombre_cientifico )
        REFERENCES animal ( nombre_cientifico );

ALTER TABLE contiene_animales
    ADD CONSTRAINT contiene_animales_parque_fk FOREIGN KEY ( parque_nombre )
        REFERENCES parque ( nombre );

ALTER TABLE municipio
    ADD CONSTRAINT municipio_parque_fk FOREIGN KEY ( parque_nombre )
        REFERENCES parque ( nombre );

ALTER TABLE parque
    ADD CONSTRAINT parque_persona_fk FOREIGN KEY ( persona_dni )
        REFERENCES persona ( dni );

ALTER TABLE persona
    ADD CONSTRAINT persona_parque_fk FOREIGN KEY ( parque_nombre )
        REFERENCES parque ( nombre );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             2
-- ALTER TABLE                             10
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
