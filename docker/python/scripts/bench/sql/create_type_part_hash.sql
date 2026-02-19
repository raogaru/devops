CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 integer
    ,c4 date
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(4)
    ,c3 varchar(23)
    ,c4 double precision
    ,c5 smallint
    ,c6 uuid
    ,c7 real
    ,c8 smallint
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 double precision
    ,c4 text
);
