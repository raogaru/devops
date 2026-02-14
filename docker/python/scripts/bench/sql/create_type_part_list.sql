CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(7)
    ,c3 char(5)
    ,c4 smallint
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 varchar(12)
    ,c4 numeric(10,0)
    ,c5 numeric(6,0)
    ,c6 real
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 smallint
    ,c4 timestamp
    ,c5 text
    ,c6 bytea
    ,c7 uuid
    ,c8 date
);
