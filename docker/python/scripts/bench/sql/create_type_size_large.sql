CREATE TYPE bench.typ_t_large1 (
    id BIGSERIAL
    ,c1 smallint
    ,c2 real
    ,c3 double precision
    ,c4 bytea
);

CREATE TYPE bench.typ_t_large2 (
    id BIGSERIAL
    ,c1 bytea
    ,c2 date
    ,c3 integer
);

CREATE TYPE bench.typ_t_large3 (
    id BIGSERIAL
    ,c1 varchar(48)
    ,c2 bytea
    ,c3 boolean
    ,c4 smallint
    ,c5 jsonb
);

CREATE TYPE bench.typ_t_large4 (
    id BIGSERIAL
    ,c1 date
    ,c2 bytea
    ,c3 smallint
);

CREATE TYPE bench.typ_t_large5 (
    id BIGSERIAL
    ,c1 varchar(39)
    ,c2 time
    ,c3 varchar(19)
);

CREATE TYPE bench.typ_t_large6 (
    id BIGSERIAL
    ,c1 varchar(39)
    ,c2 timestamp
    ,c3 char(18)
);

CREATE TYPE bench.typ_t_large7 (
    id BIGSERIAL
    ,c1 date
    ,c2 time
    ,c3 uuid
);

CREATE TYPE bench.typ_t_large8 (
    id BIGSERIAL
    ,c1 uuid
    ,c2 char(20)
    ,c3 date
    ,c4 boolean
    ,c5 jsonb
);

CREATE TYPE bench.typ_t_large9 (
    id BIGSERIAL
    ,c1 jsonb
    ,c2 text
    ,c3 integer
);

CREATE TYPE bench.typ_t_large10 (
    id BIGSERIAL
    ,c1 time
    ,c2 char(19)
    ,c3 real
    ,c4 char(8)
);
