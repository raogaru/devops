CREATE TYPE bench.typ_t_medium1 (
    id BIGSERIAL
    ,c1 varchar(35)
    ,c2 numeric(7,2)
    ,c3 date
    ,c4 varchar(2)
    ,c5 bytea
    ,c6 real
    ,c7 double precision
    ,c8 double precision
    ,c9 boolean
    ,c10 varchar(40)
    ,c11 integer
    ,c12 double precision
    ,c13 bytea
);

CREATE TYPE bench.typ_t_medium2 (
    id BIGSERIAL
    ,c1 jsonb
    ,c2 numeric(9,3)
    ,c3 varchar(2)
    ,c4 smallint
    ,c5 varchar(15)
    ,c6 real
    ,c7 char(18)
    ,c8 jsonb
    ,c9 smallint
    ,c10 real
    ,c11 integer
    ,c12 bigint
    ,c13 timestamp
    ,c14 text
    ,c15 real
    ,c16 jsonb
    ,c17 boolean
);

CREATE TYPE bench.typ_t_medium3 (
    id BIGSERIAL
    ,c1 char(20)
    ,c2 boolean
    ,c3 timestamp
    ,c4 boolean
    ,c5 uuid
    ,c6 boolean
    ,c7 char(2)
    ,c8 uuid
    ,c9 char(3)
    ,c10 varchar(1)
    ,c11 date
    ,c12 time
    ,c13 char(17)
    ,c14 double precision
    ,c15 bytea
    ,c16 char(19)
    ,c17 text
);

CREATE TYPE bench.typ_t_medium4 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 text
    ,c4 bigint
    ,c5 text
    ,c6 char(5)
    ,c7 smallint
    ,c8 integer
    ,c9 boolean
    ,c10 boolean
    ,c11 real
    ,c12 bigint
    ,c13 boolean
    ,c14 double precision
    ,c15 boolean
    ,c16 boolean
    ,c17 numeric(11,3)
);

CREATE TYPE bench.typ_t_medium5 (
    id BIGSERIAL
    ,c1 varchar(23)
    ,c2 text
    ,c3 integer
    ,c4 time
    ,c5 double precision
    ,c6 real
    ,c7 uuid
    ,c8 real
    ,c9 varchar(8)
    ,c10 time
    ,c11 bigint
    ,c12 text
);

CREATE TYPE bench.typ_t_medium6 (
    id BIGSERIAL
    ,c1 char(4)
    ,c2 integer
    ,c3 integer
    ,c4 jsonb
    ,c5 time
    ,c6 text
    ,c7 text
    ,c8 boolean
    ,c9 bigint
    ,c10 date
    ,c11 smallint
    ,c12 char(8)
    ,c13 smallint
    ,c14 boolean
    ,c15 text
);

CREATE TYPE bench.typ_t_medium7 (
    id BIGSERIAL
    ,c1 date
    ,c2 bigint
    ,c3 varchar(33)
    ,c4 date
    ,c5 bytea
    ,c6 numeric(11,2)
    ,c7 bigint
    ,c8 char(18)
    ,c9 time
    ,c10 bigint
    ,c11 text
    ,c12 boolean
    ,c13 bigint
);

CREATE TYPE bench.typ_t_medium8 (
    id BIGSERIAL
    ,c1 varchar(5)
    ,c2 uuid
    ,c3 real
    ,c4 bigint
    ,c5 numeric(6,3)
    ,c6 varchar(27)
    ,c7 jsonb
    ,c8 jsonb
    ,c9 bytea
    ,c10 bytea
    ,c11 time
    ,c12 char(2)
    ,c13 varchar(46)
);

CREATE TYPE bench.typ_t_medium9 (
    id BIGSERIAL
    ,c1 real
    ,c2 timestamp
    ,c3 uuid
    ,c4 smallint
    ,c5 bytea
    ,c6 real
    ,c7 numeric(4,1)
    ,c8 date
    ,c9 varchar(8)
    ,c10 bigint
    ,c11 boolean
    ,c12 bigint
    ,c13 text
    ,c14 boolean
    ,c15 double precision
    ,c16 uuid
);

CREATE TYPE bench.typ_t_medium10 (
    id BIGSERIAL
    ,c1 timestamp
    ,c2 time
    ,c3 double precision
    ,c4 numeric(9,3)
    ,c5 double precision
    ,c6 time
    ,c7 text
    ,c8 time
    ,c9 text
    ,c10 timestamp
    ,c11 numeric(5,2)
    ,c12 boolean
    ,c13 char(15)
    ,c14 smallint
    ,c15 time
    ,c16 char(17)
);
