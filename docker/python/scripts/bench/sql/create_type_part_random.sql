CREATE TYPE bench.typ_t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 boolean
    ,c4 varchar(21)
    ,c5 numeric(11,2)
);

CREATE TYPE bench.typ_t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 time
    ,c4 boolean
    ,c5 uuid
    ,c6 bigint
);

CREATE TYPE bench.typ_t_random3 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(15)
    ,c3 jsonb
);
