CREATE TYPE bench.typ_t_large1 (
    id BIGSERIAL
    ,c1 numeric(10,2)
    ,c2 text
    ,c3 bigint
    ,c4 bytea
);

CREATE TYPE bench.typ_t_large2 (
    id BIGSERIAL
    ,c1 text
    ,c2 numeric(11,3)
    ,c3 integer
);

CREATE TYPE bench.typ_t_large3 (
    id BIGSERIAL
    ,c1 jsonb
    ,c2 text
    ,c3 time
);

CREATE TYPE bench.typ_t_large4 (
    id BIGSERIAL
    ,c1 boolean
    ,c2 numeric(6,1)
    ,c3 jsonb
    ,c4 bytea
);

CREATE TYPE bench.typ_t_large5 (
    id BIGSERIAL
    ,c1 real
    ,c2 uuid
    ,c3 char(3)
    ,c4 bytea
);

CREATE TYPE bench.typ_t_large6 (
    id BIGSERIAL
    ,c1 numeric(5,0)
    ,c2 double precision
    ,c3 boolean
);

CREATE TYPE bench.typ_t_large7 (
    id BIGSERIAL
    ,c1 boolean
    ,c2 boolean
    ,c3 uuid
    ,c4 date
);

CREATE TYPE bench.typ_t_large8 (
    id BIGSERIAL
    ,c1 bigint
    ,c2 text
    ,c3 char(20)
);

CREATE TYPE bench.typ_t_large9 (
    id BIGSERIAL
    ,c1 bytea
    ,c2 timestamp
    ,c3 double precision
);

CREATE TYPE bench.typ_t_large10 (
    id BIGSERIAL
    ,c1 bytea
    ,c2 uuid
    ,c3 boolean
    ,c4 uuid
);
