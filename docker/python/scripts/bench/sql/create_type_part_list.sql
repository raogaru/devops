CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 uuid
    ,c4 bytea
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 bytea
    ,c4 bytea
    ,c5 time
    ,c6 numeric(5,2)
    ,c7 numeric(10,2)
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 real
    ,c4 smallint
    ,c5 uuid
    ,c6 double precision
    ,c7 varchar(8)
    ,c8 integer
);
