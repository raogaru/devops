CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 date
    ,c4 real
    ,c5 text
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 double precision
    ,c4 time
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(7)
    ,c3 integer
    ,c4 integer
);
