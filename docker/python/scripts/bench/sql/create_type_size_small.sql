CREATE TYPE bench.typ_t_small1 (
    id BIGSERIAL
    ,c1 varchar(20)
    ,c2 smallint
    ,c3 real
    ,c4 timestamp
    ,c5 real
    ,c6 jsonb
    ,c7 bigint
);

CREATE TYPE bench.typ_t_small2 (
    id BIGSERIAL
    ,c1 bigint
    ,c2 time
    ,c3 bytea
    ,c4 varchar(41)
    ,c5 timestamp
    ,c6 numeric(6,3)
    ,c7 varchar(23)
);

CREATE TYPE bench.typ_t_small3 (
    id BIGSERIAL
    ,c1 text
    ,c2 timestamp
    ,c3 real
    ,c4 double precision
    ,c5 boolean
    ,c6 text
);
