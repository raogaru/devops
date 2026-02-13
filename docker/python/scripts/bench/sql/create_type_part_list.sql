CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 boolean
    ,c4 timestamp
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 boolean
    ,c5 jsonb
    ,c6 smallint
    ,c7 real
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 boolean
);

CREATE TYPE bench.typ_t_list4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 double precision
    ,c4 boolean
    ,c5 text
);

CREATE TYPE bench.typ_t_list5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 double precision
    ,c4 varchar(24)
    ,c5 text
    ,c6 double precision
    ,c7 text
);

CREATE TYPE bench.typ_t_list6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 bigint
    ,c4 bigint
    ,c5 text
    ,c6 timestamp
);

CREATE TYPE bench.typ_t_list7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 timestamp
    ,c4 uuid
    ,c5 integer
    ,c6 numeric(9,0)
    ,c7 char(9)
    ,c8 jsonb
);

CREATE TYPE bench.typ_t_list8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 bytea
    ,c5 integer
);

CREATE TYPE bench.typ_t_list9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 date
    ,c4 integer
    ,c5 smallint
    ,c6 date
    ,c7 char(15)
    ,c8 smallint
);

CREATE TYPE bench.typ_t_list10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 boolean
    ,c4 char(11)
);
