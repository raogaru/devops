CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 bigint
    ,c3 double precision
    ,c4 timestamp
    ,c5 jsonb
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 date
    ,c2 time
    ,c3 bytea
    ,c4 date
    ,c5 double precision
    ,c6 smallint
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 char(9)
    ,c4 boolean
);
