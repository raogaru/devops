CREATE TYPE bench.typ_t_large1 (
    id BIGSERIAL
    ,c1 uuid
    ,c2 uuid
    ,c3 jsonb
    ,c4 integer
    ,c5 boolean
);

CREATE TYPE bench.typ_t_large2 (
    id BIGSERIAL
    ,c1 uuid
    ,c2 boolean
    ,c3 double precision
    ,c4 uuid
    ,c5 char(18)
);

CREATE TYPE bench.typ_t_large3 (
    id BIGSERIAL
    ,c1 text
    ,c2 text
    ,c3 real
    ,c4 bigint
);
