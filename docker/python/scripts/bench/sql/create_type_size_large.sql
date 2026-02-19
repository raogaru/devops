CREATE TYPE bench.typ_t_large1 (
    id BIGSERIAL
    ,c1 char(16)
    ,c2 date
    ,c3 date
    ,c4 timestamp
);

CREATE TYPE bench.typ_t_large2 (
    id BIGSERIAL
    ,c1 bigint
    ,c2 bytea
    ,c3 boolean
    ,c4 boolean
    ,c5 varchar(29)
);

CREATE TYPE bench.typ_t_large3 (
    id BIGSERIAL
    ,c1 bigint
    ,c2 smallint
    ,c3 timestamp
    ,c4 boolean
);
