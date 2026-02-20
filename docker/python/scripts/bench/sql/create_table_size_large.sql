CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 varchar(44)
    ,c3 smallint
    ,c4 boolean
    ,c5 varchar(21)
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 timestamp
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 varchar(4)
    ,c3 integer
    ,c4 date
);
