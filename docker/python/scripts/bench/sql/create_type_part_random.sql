CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(10,0)
    ,c3 text
    ,c4 char(14)
    ,c5 numeric(8,1)
    ,c6 varchar(22)
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 uuid
    ,c4 bytea
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 text
    ,c4 bytea
    ,c5 char(19)
);
