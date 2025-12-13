CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 uuid
    ,c3 date
    ,c4 double precision
    ,c5 numeric(12,2)
    ,c6 timestamp
    ,c7 text
    ,c8 uuid
    ,c9 numeric(10,0)
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(32)
    ,c2 date
    ,c3 numeric(6,2)
    ,c4 text
    ,c5 jsonb
    ,c6 bigint
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(1)
    ,c2 varchar(15)
    ,c3 date
    ,c4 bigint
    ,c5 double precision
    ,c6 varchar(14)
    ,c7 text
    ,c8 char(20)
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 boolean
    ,c3 char(8)
    ,c4 text
    ,c5 uuid
    ,c6 double precision
    ,c7 bigint
    ,c8 double precision
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bytea
    ,c3 uuid
    ,c4 text
    ,c5 jsonb
    ,c6 integer
    ,c7 integer
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,2)
    ,c2 smallint
    ,c3 uuid
    ,c4 bytea
    ,c5 varchar(23)
    ,c6 text
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 text
    ,c3 integer
    ,c4 jsonb
    ,c5 time
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 bigint
    ,c3 timestamp
    ,c4 varchar(25)
    ,c5 real
    ,c6 char(11)
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 boolean
    ,c3 numeric(10,1)
    ,c4 jsonb
    ,c5 varchar(19)
    ,c6 numeric(9,2)
    ,c7 integer
    ,c8 real
    ,c9 bigint
    ,c10 text
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(7,2)
    ,c3 char(17)
    ,c4 integer
    ,c5 real
);
