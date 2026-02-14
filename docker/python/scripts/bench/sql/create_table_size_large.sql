CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(48)
    ,c2 numeric(9,2)
    ,c3 char(10)
    ,c4 bigint
    ,c5 uuid
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 smallint
    ,c3 char(7)
    ,c4 bigint
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 integer
    ,c3 char(16)
    ,c4 smallint
    ,c5 char(14)
);
