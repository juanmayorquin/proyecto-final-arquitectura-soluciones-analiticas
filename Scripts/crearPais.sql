create table stg1_pais
(
    "Código área" bigint,
    "Área"        varchar(100)
);

CREATE TABLE stg2_pais (
    id_area BIGINT,
    area        VARCHAR(100)
);

CREATE TABLE stg3_pais (
    id_area BIGINT,
    area VARCHAR(100)
);

CREATE TABLE pais (
    id_area BIGINT PRIMARY KEY,
    area VARCHAR(100)
);