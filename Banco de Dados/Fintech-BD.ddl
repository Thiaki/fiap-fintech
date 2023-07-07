-- Gerado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   em:        2023-05-29 21:04:40 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_fnt_divida (
    cd_divida                 NUMBER(5) NOT NULL,
    t_fnt_usuario_cpf_usuario NUMBER(11) NOT NULL,
    vl_divida                 NUMBER(13, 2) NOT NULL,
    dt_divida                 DATE NOT NULL,
    descricao_divida          VARCHAR2(200)
);

ALTER TABLE t_fnt_divida ADD CONSTRAINT t_fnt_divida_pk PRIMARY KEY ( t_fnt_usuario_cpf_usuario,
                                                                      cd_divida );

CREATE TABLE t_fnt_gasto (
    cd_gasto                  NUMBER(5) NOT NULL,
    t_fnt_usuario_cpf_usuario NUMBER(11) NOT NULL,
    vl_gasto                  NUMBER(13, 2) NOT NULL,
    dt_gasto                  DATE NOT NULL,
    descricao_gasto           VARCHAR2(200)
);

ALTER TABLE t_fnt_gasto ADD CONSTRAINT t_fnt_gasto_pk PRIMARY KEY ( t_fnt_usuario_cpf_usuario,
                                                                    cd_gasto );

CREATE TABLE t_fnt_investimento (
    cd_recebimento            NUMBER(5) NOT NULL,
    t_fnt_usuario_cpf_usuario NUMBER(11) NOT NULL,
    vl_investimento           NUMBER(13, 2) NOT NULL,
    dt_investimento           DATE,
    descicao_investimento     VARCHAR2(200)
);

ALTER TABLE t_fnt_investimento ADD CONSTRAINT t_fnt_investimento_pk PRIMARY KEY ( t_fnt_usuario_cpf_usuario,
                                                                                  cd_recebimento );

CREATE TABLE t_fnt_meta_financeira (
    cd_meta                   NUMBER(5) NOT NULL,
    t_fnt_usuario_cpf_usuario NUMBER(11) NOT NULL,
    nm_meta                   VARCHAR2(30) NOT NULL,
    vl_meta                   NUMBER(13, 2) NOT NULL,
    dt_inicio                 DATE,
    ddt_final                 DATE
);

ALTER TABLE t_fnt_meta_financeira ADD CONSTRAINT t_fnt_meta_financeira_pk PRIMARY KEY ( cd_meta,
                                                                                        t_fnt_usuario_cpf_usuario );

CREATE TABLE t_fnt_recebimento (
    cd_recebimento            NUMBER(5) NOT NULL,
    t_fnt_usuario_cpf_usuario NUMBER(11) NOT NULL,
    vl_recebimento            NUMBER(13, 2) NOT NULL,
    dt_recebimento            DATE NOT NULL,
    descricao_recebimento     VARCHAR2(200)
);

ALTER TABLE t_fnt_recebimento ADD CONSTRAINT t_fnt_recebimento_pk PRIMARY KEY ( t_fnt_usuario_cpf_usuario,
                                                                                cd_recebimento );

CREATE TABLE t_fnt_usuario (
    cpf_usuario   NUMBER(11) NOT NULL,
    nm_usuario    VARCHAR2(60) NOT NULL,
    senha_usuario VARCHAR2(30) NOT NULL
);

ALTER TABLE t_fnt_usuario ADD CONSTRAINT t_fnt_usuario_pk PRIMARY KEY ( cpf_usuario );

ALTER TABLE t_fnt_divida
    ADD CONSTRAINT t_fnt_divida_t_fnt_usuario_fk FOREIGN KEY ( t_fnt_usuario_cpf_usuario )
        REFERENCES t_fnt_usuario ( cpf_usuario );

ALTER TABLE t_fnt_gasto
    ADD CONSTRAINT t_fnt_gasto_t_fnt_usuario_fk FOREIGN KEY ( t_fnt_usuario_cpf_usuario )
        REFERENCES t_fnt_usuario ( cpf_usuario );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_fnt_investimento
    ADD CONSTRAINT t_fnt_investimento_t_fnt_usuario_fk FOREIGN KEY ( t_fnt_usuario_cpf_usuario )
        REFERENCES t_fnt_usuario ( cpf_usuario );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_fnt_meta_financeira
    ADD CONSTRAINT t_fnt_meta_financeira_t_fnt_usuario_fk FOREIGN KEY ( t_fnt_usuario_cpf_usuario )
        REFERENCES t_fnt_usuario ( cpf_usuario );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_fnt_recebimento
    ADD CONSTRAINT t_fnt_recebimento_t_fnt_usuario_fk FOREIGN KEY ( t_fnt_usuario_cpf_usuario )
        REFERENCES t_fnt_usuario ( cpf_usuario );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
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
-- ERRORS                                   3
-- WARNINGS                                 0
