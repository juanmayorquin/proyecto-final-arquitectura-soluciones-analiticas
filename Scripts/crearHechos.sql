CREATE TABLE stg1_hechos_comercio (
    id_area      INT,
    area             VARCHAR(255),
    id_producto  INT,
    producto         VARCHAR(255),
    id_elemento  INT,
    elemento         VARCHAR(255),
    id_anio      INT,
    anio             INT,
    unidad           VARCHAR(100),
    valor            NUMERIC,
    simbolo          VARCHAR(50)
);

CREATE TABLE stg2_hechos_comercio (
    id_area      INT,
    id_producto  INT,
    id_elemento  INT,
    id_anio      INT,
    valor        NUMERIC,
    simbolo      VARCHAR(50)
);