CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 uuid
    ,c4 bytea
    ,c5 date
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 numeric(4,2)
    ,c3 uuid
    ,c4 varchar(6)
    ,c5 varchar(35)
    ,c6 char(3)
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 bigint
    ,c3 numeric(4,2)
    ,c4 varchar(23)
    ,c5 numeric(12,0)
    ,c6 uuid
    ,c7 jsonb
    ,c8 text
    ,c9 boolean
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 bigint
    ,c3 numeric(8,2)
    ,c4 timestamp
    ,c5 boolean
    ,c6 integer
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 timestamp
    ,c4 double precision
    ,c5 numeric(7,1)
    ,c6 timestamp
    ,c7 boolean
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(7,0)
    ,c2 text
    ,c3 smallint
    ,c4 jsonb
    ,c5 uuid
    ,c6 text
    ,c7 numeric(12,2)
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 char(18)
    ,c3 time
    ,c4 double precision
    ,c5 bytea
    ,c6 smallint
    ,c7 numeric(6,2)
    ,c8 text
    ,c9 bytea
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 double precision
    ,c4 time
    ,c5 numeric(11,1)
    ,c6 time
    ,c7 bytea
    ,c8 numeric(10,1)
    ,c9 double precision
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 char(14)
    ,c3 bytea
    ,c4 bytea
    ,c5 boolean
    ,c6 real
    ,c7 bigint
    ,c8 jsonb
    ,c9 numeric(9,0)
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 smallint
    ,c4 text
    ,c5 double precision
);
