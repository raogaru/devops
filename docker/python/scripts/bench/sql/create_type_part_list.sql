CREATE TYPE bench.typ_t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 text
    ,c4 bigint
);

CREATE TYPE bench.typ_t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 real
    ,c4 double precision
    ,c5 text
);

CREATE TYPE bench.typ_t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 uuid
    ,c4 varchar(30)
    ,c5 varchar(47)
    ,c6 integer
    ,c7 bytea
);
