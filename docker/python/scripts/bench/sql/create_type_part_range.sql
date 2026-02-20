CREATE TYPE bench.typ_t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 varchar(9)
);

CREATE TYPE bench.typ_t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 text
    ,c4 jsonb
    ,c5 bytea
);

CREATE TYPE bench.typ_t_range3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 double precision
    ,c4 uuid
    ,c5 text
    ,c6 numeric(9,1)
);
