CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,2)
    ,c2 text
    ,c3 bigint
    ,c4 bytea
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(11,3)
    ,c3 integer
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 time
);

CREATE TABLE bench.t_large4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 numeric(6,1)
    ,c3 jsonb
    ,c4 bytea
);

CREATE TABLE bench.t_large5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 uuid
    ,c3 char(3)
    ,c4 bytea
);

CREATE TABLE bench.t_large6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,0)
    ,c2 double precision
    ,c3 boolean
);

CREATE TABLE bench.t_large7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 uuid
    ,c4 date
);

CREATE TABLE bench.t_large8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 text
    ,c3 char(20)
);

CREATE TABLE bench.t_large9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 timestamp
    ,c3 double precision
);

CREATE TABLE bench.t_large10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 uuid
    ,c3 boolean
    ,c4 uuid
);
