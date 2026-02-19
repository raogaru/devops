CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 time
    ,c3 integer
    ,c4 jsonb
    ,c5 numeric(6,1)
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 double precision
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 uuid
    ,c4 varchar(37)
    ,c5 smallint
    ,c6 real
);
