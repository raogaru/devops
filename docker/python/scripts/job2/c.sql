CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 boolean
    ,c3 char(9)
    ,c4 bytea
    ,c5 bigint
    ,c6 real
    ,c7 smallint
    ,c8 uuid
    ,c9 timestamp
    ,c10 double precision
    ,c11 double precision
    ,c12 varchar(1)
    ,c13 bigint
    ,c14 numeric(8,3)
    ,c15 date
    ,c16 uuid
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(7,2)
    ,c3 boolean
    ,c4 real
    ,c5 timestamp
    ,c6 time
    ,c7 bigint
    ,c8 smallint
    ,c9 date
    ,c10 real
    ,c11 smallint
    ,c12 bigint
    ,c13 date
    ,c14 boolean
    ,c15 uuid
    ,c16 jsonb
    ,c17 real
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 real
    ,c3 real
    ,c4 integer
    ,c5 integer
    ,c6 numeric(9,1)
    ,c7 integer
    ,c8 uuid
    ,c9 boolean
    ,c10 text
    ,c11 real
    ,c12 time
    ,c13 char(9)
    ,c14 smallint
    ,c15 jsonb
    ,c16 bytea
    ,c17 integer
    ,c18 text
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 integer
    ,c5 bytea
    ,c6 text
    ,c7 integer
    ,c8 real
    ,c9 numeric(9,2)
    ,c10 boolean
    ,c11 real
    ,c12 numeric(10,1)
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 integer
    ,c3 date
    ,c4 text
    ,c5 date
    ,c6 uuid
    ,c7 text
    ,c8 uuid
    ,c9 char(11)
    ,c10 bigint
    ,c11 numeric(8,0)
    ,c12 char(1)
    ,c13 jsonb
    ,c14 jsonb
    ,c15 smallint
    ,c16 time
    ,c17 integer
    ,c18 integer
    ,c19 real
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 jsonb
    ,c3 numeric(9,3)
    ,c4 time
    ,c5 date
    ,c6 double precision
    ,c7 bigint
    ,c8 double precision
    ,c9 bigint
    ,c10 varchar(18)
    ,c11 time
    ,c12 uuid
    ,c13 uuid
    ,c14 integer
    ,c15 text
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(9)
    ,c3 jsonb
    ,c4 numeric(10,0)
    ,c5 bytea
    ,c6 time
    ,c7 text
    ,c8 smallint
    ,c9 date
    ,c10 boolean
    ,c11 jsonb
    ,c12 bytea
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 boolean
    ,c3 time
    ,c4 bigint
    ,c5 jsonb
    ,c6 varchar(22)
    ,c7 uuid
    ,c8 uuid
    ,c9 numeric(4,0)
    ,c10 varchar(32)
    ,c11 jsonb
    ,c12 text
    ,c13 integer
    ,c14 bytea
    ,c15 bytea
    ,c16 boolean
    ,c17 uuid
    ,c18 bigint
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(15)
    ,c3 real
    ,c4 char(16)
    ,c5 uuid
    ,c6 bytea
    ,c7 date
    ,c8 double precision
    ,c9 char(14)
    ,c10 jsonb
    ,c11 text
    ,c12 boolean
    ,c13 jsonb
    ,c14 numeric(12,2)
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 smallint
    ,c3 varchar(46)
    ,c4 varchar(46)
    ,c5 char(4)
    ,c6 char(10)
    ,c7 bytea
    ,c8 time
    ,c9 integer
    ,c10 jsonb
    ,c11 text
    ,c12 varchar(18)
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 date
    ,c3 time
    ,c4 varchar(4)
    ,c5 uuid
    ,c6 text
    ,c7 double precision
    ,c8 double precision
    ,c9 smallint
    ,c10 numeric(12,1)
    ,c11 jsonb
    ,c12 date
    ,c13 boolean
    ,c14 date
    ,c15 char(3)
    ,c16 boolean
    ,c17 text
    ,c18 bytea
    ,c19 jsonb
    ,c20 timestamp
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 uuid
    ,c4 boolean
    ,c5 varchar(44)
    ,c6 char(12)
    ,c7 timestamp
    ,c8 text
    ,c9 text
    ,c10 smallint
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 jsonb
    ,c3 bigint
    ,c4 varchar(50)
    ,c5 boolean
    ,c6 numeric(9,3)
    ,c7 double precision
    ,c8 double precision
    ,c9 varchar(7)
    ,c10 time
    ,c11 time
    ,c12 date
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 date
    ,c3 date
    ,c4 char(9)
    ,c5 timestamp
    ,c6 real
    ,c7 integer
    ,c8 double precision
    ,c9 varchar(31)
    ,c10 uuid
    ,c11 numeric(10,0)
    ,c12 uuid
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 smallint
    ,c3 time
    ,c4 double precision
    ,c5 text
    ,c6 numeric(7,2)
    ,c7 integer
    ,c8 char(17)
    ,c9 numeric(10,3)
    ,c10 smallint
    ,c11 uuid
    ,c12 numeric(7,3)
    ,c13 bigint
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 integer
    ,c3 text
    ,c4 char(9)
    ,c5 jsonb
    ,c6 text
    ,c7 bytea
    ,c8 numeric(12,0)
    ,c9 numeric(12,1)
    ,c10 jsonb
    ,c11 integer
    ,c12 jsonb
    ,c13 real
    ,c14 varchar(35)
    ,c15 jsonb
    ,c16 smallint
    ,c17 jsonb
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 jsonb
    ,c3 double precision
    ,c4 text
    ,c5 integer
    ,c6 time
    ,c7 text
    ,c8 numeric(11,2)
    ,c9 jsonb
    ,c10 text
    ,c11 date
    ,c12 integer
    ,c13 bigint
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 date
    ,c3 varchar(32)
    ,c4 real
    ,c5 smallint
    ,c6 boolean
    ,c7 varchar(37)
    ,c8 jsonb
    ,c9 bigint
    ,c10 bytea
    ,c11 varchar(19)
    ,c12 timestamp
    ,c13 numeric(11,3)
    ,c14 numeric(11,1)
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 timestamp
    ,c3 varchar(49)
    ,c4 real
    ,c5 bigint
    ,c6 double precision
    ,c7 char(17)
    ,c8 jsonb
    ,c9 numeric(10,3)
    ,c10 smallint
    ,c11 bytea
    ,c12 real
    ,c13 char(5)
    ,c14 uuid
    ,c15 bytea
    ,c16 bytea
    ,c17 uuid
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 smallint
    ,c3 char(16)
    ,c4 varchar(45)
    ,c5 bigint
    ,c6 jsonb
    ,c7 boolean
    ,c8 smallint
    ,c9 integer
    ,c10 uuid
    ,c11 jsonb
    ,c12 boolean
    ,c13 real
    ,c14 boolean
    ,c15 timestamp
    ,c16 bytea
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 date
    ,c3 bytea
    ,c4 smallint
    ,c5 char(1)
    ,c6 double precision
    ,c7 date
    ,c8 bytea
    ,c9 bigint
    ,c10 double precision
    ,c11 bigint
    ,c12 time
    ,c13 uuid
    ,c14 integer
    ,c15 boolean
    ,c16 text
    ,c17 smallint
    ,c18 text
    ,c19 char(18)
    ,c20 date
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 jsonb
    ,c3 varchar(38)
    ,c4 bigint
    ,c5 real
    ,c6 date
    ,c7 jsonb
    ,c8 real
    ,c9 bigint
    ,c10 text
    ,c11 jsonb
    ,c12 date
    ,c13 varchar(40)
    ,c14 uuid
    ,c15 bytea
    ,c16 date
    ,c17 integer
    ,c18 numeric(11,1)
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 char(9)
    ,c3 uuid
    ,c4 bytea
    ,c5 jsonb
    ,c6 bytea
    ,c7 bytea
    ,c8 smallint
    ,c9 double precision
    ,c10 char(2)
    ,c11 time
    ,c12 date
    ,c13 smallint
    ,c14 varchar(47)
    ,c15 char(20)
    ,c16 real
    ,c17 bytea
    ,c18 text
    ,c19 text
    ,c20 uuid
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 timestamp
    ,c4 numeric(5,1)
    ,c5 timestamp
    ,c6 integer
    ,c7 real
    ,c8 char(1)
    ,c9 date
    ,c10 text
    ,c11 timestamp
    ,c12 timestamp
    ,c13 date
    ,c14 date
    ,c15 integer
    ,c16 bytea
    ,c17 time
    ,c18 timestamp
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 smallint
    ,c4 integer
    ,c5 uuid
    ,c6 bytea
    ,c7 uuid
    ,c8 bytea
    ,c9 text
    ,c10 real
    ,c11 timestamp
    ,c12 varchar(16)
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(38)
    ,c2 uuid
    ,c3 text
    ,c4 real
    ,c5 uuid
    ,c6 boolean
    ,c7 time
    ,c8 boolean
    ,c9 real
    ,c10 text
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(18)
    ,c2 uuid
    ,c3 timestamp
    ,c4 double precision
    ,c5 varchar(32)
    ,c6 uuid
    ,c7 timestamp
    ,c8 text
    ,c9 smallint
    ,c10 date
    ,c11 time
    ,c12 boolean
    ,c13 varchar(10)
    ,c14 varchar(8)
    ,c15 real
    ,c16 char(7)
    ,c17 smallint
    ,c18 integer
    ,c19 bigint
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(28)
    ,c2 bigint
    ,c3 bigint
    ,c4 numeric(6,2)
    ,c5 double precision
    ,c6 jsonb
    ,c7 integer
    ,c8 double precision
    ,c9 date
    ,c10 bytea
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 smallint
    ,c3 double precision
    ,c4 date
    ,c5 text
    ,c6 real
    ,c7 date
    ,c8 double precision
    ,c9 real
    ,c10 real
    ,c11 char(6)
    ,c12 numeric(11,1)
    ,c13 double precision
    ,c14 timestamp
    ,c15 varchar(1)
    ,c16 uuid
    ,c17 varchar(29)
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 bigint
    ,c4 numeric(8,3)
    ,c5 numeric(4,1)
    ,c6 uuid
    ,c7 timestamp
    ,c8 integer
    ,c9 text
    ,c10 double precision
    ,c11 text
    ,c12 numeric(11,1)
    ,c13 date
    ,c14 time
    ,c15 real
    ,c16 smallint
    ,c17 timestamp
    ,c18 real
    ,c19 text
    ,c20 smallint
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,3)
    ,c2 integer
    ,c3 uuid
    ,c4 boolean
    ,c5 text
    ,c6 varchar(44)
    ,c7 smallint
    ,c8 char(11)
    ,c9 text
    ,c10 integer
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 smallint
    ,c3 integer
    ,c4 text
    ,c5 char(9)
    ,c6 uuid
    ,c7 integer
    ,c8 char(18)
    ,c9 date
    ,c10 boolean
    ,c11 numeric(4,2)
    ,c12 boolean
    ,c13 time
    ,c14 bigint
    ,c15 boolean
    ,c16 date
    ,c17 double precision
    ,c18 date
    ,c19 time
    ,c20 date
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 char(13)
    ,c3 timestamp
    ,c4 bytea
    ,c5 varchar(22)
    ,c6 real
    ,c7 uuid
    ,c8 jsonb
    ,c9 varchar(16)
    ,c10 time
    ,c11 time
    ,c12 varchar(36)
    ,c13 real
    ,c14 integer
    ,c15 boolean
    ,c16 text
    ,c17 timestamp
    ,c18 uuid
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 real
    ,c3 jsonb
    ,c4 real
    ,c5 uuid
    ,c6 double precision
    ,c7 bytea
    ,c8 varchar(50)
    ,c9 double precision
    ,c10 bigint
    ,c11 numeric(4,3)
    ,c12 uuid
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 boolean
    ,c3 real
    ,c4 varchar(10)
    ,c5 smallint
    ,c6 smallint
    ,c7 date
    ,c8 boolean
    ,c9 varchar(12)
    ,c10 integer
    ,c11 time
    ,c12 uuid
    ,c13 timestamp
    ,c14 integer
    ,c15 integer
    ,c16 numeric(8,2)
    ,c17 timestamp
    ,c18 real
    ,c19 bytea
    ,c20 double precision
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 real
    ,c3 double precision
    ,c4 jsonb
    ,c5 text
    ,c6 double precision
    ,c7 text
    ,c8 integer
    ,c9 smallint
    ,c10 text
    ,c11 integer
    ,c12 boolean
    ,c13 numeric(4,0)
    ,c14 real
    ,c15 smallint
    ,c16 boolean
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 text
    ,c3 date
    ,c4 numeric(7,2)
    ,c5 text
    ,c6 date
    ,c7 real
    ,c8 char(7)
    ,c9 date
    ,c10 real
    ,c11 time
    ,c12 numeric(9,0)
    ,c13 text
    ,c14 jsonb
    ,c15 double precision
    ,c16 date
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 smallint
    ,c3 time
    ,c4 char(11)
    ,c5 real
    ,c6 char(3)
    ,c7 smallint
    ,c8 smallint
    ,c9 timestamp
    ,c10 uuid
    ,c11 real
    ,c12 date
    ,c13 real
    ,c14 smallint
    ,c15 varchar(10)
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(19)
    ,c2 smallint
    ,c3 char(15)
    ,c4 numeric(4,0)
    ,c5 numeric(5,1)
    ,c6 boolean
    ,c7 boolean
    ,c8 text
    ,c9 bigint
    ,c10 char(13)
    ,c11 char(7)
    ,c12 varchar(14)
    ,c13 real
    ,c14 bigint
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bigint
    ,c3 boolean
    ,c4 numeric(12,0)
    ,c5 numeric(4,2)
    ,c6 real
    ,c7 char(12)
    ,c8 smallint
    ,c9 jsonb
    ,c10 date
    ,c11 varchar(22)
    ,c12 uuid
    ,c13 uuid
    ,c14 bigint
    ,c15 timestamp
    ,c16 real
    ,c17 text
    ,c18 char(4)
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 real
    ,c3 bytea
    ,c4 uuid
    ,c5 boolean
    ,c6 uuid
    ,c7 timestamp
    ,c8 time
    ,c9 uuid
    ,c10 double precision
    ,c11 timestamp
    ,c12 timestamp
    ,c13 smallint
    ,c14 uuid
    ,c15 integer
    ,c16 time
    ,c17 integer
    ,c18 varchar(41)
    ,c19 smallint
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 time
    ,c3 numeric(8,1)
    ,c4 time
    ,c5 double precision
    ,c6 varchar(10)
    ,c7 bytea
    ,c8 uuid
    ,c9 boolean
    ,c10 bigint
    ,c11 uuid
    ,c12 bigint
    ,c13 real
    ,c14 varchar(49)
    ,c15 date
    ,c16 timestamp
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 varchar(23)
    ,c3 bigint
    ,c4 numeric(11,2)
    ,c5 jsonb
    ,c6 bigint
    ,c7 bigint
    ,c8 double precision
    ,c9 date
    ,c10 time
    ,c11 time
    ,c12 char(17)
    ,c13 smallint
    ,c14 uuid
    ,c15 real
    ,c16 smallint
    ,c17 double precision
    ,c18 text
    ,c19 uuid
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(18)
    ,c2 varchar(18)
    ,c3 time
    ,c4 timestamp
    ,c5 bytea
    ,c6 time
    ,c7 integer
    ,c8 varchar(11)
    ,c9 varchar(33)
    ,c10 date
    ,c11 smallint
    ,c12 varchar(27)
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 numeric(5,1)
    ,c4 smallint
    ,c5 real
    ,c6 boolean
    ,c7 real
    ,c8 smallint
    ,c9 real
    ,c10 boolean
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(3)
    ,c2 date
    ,c3 boolean
    ,c4 smallint
    ,c5 time
    ,c6 time
    ,c7 numeric(9,3)
    ,c8 numeric(12,2)
    ,c9 real
    ,c10 uuid
    ,c11 char(16)
    ,c12 date
    ,c13 bigint
    ,c14 timestamp
    ,c15 integer
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 boolean
    ,c3 boolean
    ,c4 bigint
    ,c5 bigint
    ,c6 date
    ,c7 bigint
    ,c8 char(15)
    ,c9 jsonb
    ,c10 time
    ,c11 smallint
    ,c12 real
    ,c13 date
    ,c14 date
    ,c15 smallint
    ,c16 integer
    ,c17 time
    ,c18 boolean
    ,c19 char(19)
    ,c20 timestamp
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 char(19)
    ,c3 bigint
    ,c4 bytea
    ,c5 timestamp
    ,c6 numeric(6,0)
    ,c7 date
    ,c8 smallint
    ,c9 text
    ,c10 date
    ,c11 bytea
    ,c12 text
    ,c13 uuid
    ,c14 date
    ,c15 numeric(6,1)
    ,c16 boolean
    ,c17 char(16)
    ,c18 real
    ,c19 bigint
    ,c20 jsonb
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 real
    ,c3 jsonb
    ,c4 double precision
    ,c5 bigint
    ,c6 uuid
    ,c7 char(6)
    ,c8 numeric(6,1)
    ,c9 char(14)
    ,c10 char(11)
    ,c11 time
    ,c12 real
    ,c13 varchar(16)
    ,c14 jsonb
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 char(8)
    ,c3 smallint
    ,c4 integer
    ,c5 varchar(31)
    ,c6 smallint
    ,c7 numeric(8,3)
    ,c8 time
    ,c9 text
    ,c10 char(5)
    ,c11 boolean
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 numeric(6,3)
    ,c3 double precision
    ,c4 jsonb
    ,c5 double precision
    ,c6 bytea
    ,c7 text
    ,c8 jsonb
    ,c9 integer
    ,c10 char(8)
    ,c11 integer
    ,c12 varchar(16)
    ,c13 jsonb
    ,c14 real
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 real
    ,c3 boolean
    ,c4 varchar(37)
    ,c5 boolean
    ,c6 numeric(7,2)
    ,c7 integer
    ,c8 uuid
    ,c9 numeric(9,1)
    ,c10 jsonb
    ,c11 smallint
    ,c12 boolean
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 varchar(42)
    ,c3 varchar(50)
    ,c4 bytea
    ,c5 boolean
    ,c6 text
    ,c7 real
    ,c8 double precision
    ,c9 smallint
    ,c10 char(20)
    ,c11 varchar(37)
    ,c12 char(18)
    ,c13 bytea
    ,c14 text
    ,c15 integer
    ,c16 time
    ,c17 numeric(9,0)
    ,c18 boolean
    ,c19 char(17)
    ,c20 numeric(8,1)
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 bytea
    ,c3 date
    ,c4 bytea
    ,c5 text
    ,c6 bigint
    ,c7 char(6)
    ,c8 jsonb
    ,c9 double precision
    ,c10 smallint
    ,c11 varchar(24)
    ,c12 timestamp
    ,c13 integer
    ,c14 smallint
    ,c15 varchar(16)
    ,c16 jsonb
    ,c17 date
    ,c18 jsonb
    ,c19 boolean
    ,c20 bytea
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 date
    ,c3 bytea
    ,c4 timestamp
    ,c5 real
    ,c6 bigint
    ,c7 smallint
    ,c8 text
    ,c9 smallint
    ,c10 jsonb
    ,c11 numeric(12,1)
    ,c12 real
    ,c13 numeric(12,1)
    ,c14 smallint
    ,c15 double precision
    ,c16 date
    ,c17 double precision
    ,c18 bigint
    ,c19 integer
    ,c20 smallint
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 numeric(12,0)
    ,c4 jsonb
    ,c5 real
    ,c6 bytea
    ,c7 text
    ,c8 boolean
    ,c9 jsonb
    ,c10 char(5)
    ,c11 integer
    ,c12 timestamp
    ,c13 bigint
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 time
    ,c3 smallint
    ,c4 timestamp
    ,c5 smallint
    ,c6 timestamp
    ,c7 varchar(34)
    ,c8 double precision
    ,c9 boolean
    ,c10 integer
    ,c11 char(11)
    ,c12 uuid
    ,c13 bytea
    ,c14 text
    ,c15 uuid
    ,c16 char(11)
    ,c17 jsonb
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(42)
    ,c2 double precision
    ,c3 boolean
    ,c4 time
    ,c5 char(6)
    ,c6 numeric(9,3)
    ,c7 text
    ,c8 integer
    ,c9 double precision
    ,c10 bigint
    ,c11 time
    ,c12 text
    ,c13 bytea
    ,c14 char(7)
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 jsonb
    ,c3 numeric(7,2)
    ,c4 text
    ,c5 boolean
    ,c6 bigint
    ,c7 boolean
    ,c8 real
    ,c9 varchar(19)
    ,c10 double precision
    ,c11 jsonb
    ,c12 text
    ,c13 integer
    ,c14 date
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(13)
    ,c2 char(3)
    ,c3 smallint
    ,c4 smallint
    ,c5 text
    ,c6 text
    ,c7 time
    ,c8 numeric(12,3)
    ,c9 timestamp
    ,c10 uuid
    ,c11 date
    ,c12 boolean
    ,c13 bytea
    ,c14 jsonb
    ,c15 bigint
    ,c16 time
    ,c17 boolean
    ,c18 time
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 boolean
    ,c3 time
    ,c4 integer
    ,c5 integer
    ,c6 boolean
    ,c7 varchar(46)
    ,c8 time
    ,c9 uuid
    ,c10 time
    ,c11 boolean
    ,c12 jsonb
    ,c13 real
    ,c14 time
    ,c15 date
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 varchar(8)
    ,c3 char(18)
    ,c4 integer
    ,c5 timestamp
    ,c6 date
    ,c7 char(20)
    ,c8 bytea
    ,c9 bigint
    ,c10 real
    ,c11 bigint
    ,c12 text
    ,c13 uuid
    ,c14 bigint
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 varchar(41)
    ,c3 bytea
    ,c4 bigint
    ,c5 varchar(12)
    ,c6 bigint
    ,c7 time
    ,c8 numeric(5,0)
    ,c9 numeric(8,1)
    ,c10 smallint
    ,c11 boolean
    ,c12 uuid
    ,c13 date
    ,c14 bytea
    ,c15 numeric(11,3)
    ,c16 date
    ,c17 text
    ,c18 double precision
    ,c19 varchar(27)
    ,c20 date
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 real
    ,c3 numeric(6,0)
    ,c4 text
    ,c5 uuid
    ,c6 integer
    ,c7 uuid
    ,c8 text
    ,c9 boolean
    ,c10 date
    ,c11 uuid
    ,c12 double precision
    ,c13 varchar(23)
    ,c14 jsonb
    ,c15 numeric(11,0)
    ,c16 smallint
    ,c17 uuid
    ,c18 date
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 jsonb
    ,c3 jsonb
    ,c4 smallint
    ,c5 char(4)
    ,c6 bigint
    ,c7 text
    ,c8 date
    ,c9 uuid
    ,c10 double precision
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 varchar(1)
    ,c3 numeric(9,0)
    ,c4 text
    ,c5 timestamp
    ,c6 smallint
    ,c7 char(5)
    ,c8 timestamp
    ,c9 double precision
    ,c10 bytea
    ,c11 uuid
    ,c12 integer
    ,c13 char(10)
    ,c14 boolean
    ,c15 timestamp
    ,c16 integer
    ,c17 integer
    ,c18 bigint
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bytea
    ,c4 smallint
    ,c5 smallint
    ,c6 date
    ,c7 smallint
    ,c8 date
    ,c9 char(20)
    ,c10 bigint
    ,c11 varchar(15)
    ,c12 varchar(12)
    ,c13 smallint
    ,c14 varchar(50)
    ,c15 double precision
    ,c16 boolean
    ,c17 boolean
    ,c18 bytea
    ,c19 integer
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 text
    ,c3 time
    ,c4 date
    ,c5 numeric(5,3)
    ,c6 time
    ,c7 bytea
    ,c8 timestamp
    ,c9 double precision
    ,c10 uuid
    ,c11 char(8)
    ,c12 bigint
    ,c13 bigint
    ,c14 char(19)
    ,c15 double precision
    ,c16 smallint
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 date
    ,c3 char(7)
    ,c4 date
    ,c5 integer
    ,c6 double precision
    ,c7 uuid
    ,c8 jsonb
    ,c9 char(9)
    ,c10 bytea
    ,c11 jsonb
    ,c12 jsonb
    ,c13 numeric(4,3)
    ,c14 varchar(37)
    ,c15 boolean
    ,c16 date
    ,c17 char(16)
    ,c18 timestamp
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(38)
    ,c2 boolean
    ,c3 integer
    ,c4 uuid
    ,c5 uuid
    ,c6 smallint
    ,c7 smallint
    ,c8 time
    ,c9 jsonb
    ,c10 boolean
    ,c11 bigint
    ,c12 text
    ,c13 varchar(49)
    ,c14 double precision
    ,c15 integer
    ,c16 bigint
    ,c17 uuid
    ,c18 boolean
    ,c19 real
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 uuid
    ,c3 jsonb
    ,c4 time
    ,c5 bigint
    ,c6 date
    ,c7 timestamp
    ,c8 bytea
    ,c9 double precision
    ,c10 uuid
    ,c11 text
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,0)
    ,c2 integer
    ,c3 uuid
    ,c4 real
    ,c5 jsonb
    ,c6 smallint
    ,c7 date
    ,c8 bigint
    ,c9 timestamp
    ,c10 integer
    ,c11 bytea
    ,c12 timestamp
    ,c13 jsonb
    ,c14 double precision
    ,c15 numeric(8,3)
    ,c16 integer
    ,c17 double precision
    ,c18 boolean
    ,c19 bytea
    ,c20 bytea
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(44)
    ,c2 timestamp
    ,c3 bigint
    ,c4 text
    ,c5 numeric(9,1)
    ,c6 bigint
    ,c7 smallint
    ,c8 time
    ,c9 boolean
    ,c10 real
    ,c11 date
    ,c12 bigint
    ,c13 double precision
    ,c14 timestamp
    ,c15 uuid
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 date
    ,c3 timestamp
    ,c4 numeric(7,0)
    ,c5 boolean
    ,c6 varchar(42)
    ,c7 timestamp
    ,c8 varchar(48)
    ,c9 date
    ,c10 double precision
    ,c11 bigint
    ,c12 numeric(11,1)
    ,c13 boolean
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 uuid
    ,c3 text
    ,c4 time
    ,c5 date
    ,c6 date
    ,c7 smallint
    ,c8 boolean
    ,c9 numeric(6,0)
    ,c10 real
    ,c11 uuid
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 time
    ,c4 boolean
    ,c5 boolean
    ,c6 time
    ,c7 uuid
    ,c8 bytea
    ,c9 time
    ,c10 integer
    ,c11 double precision
    ,c12 real
    ,c13 bytea
    ,c14 char(8)
    ,c15 time
    ,c16 text
    ,c17 timestamp
    ,c18 uuid
    ,c19 uuid
    ,c20 jsonb
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 real
    ,c3 real
    ,c4 timestamp
    ,c5 text
    ,c6 timestamp
    ,c7 bytea
    ,c8 timestamp
    ,c9 numeric(7,3)
    ,c10 text
    ,c11 double precision
    ,c12 time
    ,c13 date
    ,c14 double precision
    ,c15 real
    ,c16 integer
    ,c17 numeric(10,3)
    ,c18 smallint
    ,c19 bytea
    ,c20 integer
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(4,2)
    ,c3 integer
    ,c4 double precision
    ,c5 bigint
    ,c6 boolean
    ,c7 real
    ,c8 timestamp
    ,c9 date
    ,c10 integer
    ,c11 boolean
    ,c12 bytea
    ,c13 time
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 time
    ,c3 double precision
    ,c4 timestamp
    ,c5 char(2)
    ,c6 boolean
    ,c7 jsonb
    ,c8 double precision
    ,c9 timestamp
    ,c10 text
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(25)
    ,c2 timestamp
    ,c3 varchar(45)
    ,c4 bigint
    ,c5 bigint
    ,c6 uuid
    ,c7 time
    ,c8 bytea
    ,c9 timestamp
    ,c10 bigint
    ,c11 boolean
    ,c12 uuid
    ,c13 text
    ,c14 char(7)
    ,c15 char(7)
    ,c16 time
    ,c17 double precision
    ,c18 text
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 text
    ,c3 timestamp
    ,c4 text
    ,c5 time
    ,c6 char(1)
    ,c7 jsonb
    ,c8 varchar(3)
    ,c9 uuid
    ,c10 varchar(15)
    ,c11 smallint
    ,c12 real
    ,c13 numeric(12,2)
    ,c14 time
    ,c15 bytea
    ,c16 uuid
    ,c17 time
    ,c18 bigint
    ,c19 boolean
    ,c20 integer
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bytea
    ,c3 char(16)
    ,c4 smallint
    ,c5 smallint
    ,c6 boolean
    ,c7 integer
    ,c8 bytea
    ,c9 jsonb
    ,c10 bytea
    ,c11 bigint
    ,c12 boolean
    ,c13 varchar(37)
    ,c14 date
    ,c15 real
    ,c16 date
    ,c17 date
    ,c18 char(2)
    ,c19 text
    ,c20 double precision
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 numeric(8,1)
    ,c3 boolean
    ,c4 text
    ,c5 bytea
    ,c6 integer
    ,c7 timestamp
    ,c8 real
    ,c9 numeric(9,2)
    ,c10 real
    ,c11 timestamp
    ,c12 varchar(17)
    ,c13 text
    ,c14 boolean
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bytea
    ,c3 jsonb
    ,c4 bigint
    ,c5 date
    ,c6 boolean
    ,c7 jsonb
    ,c8 char(13)
    ,c9 smallint
    ,c10 varchar(35)
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 real
    ,c4 smallint
    ,c5 bytea
    ,c6 char(10)
    ,c7 timestamp
    ,c8 numeric(5,0)
    ,c9 char(18)
    ,c10 date
    ,c11 timestamp
    ,c12 double precision
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(12)
    ,c2 numeric(12,0)
    ,c3 real
    ,c4 char(17)
    ,c5 double precision
    ,c6 double precision
    ,c7 bigint
    ,c8 bigint
    ,c9 uuid
    ,c10 real
    ,c11 text
    ,c12 date
    ,c13 time
    ,c14 boolean
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(13)
    ,c2 smallint
    ,c3 numeric(10,0)
    ,c4 time
    ,c5 integer
    ,c6 time
    ,c7 varchar(7)
    ,c8 numeric(4,1)
    ,c9 bytea
    ,c10 bigint
    ,c11 jsonb
    ,c12 real
    ,c13 smallint
    ,c14 numeric(5,0)
    ,c15 numeric(4,3)
    ,c16 text
    ,c17 smallint
    ,c18 varchar(43)
    ,c19 numeric(8,1)
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(1)
    ,c2 real
    ,c3 double precision
    ,c4 varchar(13)
    ,c5 bigint
    ,c6 boolean
    ,c7 time
    ,c8 boolean
    ,c9 bytea
    ,c10 numeric(7,1)
    ,c11 char(12)
    ,c12 numeric(12,1)
    ,c13 double precision
    ,c14 smallint
    ,c15 timestamp
    ,c16 integer
    ,c17 date
    ,c18 char(15)
    ,c19 boolean
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(13)
    ,c2 boolean
    ,c3 char(15)
    ,c4 uuid
    ,c5 varchar(22)
    ,c6 integer
    ,c7 boolean
    ,c8 real
    ,c9 double precision
    ,c10 real
    ,c11 jsonb
    ,c12 integer
    ,c13 bytea
    ,c14 bigint
    ,c15 bytea
    ,c16 bigint
    ,c17 timestamp
    ,c18 date
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 numeric(10,2)
    ,c4 smallint
    ,c5 date
    ,c6 real
    ,c7 char(17)
    ,c8 date
    ,c9 time
    ,c10 integer
    ,c11 numeric(10,3)
    ,c12 text
    ,c13 integer
    ,c14 double precision
    ,c15 bytea
    ,c16 date
    ,c17 timestamp
    ,c18 numeric(7,2)
    ,c19 text
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 double precision
    ,c3 text
    ,c4 uuid
    ,c5 integer
    ,c6 time
    ,c7 bytea
    ,c8 timestamp
    ,c9 char(15)
    ,c10 varchar(50)
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 varchar(32)
    ,c3 real
    ,c4 timestamp
    ,c5 timestamp
    ,c6 char(12)
    ,c7 jsonb
    ,c8 uuid
    ,c9 text
    ,c10 jsonb
    ,c11 date
    ,c12 date
    ,c13 real
    ,c14 jsonb
    ,c15 jsonb
    ,c16 integer
    ,c17 bytea
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 jsonb
    ,c4 double precision
    ,c5 date
    ,c6 timestamp
    ,c7 timestamp
    ,c8 date
    ,c9 boolean
    ,c10 uuid
    ,c11 char(6)
    ,c12 date
    ,c13 bigint
    ,c14 time
    ,c15 time
    ,c16 real
    ,c17 numeric(4,1)
    ,c18 smallint
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 time
    ,c4 real
    ,c5 time
    ,c6 uuid
    ,c7 bigint
    ,c8 timestamp
    ,c9 time
    ,c10 varchar(33)
    ,c11 text
    ,c12 real
    ,c13 bytea
    ,c14 text
    ,c15 timestamp
    ,c16 varchar(30)
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 varchar(30)
    ,c3 varchar(31)
    ,c4 bigint
    ,c5 bytea
    ,c6 timestamp
    ,c7 time
    ,c8 jsonb
    ,c9 varchar(8)
    ,c10 bytea
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 time
    ,c3 char(12)
    ,c4 char(5)
    ,c5 uuid
    ,c6 bytea
    ,c7 boolean
    ,c8 time
    ,c9 boolean
    ,c10 smallint
    ,c11 time
    ,c12 numeric(5,3)
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(38)
    ,c2 char(18)
    ,c3 real
    ,c4 numeric(8,2)
    ,c5 smallint
    ,c6 text
    ,c7 date
    ,c8 bytea
    ,c9 text
    ,c10 char(7)
    ,c11 date
    ,c12 smallint
    ,c13 double precision
    ,c14 real
    ,c15 timestamp
    ,c16 time
    ,c17 double precision
    ,c18 jsonb
    ,c19 char(13)
    ,c20 varchar(27)
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 text
    ,c4 time
    ,c5 timestamp
    ,c6 smallint
    ,c7 timestamp
    ,c8 integer
    ,c9 date
    ,c10 uuid
    ,c11 double precision
    ,c12 smallint
    ,c13 text
    ,c14 timestamp
    ,c15 time
    ,c16 timestamp
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 text
    ,c3 double precision
    ,c4 date
    ,c5 uuid
    ,c6 time
    ,c7 double precision
    ,c8 char(16)
    ,c9 date
    ,c10 text
    ,c11 time
    ,c12 numeric(7,3)
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 bigint
    ,c4 double precision
    ,c5 integer
    ,c6 text
    ,c7 real
    ,c8 double precision
    ,c9 bytea
    ,c10 boolean
    ,c11 numeric(11,1)
    ,c12 smallint
    ,c13 text
    ,c14 uuid
);
