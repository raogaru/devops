CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 smallint
    ,c4 integer
    ,c5 uuid
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 smallint
    ,c4 varchar(4)
    ,c5 varchar(36)
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 time
    ,c4 char(12)
    ,c5 text
);

CREATE TYPE bench.typ_t_hash4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 bigint
    ,c4 boolean
    ,c5 date
    ,c6 time
    ,c7 boolean
    ,c8 uuid
);

CREATE TYPE bench.typ_t_hash5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 double precision
    ,c4 boolean
    ,c5 char(10)
    ,c6 uuid
);

CREATE TYPE bench.typ_t_hash6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 jsonb
    ,c4 uuid
);

CREATE TYPE bench.typ_t_hash7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 integer
    ,c4 double precision
    ,c5 double precision
    ,c6 date
);

CREATE TYPE bench.typ_t_hash8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 boolean
    ,c4 time
);

CREATE TYPE bench.typ_t_hash9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 numeric(11,0)
    ,c4 char(3)
    ,c5 char(18)
    ,c6 smallint
    ,c7 bigint
    ,c8 real
);

CREATE TYPE bench.typ_t_hash10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 varchar(26)
    ,c4 varchar(2)
    ,c5 uuid
    ,c6 date
    ,c7 numeric(12,2)
);
