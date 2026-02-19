CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 time
    ,c3 date
    ,c4 boolean
    ,c5 bigint
    ,c6 char(11)
    ,c7 uuid
    ,c8 char(12)
    ,c9 time
    ,c10 double precision
    ,c11 double precision
    ,c12 boolean
    ,c13 smallint
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 bigint
    ,c4 uuid
    ,c5 uuid
    ,c6 time
    ,c7 numeric(9,0)
    ,c8 numeric(10,1)
    ,c9 numeric(10,3)
    ,c10 text
    ,c11 varchar(9)
    ,c12 double precision
    ,c13 text
    ,c14 char(16)
    ,c15 numeric(12,3)
    ,c16 time
    ,c17 time
    ,c18 boolean
    ,c19 boolean
    ,c20 numeric(11,1)
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 smallint
    ,c3 smallint
    ,c4 real
    ,c5 bigint
    ,c6 time
    ,c7 boolean
    ,c8 text
    ,c9 bigint
    ,c10 integer
    ,c11 jsonb
    ,c12 boolean
    ,c13 bytea
);
