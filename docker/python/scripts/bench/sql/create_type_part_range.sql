CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 bigint
    ,c3 integer
    ,c4 uuid
    ,c5 boolean
    ,c6 integer
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(16)
    ,c3 double precision
    ,c4 timestamp
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 timestamp
    ,c3 date
);
