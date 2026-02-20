CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 bytea
    ,c5 timestamp
    ,c6 real
    ,c7 char(7)
    ,c8 char(12)
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 time
    ,c4 date
    ,c5 text
    ,c6 date
    ,c7 varchar(34)
    ,c8 varchar(18)
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 char(13)
    ,c4 double precision
    ,c5 time
    ,c6 double precision
    ,c7 integer
    ,c8 numeric(8,1)
);
