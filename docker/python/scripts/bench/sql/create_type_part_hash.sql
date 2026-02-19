CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(2)
    ,c3 integer
    ,c4 numeric(12,0)
    ,c5 smallint
    ,c6 bytea
    ,c7 timestamp
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(42)
    ,c3 date
    ,c4 char(13)
    ,c5 real
    ,c6 varchar(18)
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 text
    ,c4 real
    ,c5 timestamp
);
