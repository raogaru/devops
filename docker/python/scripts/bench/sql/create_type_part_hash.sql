CREATE TYPE bench.typ_t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 uuid
    ,c4 varchar(8)
);

CREATE TYPE bench.typ_t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 smallint
    ,c4 timestamp
    ,c5 jsonb
    ,c6 date
);

CREATE TYPE bench.typ_t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 integer
    ,c4 text
    ,c5 timestamp
    ,c6 text
    ,c7 uuid
);

CREATE TYPE bench.typ_t_hash4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 varchar(31)
    ,c4 smallint
    ,c5 time
    ,c6 numeric(6,2)
);

CREATE TYPE bench.typ_t_hash5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 uuid
    ,c4 date
    ,c5 varchar(20)
);

CREATE TYPE bench.typ_t_hash6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 varchar(19)
    ,c4 time
    ,c5 jsonb
);

CREATE TYPE bench.typ_t_hash7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 bigint
    ,c4 uuid
    ,c5 date
    ,c6 uuid
    ,c7 numeric(5,2)
    ,c8 bigint
);

CREATE TYPE bench.typ_t_hash8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 smallint
    ,c4 double precision
    ,c5 time
    ,c6 smallint
    ,c7 boolean
    ,c8 jsonb
);

CREATE TYPE bench.typ_t_hash9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 timestamp
    ,c4 char(7)
    ,c5 boolean
);

CREATE TYPE bench.typ_t_hash10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 smallint
    ,c4 date
);
