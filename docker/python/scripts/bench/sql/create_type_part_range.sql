CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 varchar(5)
    ,c4 boolean
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 smallint
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 char(10)
    ,c3 numeric(7,3)
    ,c4 real
);

CREATE TYPE bench.typ_t_range4 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(48)
    ,c3 double precision
    ,c4 bigint
    ,c5 jsonb
    ,c6 time
);

CREATE TYPE bench.typ_t_range5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 text
);

CREATE TYPE bench.typ_t_range6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 jsonb
);

CREATE TYPE bench.typ_t_range7 (
    id BIGSERIAL
    ,c1 date
    ,c2 double precision
    ,c3 bytea
    ,c4 jsonb
    ,c5 jsonb
    ,c6 timestamp
);

CREATE TYPE bench.typ_t_range8 (
    id BIGSERIAL
    ,c1 date
    ,c2 text
    ,c3 jsonb
);

CREATE TYPE bench.typ_t_range9 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 numeric(7,1)
);

CREATE TYPE bench.typ_t_range10 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 real
);
