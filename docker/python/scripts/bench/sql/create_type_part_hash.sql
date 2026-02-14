CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 real
    ,c4 real
    ,c5 date
    ,c6 time
    ,c7 timestamp
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 time
    ,c4 char(5)
    ,c5 smallint
    ,c6 real
    ,c7 bytea
    ,c8 numeric(6,1)
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 char(2)
    ,c4 uuid
    ,c5 time
    ,c6 varchar(47)
);
