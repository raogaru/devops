CREATE TYPE bench.typ_t_small1 (
    id BIGSERIAL
    ,c1 boolean
    ,c2 date
    ,c3 timestamp
    ,c4 boolean
    ,c5 jsonb
    ,c6 uuid
    ,c7 char(5)
    ,c8 double precision
    ,c9 bytea
);

CREATE TYPE bench.typ_t_small2 (
    id BIGSERIAL
    ,c1 double precision
    ,c2 boolean
    ,c3 char(7)
    ,c4 boolean
    ,c5 numeric(8,0)
    ,c6 real
    ,c7 bigint
    ,c8 jsonb
);

CREATE TYPE bench.typ_t_small3 (
    id BIGSERIAL
    ,c1 uuid
    ,c2 real
    ,c3 numeric(4,3)
    ,c4 bytea
    ,c5 numeric(9,0)
    ,c6 uuid
    ,c7 integer
    ,c8 timestamp
);
