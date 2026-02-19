CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(37)
    ,c3 timestamp
    ,c4 time
    ,c5 smallint
    ,c6 bigint
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 varchar(24)
    ,c4 text
    ,c5 text
    ,c6 char(7)
    ,c7 numeric(10,0)
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 double precision
    ,c4 smallint
    ,c5 bigint
    ,c6 timestamp
);
