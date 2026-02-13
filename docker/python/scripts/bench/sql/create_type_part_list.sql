CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 date
    ,c4 boolean
    ,c5 bigint
    ,c6 smallint
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 smallint
    ,c4 jsonb
    ,c5 jsonb
    ,c6 timestamp
    ,c7 double precision
    ,c8 char(7)
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 double precision
    ,c4 real
    ,c5 integer
    ,c6 numeric(9,3)
    ,c7 boolean
);

CREATE TYPE bench.typ_t_list4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 uuid
    ,c4 boolean
    ,c5 bigint
    ,c6 real
);

CREATE TYPE bench.typ_t_list5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 char(3)
    ,c4 date
    ,c5 timestamp
    ,c6 timestamp
);

CREATE TYPE bench.typ_t_list6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(5)
    ,c3 char(18)
    ,c4 date
);

CREATE TYPE bench.typ_t_list7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 bytea
    ,c4 boolean
    ,c5 uuid
);

CREATE TYPE bench.typ_t_list8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 bytea
    ,c4 boolean
    ,c5 boolean
);

CREATE TYPE bench.typ_t_list9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(43)
    ,c3 varchar(44)
    ,c4 numeric(10,3)
    ,c5 time
    ,c6 real
    ,c7 uuid
);

CREATE TYPE bench.typ_t_list10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 timestamp
    ,c4 bigint
    ,c5 char(18)
    ,c6 varchar(47)
    ,c7 boolean
);
