CREATE TABLE bench.t_small1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 time
    ,c3 real
    ,c4 timestamp
    ,c5 bigint
);

CREATE TABLE bench.t_small2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 integer
    ,c3 time
    ,c4 integer
    ,c5 bytea
    ,c6 char(2)
    ,c7 uuid
    ,c8 date
    ,c9 char(19)
    ,c10 bigint
);

CREATE TABLE bench.t_small3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 varchar(44)
    ,c3 double precision
    ,c4 char(10)
    ,c5 timestamp
);
