CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 time
    ,c4 integer
    ,c5 boolean
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,3)
    ,c2 text
    ,c3 varchar(25)
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 varchar(50)
    ,c3 bigint
);

CREATE TABLE bench.t_large4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 time
    ,c3 bigint
    ,c4 bigint
    ,c5 numeric(9,2)
);

CREATE TABLE bench.t_large5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 timestamp
    ,c3 numeric(7,2)
);

CREATE TABLE bench.t_large6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 timestamp
    ,c3 integer
);

CREATE TABLE bench.t_large7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 char(14)
    ,c3 boolean
    ,c4 double precision
);

CREATE TABLE bench.t_large8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(17)
    ,c2 jsonb
    ,c3 bigint
);

CREATE TABLE bench.t_large9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(12,0)
    ,c3 boolean
    ,c4 jsonb
    ,c5 timestamp
);

CREATE TABLE bench.t_large10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 smallint
    ,c3 uuid
);
