CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 double precision
    ,c4 integer
    ,c5 varchar(16)
    ,c6 bigint
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 timestamp
    ,c4 numeric(5,3)
    ,c5 real
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 integer
    ,c3 double precision
);

CREATE TYPE bench.typ_t_range4 (
    id BIGSERIAL
    ,c1 date
    ,c2 real
    ,c3 jsonb
    ,c4 bigint
    ,c5 timestamp
);

CREATE TYPE bench.typ_t_range5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(35)
    ,c3 double precision
    ,c4 double precision
    ,c5 real
);

CREATE TYPE bench.typ_t_range6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 smallint
    ,c4 date
    ,c5 date
    ,c6 boolean
);

CREATE TYPE bench.typ_t_range7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 jsonb
    ,c4 timestamp
    ,c5 uuid
);

CREATE TYPE bench.typ_t_range8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 timestamp
);

CREATE TYPE bench.typ_t_range9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(36)
    ,c3 boolean
    ,c4 date
    ,c5 uuid
);

CREATE TYPE bench.typ_t_range10 (
    id BIGSERIAL
    ,c1 date
    ,c2 uuid
    ,c3 timestamp
    ,c4 double precision
    ,c5 char(6)
    ,c6 bigint
);
