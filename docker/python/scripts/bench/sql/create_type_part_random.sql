CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 timestamp
    ,c4 numeric(7,1)
    ,c5 bytea
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 bigint
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 jsonb
    ,c4 bytea
    ,c5 text
);

CREATE TYPE bench.typ_t_random4 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 uuid
    ,c4 integer
    ,c5 uuid
    ,c6 text
);

CREATE TYPE bench.typ_t_random5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 uuid
    ,c4 boolean
    ,c5 date
    ,c6 double precision
);

CREATE TYPE bench.typ_t_random6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 uuid
    ,c4 text
    ,c5 uuid
);

CREATE TYPE bench.typ_t_random7 (
    id BIGSERIAL
    ,c1 date
    ,c2 real
    ,c3 date
);

CREATE TYPE bench.typ_t_random8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 double precision
    ,c4 date
    ,c5 char(7)
    ,c6 time
);

CREATE TYPE bench.typ_t_random9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 date
    ,c4 jsonb
    ,c5 bytea
);

CREATE TYPE bench.typ_t_random10 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 date
);
