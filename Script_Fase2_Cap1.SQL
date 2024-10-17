-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-10-16 19:22:56 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE ambiente CASCADE CONSTRAINTS;

DROP TABLE coleta CASCADE CONSTRAINTS;

DROP TABLE conforto CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ambiente (
    id_ambiente   INTEGER NOT NULL,
    nome_ambiente VARCHAR2(50) NOT NULL
);

ALTER TABLE ambiente ADD CONSTRAINT t_ambiente_pk PRIMARY KEY ( id_ambiente );

CREATE TABLE coleta (
    id_coleta              INTEGER NOT NULL,
    t_ambiente_id_ambiente INTEGER NOT NULL,
    data_hora              DATE NOT NULL,
    numero_leituras        INTEGER NOT NULL,
    temperatura            FLOAT(2) NOT NULL,
    umidade                FLOAT(2) NOT NULL,
    idl_conforto           VARCHAR2(20) NOT NULL,
    conforto_id_conforto   INTEGER NOT NULL
);

CREATE UNIQUE INDEX t_coleta__idx ON
    coleta (
        t_ambiente_id_ambiente
    ASC );

CREATE UNIQUE INDEX t_coleta__idx ON
    coleta (
        conforto_id_conforto
    ASC );

ALTER TABLE coleta ADD CONSTRAINT t_coleta_pk PRIMARY KEY ( id_coleta );

CREATE TABLE conforto (
    id_conforto        INTEGER NOT NULL,
    nivel              VARCHAR2(20) NOT NULL,
    t_coleta_id_coleta INTEGER NOT NULL,
    coleta_id_coleta   INTEGER NOT NULL
);

CREATE UNIQUE INDEX t_nivel_conforto__idx ON
    conforto (
        t_coleta_id_coleta
    ASC );

CREATE UNIQUE INDEX t_nivel_conforto__idxv1 ON
    conforto (
        coleta_id_coleta
    ASC );

ALTER TABLE conforto ADD CONSTRAINT t_nivel_conforto_pk PRIMARY KEY ( id_conforto );

ALTER TABLE coleta
    ADD CONSTRAINT coleta_ambiente_fk FOREIGN KEY ( t_ambiente_id_ambiente )
        REFERENCES ambiente ( id_ambiente );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             4
-- ALTER TABLE                              4
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
