CREATE TYPE bench.typ_t_small1 (
    id BIGSERIAL
    ,c1 bigint
    ,c2 uuid
    ,c3 text
    ,c4 time
    ,c5 uuid
);

CREATE TYPE bench.typ_t_small2 (
    id BIGSERIAL
    ,c1 smallint
    ,c2 varchar(21)
    ,c3 smallint
    ,c4 timestamp
    ,c5 integer
);

CREATE TYPE bench.typ_t_small3 (
    id BIGSERIAL
    ,c1 time
    ,c2 jsonb
    ,c3 jsonb
    ,c4 text
    ,c5 jsonb
    ,c6 char(16)
    ,c7 integer
);
