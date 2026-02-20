CREATE TYPE bench.typ_t_large1 (
    id BIGSERIAL
    ,c1 timestamp
    ,c2 bigint
    ,c3 uuid
    ,c4 smallint
);

CREATE TYPE bench.typ_t_large2 (
    id BIGSERIAL
    ,c1 varchar(30)
    ,c2 char(20)
    ,c3 jsonb
    ,c4 char(10)
    ,c5 smallint
);

CREATE TYPE bench.typ_t_large3 (
    id BIGSERIAL
    ,c1 uuid
    ,c2 timestamp
    ,c3 numeric(11,0)
    ,c4 boolean
);
