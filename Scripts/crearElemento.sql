CREATE TABLE stg1_Elemento (
    id_elemento INT,
    elemento VARCHAR(100) NOT NULL,
    unidad VARCHAR(50) NOT NULL
);

CREATE TABLE stg2_Elemento (
    id_elemento INT,
    elemento VARCHAR(100) NOT NULL,
    unidad VARCHAR(50) NOT NULL
);

CREATE TABLE stg3_elemento (
    id_elemento    INT,
    tipo_comercio  VARCHAR(20) NOT NULL,
    tipo_medida    VARCHAR(20) NOT NULL,
    unidad         VARCHAR(50) NOT NULL
);

CREATE TABLE elemento (
    id_elemento    INT PRIMARY KEY ,
    tipo_comercio  VARCHAR(20) NOT NULL,
    tipo_medida    VARCHAR(20) NOT NULL,
    unidad         VARCHAR(50) NOT NULL
);