CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 char(6)
    ,c4 boolean
    ,c5 numeric(8,1)
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(38)
    ,c3 text
    ,c4 uuid
    ,c5 bytea
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 integer
    ,c4 time
    ,c5 boolean
    ,c6 time
);
