CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 integer
    ,c4 jsonb
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 date
    ,c2 uuid
    ,c3 bigint
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(4)
    ,c3 integer
    ,c4 date
    ,c5 boolean
    ,c6 text
);

CREATE TYPE bench.typ_t_random4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 bytea
    ,c4 integer
);

CREATE TYPE bench.typ_t_random5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 time
);

CREATE TYPE bench.typ_t_random6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 boolean
    ,c4 varchar(17)
    ,c5 jsonb
);

CREATE TYPE bench.typ_t_random7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 double precision
    ,c4 varchar(32)
    ,c5 time
    ,c6 timestamp
);

CREATE TYPE bench.typ_t_random8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(8,0)
    ,c3 bigint
);

CREATE TYPE bench.typ_t_random9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 integer
);

CREATE TYPE bench.typ_t_random10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(34)
    ,c3 integer
    ,c4 bigint
    ,c5 char(4)
    ,c6 bigint
);
