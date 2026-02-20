CREATE TABLE bench.t_large1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bigint
    ,c3 uuid
    ,c4 smallint
);

CREATE TABLE bench.t_large2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(30)
    ,c2 char(20)
    ,c3 jsonb
    ,c4 char(10)
    ,c5 smallint
);

CREATE TABLE bench.t_large3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 numeric(11,0)
    ,c4 boolean
);
