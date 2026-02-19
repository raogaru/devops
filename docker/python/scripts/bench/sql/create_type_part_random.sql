CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(5,0)
    ,c3 jsonb
    ,c4 bytea
    ,c5 double precision
    ,c6 timestamp
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 double precision
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 timestamp
);
