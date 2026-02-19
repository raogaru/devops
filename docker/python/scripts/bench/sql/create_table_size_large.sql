CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 date
    ,c3 date
    ,c4 timestamp
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bytea
    ,c3 boolean
    ,c4 boolean
    ,c5 varchar(29)
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 timestamp
    ,c4 boolean
);
