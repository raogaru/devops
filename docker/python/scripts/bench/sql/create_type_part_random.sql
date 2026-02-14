CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(49)
    ,c3 jsonb
    ,c4 smallint
    ,c5 jsonb
    ,c6 real
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 char(14)
    ,c4 char(9)
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 numeric(6,2)
    ,c4 date
    ,c5 bytea
);
