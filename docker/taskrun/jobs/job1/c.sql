CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(11)
    ,c2 bigint
    ,c3 boolean
    ,c4 smallint
    ,c5 uuid
    ,c6 boolean
    ,c7 text
    ,c8 date
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 varchar(5)
    ,c3 jsonb
    ,c4 text
    ,c5 boolean
    ,c6 bytea
    ,c7 bytea
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,3)
    ,c2 numeric(7,0)
    ,c3 date
    ,c4 date
    ,c5 bigint
    ,c6 smallint
    ,c7 numeric(8,3)
    ,c8 uuid
    ,c9 integer
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 time
    ,c3 varchar(15)
    ,c4 double precision
    ,c5 char(15)
    ,c6 char(3)
    ,c7 numeric(7,1)
    ,c8 uuid
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 smallint
    ,c3 timestamp
    ,c4 uuid
    ,c5 smallint
    ,c6 integer
    ,c7 real
    ,c8 timestamp
    ,c9 smallint
    ,c10 jsonb
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 jsonb
    ,c3 char(19)
    ,c4 real
    ,c5 integer
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 uuid
    ,c4 boolean
    ,c5 boolean
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 uuid
    ,c3 smallint
    ,c4 numeric(8,0)
    ,c5 time
    ,c6 numeric(8,3)
    ,c7 date
    ,c8 real
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 numeric(6,1)
    ,c3 uuid
    ,c4 char(11)
    ,c5 uuid
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 integer
    ,c3 varchar(37)
    ,c4 jsonb
    ,c5 numeric(11,2)
    ,c6 time
    ,c7 char(11)
    ,c8 real
    ,c9 double precision
    ,c10 bytea
);
