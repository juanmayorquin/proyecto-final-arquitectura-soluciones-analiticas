create table stg1_tiempo_imp
(
    id_ano integer,
    ano integer
);
alter table stg1_principal
    owner to arq;

create table stg2_tiempo_imp
(
    id_ano integer,
    ano integer
);

alter table stg1_tiempo_imp
    owner to arq;

create table tiempo_imp
(
    id_ano integer,
    ano integer
);

alter table stg1_principal
    owner to arq;