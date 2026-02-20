CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 bigint
    ,c4 integer
    ,c5 varchar(37)
    ,c6 numeric(8,0)
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 varchar(30)
    ,c4 text
    ,c5 text
    ,c6 real
    ,c7 uuid
    ,c8 double precision
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 time
    ,c4 smallint
    ,c5 bigint
);
