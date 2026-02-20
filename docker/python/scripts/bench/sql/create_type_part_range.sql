CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 jsonb
    ,c4 integer
    ,c5 uuid
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 real
    ,c4 smallint
    ,c5 text
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 bigint
    ,c3 real
    ,c4 smallint
    ,c5 timestamp
);
