CREATE TABLE bench.t_small1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 numeric(6,3)
    ,c3 text
    ,c4 numeric(9,3)
    ,c5 real
    ,c6 smallint
    ,c7 integer
    ,c8 integer
);

CREATE TABLE bench.t_small2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 char(14)
    ,c3 char(20)
    ,c4 numeric(12,3)
    ,c5 bytea
    ,c6 jsonb
    ,c7 integer
    ,c8 real
    ,c9 varchar(19)
);

CREATE TABLE bench.t_small3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 numeric(5,3)
    ,c3 uuid
    ,c4 numeric(6,0)
    ,c5 uuid
    ,c6 boolean
    ,c7 time
    ,c8 boolean
    ,c9 bytea
);
