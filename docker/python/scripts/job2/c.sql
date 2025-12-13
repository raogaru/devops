CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(19)
    ,c2 bigint
    ,c3 real
    ,c4 bigint
    ,c5 text
    ,c6 timestamp
    ,c7 boolean
    ,c8 text
    ,c9 double precision
    ,c10 date
    ,c11 jsonb
    ,c12 time
    ,c13 double precision
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,2)
    ,c2 text
    ,c3 smallint
    ,c4 text
    ,c5 double precision
    ,c6 time
    ,c7 boolean
    ,c8 date
    ,c9 jsonb
    ,c10 jsonb
    ,c11 integer
    ,c12 double precision
    ,c13 time
    ,c14 date
    ,c15 boolean
    ,c16 integer
    ,c17 timestamp
    ,c18 smallint
    ,c19 real
    ,c20 real
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 varchar(10)
    ,c3 real
    ,c4 uuid
    ,c5 uuid
    ,c6 smallint
    ,c7 smallint
    ,c8 char(12)
    ,c9 smallint
    ,c10 jsonb
    ,c11 smallint
    ,c12 text
    ,c13 jsonb
    ,c14 real
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 double precision
    ,c3 double precision
    ,c4 date
    ,c5 jsonb
    ,c6 varchar(21)
    ,c7 double precision
    ,c8 real
    ,c9 varchar(17)
    ,c10 integer
    ,c11 real
    ,c12 bytea
    ,c13 char(15)
    ,c14 numeric(7,1)
    ,c15 integer
    ,c16 double precision
    ,c17 numeric(9,2)
    ,c18 jsonb
    ,c19 date
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 char(2)
    ,c3 boolean
    ,c4 date
    ,c5 bigint
    ,c6 jsonb
    ,c7 text
    ,c8 jsonb
    ,c9 jsonb
    ,c10 double precision
    ,c11 jsonb
    ,c12 timestamp
    ,c13 numeric(9,1)
    ,c14 uuid
    ,c15 timestamp
    ,c16 uuid
    ,c17 double precision
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 text
    ,c3 timestamp
    ,c4 text
    ,c5 bytea
    ,c6 double precision
    ,c7 real
    ,c8 integer
    ,c9 real
    ,c10 timestamp
    ,c11 time
    ,c12 bigint
    ,c13 timestamp
    ,c14 bytea
    ,c15 char(11)
    ,c16 boolean
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bigint
    ,c3 date
    ,c4 timestamp
    ,c5 real
    ,c6 date
    ,c7 boolean
    ,c8 double precision
    ,c9 real
    ,c10 double precision
    ,c11 bigint
    ,c12 bytea
    ,c13 uuid
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 jsonb
    ,c3 time
    ,c4 varchar(49)
    ,c5 uuid
    ,c6 date
    ,c7 bigint
    ,c8 varchar(45)
    ,c9 timestamp
    ,c10 boolean
    ,c11 double precision
    ,c12 char(3)
    ,c13 text
    ,c14 real
    ,c15 text
    ,c16 char(1)
    ,c17 integer
    ,c18 boolean
    ,c19 char(2)
    ,c20 boolean
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 char(11)
    ,c3 text
    ,c4 time
    ,c5 double precision
    ,c6 time
    ,c7 timestamp
    ,c8 bigint
    ,c9 bytea
    ,c10 text
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 double precision
    ,c3 time
    ,c4 smallint
    ,c5 double precision
    ,c6 time
    ,c7 smallint
    ,c8 timestamp
    ,c9 text
    ,c10 bytea
    ,c11 varchar(42)
    ,c12 timestamp
    ,c13 numeric(7,0)
    ,c14 varchar(41)
    ,c15 real
    ,c16 boolean
    ,c17 real
    ,c18 numeric(8,3)
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(20)
    ,c2 integer
    ,c3 jsonb
    ,c4 varchar(9)
    ,c5 double precision
    ,c6 boolean
    ,c7 jsonb
    ,c8 numeric(9,3)
    ,c9 integer
    ,c10 time
    ,c11 bytea
    ,c12 double precision
    ,c13 smallint
    ,c14 date
    ,c15 jsonb
    ,c16 real
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 integer
    ,c3 date
    ,c4 time
    ,c5 smallint
    ,c6 smallint
    ,c7 uuid
    ,c8 char(8)
    ,c9 boolean
    ,c10 boolean
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,2)
    ,c2 boolean
    ,c3 text
    ,c4 bigint
    ,c5 char(7)
    ,c6 double precision
    ,c7 bigint
    ,c8 double precision
    ,c9 text
    ,c10 char(18)
    ,c11 smallint
    ,c12 text
    ,c13 time
    ,c14 bytea
    ,c15 jsonb
    ,c16 numeric(9,1)
    ,c17 double precision
    ,c18 timestamp
    ,c19 uuid
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(9)
    ,c2 bigint
    ,c3 varchar(33)
    ,c4 double precision
    ,c5 varchar(39)
    ,c6 bigint
    ,c7 char(6)
    ,c8 text
    ,c9 date
    ,c10 timestamp
    ,c11 timestamp
    ,c12 text
    ,c13 text
    ,c14 jsonb
    ,c15 timestamp
    ,c16 integer
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 varchar(42)
    ,c3 integer
    ,c4 time
    ,c5 text
    ,c6 numeric(10,1)
    ,c7 bytea
    ,c8 jsonb
    ,c9 char(8)
    ,c10 text
    ,c11 char(7)
    ,c12 boolean
    ,c13 text
    ,c14 date
    ,c15 timestamp
    ,c16 smallint
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 double precision
    ,c3 char(18)
    ,c4 date
    ,c5 time
    ,c6 varchar(29)
    ,c7 bytea
    ,c8 date
    ,c9 char(16)
    ,c10 smallint
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bigint
    ,c4 varchar(2)
    ,c5 uuid
    ,c6 date
    ,c7 bigint
    ,c8 bigint
    ,c9 timestamp
    ,c10 bytea
    ,c11 timestamp
    ,c12 double precision
    ,c13 timestamp
    ,c14 integer
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 jsonb
    ,c3 real
    ,c4 time
    ,c5 uuid
    ,c6 boolean
    ,c7 timestamp
    ,c8 bigint
    ,c9 jsonb
    ,c10 time
    ,c11 double precision
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 smallint
    ,c3 smallint
    ,c4 varchar(41)
    ,c5 time
    ,c6 bytea
    ,c7 char(6)
    ,c8 boolean
    ,c9 integer
    ,c10 char(6)
    ,c11 time
    ,c12 bytea
    ,c13 jsonb
    ,c14 varchar(26)
    ,c15 bigint
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 varchar(25)
    ,c3 boolean
    ,c4 numeric(9,3)
    ,c5 bytea
    ,c6 boolean
    ,c7 bytea
    ,c8 numeric(6,0)
    ,c9 bigint
    ,c10 integer
    ,c11 boolean
    ,c12 char(15)
    ,c13 char(14)
    ,c14 date
    ,c15 uuid
    ,c16 timestamp
    ,c17 varchar(2)
    ,c18 varchar(19)
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 date
    ,c3 char(3)
    ,c4 date
    ,c5 time
    ,c6 real
    ,c7 smallint
    ,c8 uuid
    ,c9 text
    ,c10 varchar(13)
    ,c11 char(13)
    ,c12 smallint
    ,c13 text
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 text
    ,c3 uuid
    ,c4 double precision
    ,c5 time
    ,c6 jsonb
    ,c7 integer
    ,c8 varchar(46)
    ,c9 boolean
    ,c10 real
    ,c11 boolean
    ,c12 char(6)
    ,c13 boolean
    ,c14 bytea
    ,c15 char(19)
    ,c16 bytea
    ,c17 bytea
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(12)
    ,c2 numeric(9,3)
    ,c3 numeric(12,3)
    ,c4 boolean
    ,c5 varchar(4)
    ,c6 bytea
    ,c7 bytea
    ,c8 bytea
    ,c9 bytea
    ,c10 uuid
    ,c11 text
    ,c12 char(14)
    ,c13 text
    ,c14 double precision
    ,c15 numeric(4,2)
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 timestamp
    ,c3 bytea
    ,c4 bytea
    ,c5 varchar(2)
    ,c6 varchar(1)
    ,c7 uuid
    ,c8 boolean
    ,c9 real
    ,c10 timestamp
    ,c11 integer
    ,c12 smallint
    ,c13 char(12)
    ,c14 smallint
    ,c15 integer
    ,c16 double precision
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 numeric(10,2)
    ,c3 uuid
    ,c4 date
    ,c5 bigint
    ,c6 text
    ,c7 smallint
    ,c8 timestamp
    ,c9 numeric(4,2)
    ,c10 real
    ,c11 uuid
    ,c12 timestamp
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(8)
    ,c2 time
    ,c3 real
    ,c4 time
    ,c5 jsonb
    ,c6 numeric(5,1)
    ,c7 bytea
    ,c8 double precision
    ,c9 text
    ,c10 char(1)
    ,c11 bigint
    ,c12 bytea
    ,c13 real
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 real
    ,c3 time
    ,c4 numeric(8,3)
    ,c5 smallint
    ,c6 date
    ,c7 timestamp
    ,c8 boolean
    ,c9 jsonb
    ,c10 bytea
    ,c11 numeric(12,2)
    ,c12 jsonb
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(22)
    ,c2 jsonb
    ,c3 double precision
    ,c4 integer
    ,c5 varchar(41)
    ,c6 double precision
    ,c7 time
    ,c8 numeric(8,3)
    ,c9 uuid
    ,c10 bigint
    ,c11 uuid
    ,c12 integer
    ,c13 numeric(4,3)
    ,c14 uuid
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 double precision
    ,c3 timestamp
    ,c4 char(10)
    ,c5 jsonb
    ,c6 text
    ,c7 char(17)
    ,c8 text
    ,c9 timestamp
    ,c10 uuid
    ,c11 bigint
    ,c12 double precision
    ,c13 smallint
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 jsonb
    ,c4 bigint
    ,c5 bytea
    ,c6 char(17)
    ,c7 time
    ,c8 bytea
    ,c9 numeric(12,3)
    ,c10 double precision
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 jsonb
    ,c3 numeric(12,3)
    ,c4 bigint
    ,c5 jsonb
    ,c6 varchar(37)
    ,c7 timestamp
    ,c8 smallint
    ,c9 text
    ,c10 char(10)
    ,c11 char(6)
    ,c12 double precision
    ,c13 integer
    ,c14 jsonb
    ,c15 numeric(11,2)
    ,c16 char(1)
    ,c17 date
    ,c18 jsonb
    ,c19 real
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 smallint
    ,c3 varchar(33)
    ,c4 char(9)
    ,c5 char(16)
    ,c6 integer
    ,c7 bytea
    ,c8 uuid
    ,c9 double precision
    ,c10 date
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(6,2)
    ,c3 bytea
    ,c4 bigint
    ,c5 jsonb
    ,c6 uuid
    ,c7 timestamp
    ,c8 jsonb
    ,c9 double precision
    ,c10 real
    ,c11 integer
    ,c12 timestamp
    ,c13 date
    ,c14 integer
    ,c15 boolean
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,2)
    ,c2 double precision
    ,c3 double precision
    ,c4 time
    ,c5 varchar(25)
    ,c6 boolean
    ,c7 real
    ,c8 numeric(11,2)
    ,c9 bytea
    ,c10 text
    ,c11 bigint
    ,c12 real
    ,c13 jsonb
    ,c14 numeric(4,1)
    ,c15 time
    ,c16 time
    ,c17 integer
    ,c18 jsonb
    ,c19 real
    ,c20 time
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 jsonb
    ,c3 numeric(9,1)
    ,c4 varchar(25)
    ,c5 integer
    ,c6 date
    ,c7 jsonb
    ,c8 char(5)
    ,c9 jsonb
    ,c10 bigint
    ,c11 double precision
    ,c12 smallint
    ,c13 smallint
    ,c14 text
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bytea
    ,c3 uuid
    ,c4 integer
    ,c5 numeric(10,3)
    ,c6 numeric(5,3)
    ,c7 double precision
    ,c8 time
    ,c9 numeric(6,1)
    ,c10 jsonb
    ,c11 jsonb
    ,c12 numeric(6,3)
    ,c13 text
    ,c14 jsonb
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,3)
    ,c2 time
    ,c3 smallint
    ,c4 date
    ,c5 time
    ,c6 text
    ,c7 varchar(40)
    ,c8 jsonb
    ,c9 smallint
    ,c10 double precision
    ,c11 date
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bigint
    ,c3 timestamp
    ,c4 date
    ,c5 real
    ,c6 real
    ,c7 jsonb
    ,c8 integer
    ,c9 boolean
    ,c10 integer
    ,c11 integer
    ,c12 double precision
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 integer
    ,c4 numeric(12,1)
    ,c5 smallint
    ,c6 date
    ,c7 uuid
    ,c8 text
    ,c9 time
    ,c10 timestamp
    ,c11 smallint
    ,c12 numeric(5,1)
    ,c13 double precision
    ,c14 numeric(7,2)
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bytea
    ,c3 bytea
    ,c4 real
    ,c5 smallint
    ,c6 timestamp
    ,c7 jsonb
    ,c8 bigint
    ,c9 uuid
    ,c10 bytea
    ,c11 smallint
    ,c12 text
    ,c13 numeric(6,3)
    ,c14 uuid
    ,c15 jsonb
    ,c16 smallint
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 double precision
    ,c4 real
    ,c5 real
    ,c6 date
    ,c7 char(17)
    ,c8 uuid
    ,c9 char(19)
    ,c10 uuid
    ,c11 numeric(12,3)
    ,c12 smallint
    ,c13 time
    ,c14 integer
    ,c15 bytea
    ,c16 jsonb
    ,c17 varchar(25)
    ,c18 double precision
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(31)
    ,c2 bigint
    ,c3 double precision
    ,c4 integer
    ,c5 varchar(11)
    ,c6 text
    ,c7 integer
    ,c8 bigint
    ,c9 text
    ,c10 boolean
    ,c11 numeric(4,3)
    ,c12 date
    ,c13 bytea
    ,c14 varchar(28)
    ,c15 numeric(5,0)
    ,c16 time
    ,c17 timestamp
    ,c18 double precision
    ,c19 text
    ,c20 text
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 time
    ,c4 date
    ,c5 boolean
    ,c6 numeric(12,2)
    ,c7 char(14)
    ,c8 varchar(33)
    ,c9 time
    ,c10 double precision
    ,c11 uuid
    ,c12 uuid
    ,c13 time
    ,c14 varchar(40)
    ,c15 jsonb
    ,c16 jsonb
    ,c17 numeric(8,1)
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 numeric(7,0)
    ,c4 timestamp
    ,c5 bytea
    ,c6 real
    ,c7 char(20)
    ,c8 text
    ,c9 time
    ,c10 jsonb
    ,c11 real
    ,c12 varchar(22)
    ,c13 double precision
    ,c14 integer
    ,c15 date
    ,c16 varchar(38)
    ,c17 uuid
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,1)
    ,c2 bytea
    ,c3 time
    ,c4 timestamp
    ,c5 varchar(41)
    ,c6 time
    ,c7 char(17)
    ,c8 text
    ,c9 varchar(26)
    ,c10 bigint
    ,c11 double precision
    ,c12 bytea
    ,c13 smallint
    ,c14 integer
    ,c15 varchar(26)
    ,c16 timestamp
    ,c17 boolean
    ,c18 time
    ,c19 time
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 date
    ,c3 bytea
    ,c4 text
    ,c5 varchar(40)
    ,c6 bytea
    ,c7 bigint
    ,c8 uuid
    ,c9 boolean
    ,c10 integer
    ,c11 jsonb
    ,c12 jsonb
    ,c13 bigint
    ,c14 smallint
    ,c15 char(8)
    ,c16 smallint
    ,c17 real
    ,c18 char(9)
    ,c19 bytea
    ,c20 char(14)
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 varchar(30)
    ,c3 bigint
    ,c4 bytea
    ,c5 jsonb
    ,c6 double precision
    ,c7 integer
    ,c8 date
    ,c9 uuid
    ,c10 bytea
    ,c11 bytea
    ,c12 varchar(3)
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 real
    ,c4 double precision
    ,c5 char(15)
    ,c6 integer
    ,c7 numeric(11,0)
    ,c8 varchar(20)
    ,c9 varchar(16)
    ,c10 time
    ,c11 bytea
    ,c12 uuid
    ,c13 uuid
    ,c14 numeric(5,3)
    ,c15 boolean
    ,c16 text
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,3)
    ,c2 bigint
    ,c3 jsonb
    ,c4 date
    ,c5 integer
    ,c6 timestamp
    ,c7 bigint
    ,c8 numeric(9,3)
    ,c9 time
    ,c10 char(15)
    ,c11 integer
    ,c12 double precision
    ,c13 text
    ,c14 real
    ,c15 bigint
    ,c16 bigint
    ,c17 char(20)
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 text
    ,c3 numeric(5,3)
    ,c4 text
    ,c5 double precision
    ,c6 timestamp
    ,c7 date
    ,c8 char(18)
    ,c9 uuid
    ,c10 numeric(9,2)
    ,c11 real
    ,c12 timestamp
    ,c13 numeric(10,2)
    ,c14 text
    ,c15 varchar(11)
    ,c16 double precision
    ,c17 real
    ,c18 real
    ,c19 bigint
    ,c20 uuid
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 bytea
    ,c3 bytea
    ,c4 numeric(8,2)
    ,c5 numeric(10,2)
    ,c6 uuid
    ,c7 date
    ,c8 timestamp
    ,c9 jsonb
    ,c10 varchar(16)
    ,c11 varchar(8)
    ,c12 text
    ,c13 bytea
    ,c14 integer
    ,c15 jsonb
    ,c16 date
    ,c17 real
    ,c18 time
    ,c19 double precision
    ,c20 integer
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 char(14)
    ,c4 bytea
    ,c5 smallint
    ,c6 jsonb
    ,c7 integer
    ,c8 bytea
    ,c9 boolean
    ,c10 char(12)
    ,c11 double precision
    ,c12 timestamp
    ,c13 double precision
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 uuid
    ,c3 real
    ,c4 integer
    ,c5 double precision
    ,c6 boolean
    ,c7 bigint
    ,c8 uuid
    ,c9 uuid
    ,c10 bytea
    ,c11 timestamp
    ,c12 integer
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 char(5)
    ,c3 date
    ,c4 jsonb
    ,c5 time
    ,c6 uuid
    ,c7 date
    ,c8 bigint
    ,c9 bigint
    ,c10 time
    ,c11 time
    ,c12 numeric(11,3)
    ,c13 char(17)
    ,c14 char(10)
    ,c15 varchar(27)
    ,c16 time
    ,c17 date
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,1)
    ,c2 integer
    ,c3 double precision
    ,c4 double precision
    ,c5 boolean
    ,c6 numeric(9,1)
    ,c7 uuid
    ,c8 smallint
    ,c9 boolean
    ,c10 uuid
    ,c11 date
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 text
    ,c3 real
    ,c4 text
    ,c5 bytea
    ,c6 smallint
    ,c7 uuid
    ,c8 numeric(5,3)
    ,c9 bytea
    ,c10 bytea
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 boolean
    ,c3 timestamp
    ,c4 boolean
    ,c5 jsonb
    ,c6 bigint
    ,c7 time
    ,c8 varchar(48)
    ,c9 timestamp
    ,c10 uuid
    ,c11 bigint
    ,c12 uuid
    ,c13 time
    ,c14 varchar(25)
    ,c15 jsonb
    ,c16 date
    ,c17 date
    ,c18 jsonb
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 jsonb
    ,c3 numeric(6,1)
    ,c4 varchar(19)
    ,c5 smallint
    ,c6 time
    ,c7 boolean
    ,c8 time
    ,c9 bytea
    ,c10 numeric(4,0)
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 jsonb
    ,c3 jsonb
    ,c4 smallint
    ,c5 time
    ,c6 uuid
    ,c7 double precision
    ,c8 date
    ,c9 integer
    ,c10 real
    ,c11 varchar(5)
    ,c12 bytea
    ,c13 char(15)
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 varchar(37)
    ,c4 integer
    ,c5 boolean
    ,c6 char(14)
    ,c7 boolean
    ,c8 bigint
    ,c9 bytea
    ,c10 char(19)
    ,c11 double precision
    ,c12 text
    ,c13 boolean
    ,c14 bigint
    ,c15 boolean
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 bytea
    ,c3 date
    ,c4 jsonb
    ,c5 jsonb
    ,c6 varchar(7)
    ,c7 bytea
    ,c8 integer
    ,c9 jsonb
    ,c10 varchar(15)
    ,c11 numeric(7,0)
    ,c12 time
    ,c13 bytea
    ,c14 numeric(5,2)
    ,c15 uuid
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 text
    ,c3 time
    ,c4 timestamp
    ,c5 timestamp
    ,c6 double precision
    ,c7 char(9)
    ,c8 numeric(5,0)
    ,c9 char(15)
    ,c10 date
    ,c11 smallint
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 integer
    ,c3 numeric(4,0)
    ,c4 numeric(8,0)
    ,c5 char(10)
    ,c6 uuid
    ,c7 integer
    ,c8 uuid
    ,c9 numeric(5,2)
    ,c10 timestamp
    ,c11 uuid
    ,c12 integer
    ,c13 smallint
    ,c14 numeric(11,1)
    ,c15 bigint
    ,c16 timestamp
    ,c17 text
    ,c18 timestamp
    ,c19 bigint
    ,c20 time
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,2)
    ,c2 double precision
    ,c3 smallint
    ,c4 integer
    ,c5 boolean
    ,c6 boolean
    ,c7 smallint
    ,c8 smallint
    ,c9 jsonb
    ,c10 date
    ,c11 boolean
    ,c12 smallint
    ,c13 varchar(44)
    ,c14 text
    ,c15 text
    ,c16 real
    ,c17 integer
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 jsonb
    ,c3 jsonb
    ,c4 uuid
    ,c5 text
    ,c6 jsonb
    ,c7 boolean
    ,c8 numeric(10,1)
    ,c9 bigint
    ,c10 numeric(11,1)
    ,c11 jsonb
    ,c12 bigint
    ,c13 double precision
    ,c14 smallint
    ,c15 double precision
    ,c16 real
    ,c17 time
    ,c18 text
    ,c19 numeric(10,1)
    ,c20 numeric(7,1)
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 bigint
    ,c3 numeric(5,3)
    ,c4 bigint
    ,c5 date
    ,c6 smallint
    ,c7 timestamp
    ,c8 varchar(13)
    ,c9 text
    ,c10 char(1)
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(11,2)
    ,c3 double precision
    ,c4 real
    ,c5 time
    ,c6 boolean
    ,c7 numeric(12,3)
    ,c8 date
    ,c9 jsonb
    ,c10 timestamp
    ,c11 bytea
    ,c12 real
    ,c13 varchar(10)
    ,c14 text
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(11)
    ,c2 varchar(3)
    ,c3 uuid
    ,c4 time
    ,c5 jsonb
    ,c6 numeric(5,3)
    ,c7 double precision
    ,c8 real
    ,c9 numeric(7,0)
    ,c10 real
    ,c11 time
    ,c12 bytea
    ,c13 smallint
    ,c14 double precision
    ,c15 integer
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,0)
    ,c2 char(1)
    ,c3 time
    ,c4 time
    ,c5 time
    ,c6 bigint
    ,c7 boolean
    ,c8 bytea
    ,c9 uuid
    ,c10 date
    ,c11 bytea
    ,c12 integer
    ,c13 bytea
    ,c14 bytea
    ,c15 integer
    ,c16 char(9)
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 numeric(4,1)
    ,c3 timestamp
    ,c4 double precision
    ,c5 bigint
    ,c6 timestamp
    ,c7 date
    ,c8 bytea
    ,c9 real
    ,c10 date
    ,c11 integer
    ,c12 uuid
    ,c13 smallint
    ,c14 date
    ,c15 bigint
    ,c16 uuid
    ,c17 varchar(49)
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 jsonb
    ,c3 date
    ,c4 text
    ,c5 varchar(15)
    ,c6 char(12)
    ,c7 uuid
    ,c8 date
    ,c9 jsonb
    ,c10 time
    ,c11 uuid
    ,c12 double precision
    ,c13 time
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bigint
    ,c3 smallint
    ,c4 bytea
    ,c5 char(8)
    ,c6 integer
    ,c7 char(3)
    ,c8 varchar(9)
    ,c9 smallint
    ,c10 bigint
    ,c11 smallint
    ,c12 boolean
    ,c13 bigint
    ,c14 jsonb
    ,c15 bigint
    ,c16 char(10)
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 bytea
    ,c3 bytea
    ,c4 char(12)
    ,c5 date
    ,c6 bigint
    ,c7 integer
    ,c8 jsonb
    ,c9 varchar(20)
    ,c10 numeric(4,0)
    ,c11 uuid
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 real
    ,c3 bigint
    ,c4 char(12)
    ,c5 boolean
    ,c6 smallint
    ,c7 uuid
    ,c8 time
    ,c9 jsonb
    ,c10 bytea
    ,c11 varchar(31)
    ,c12 time
    ,c13 date
    ,c14 bytea
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(26)
    ,c2 double precision
    ,c3 timestamp
    ,c4 jsonb
    ,c5 bytea
    ,c6 date
    ,c7 bytea
    ,c8 boolean
    ,c9 time
    ,c10 text
    ,c11 real
    ,c12 bigint
    ,c13 numeric(9,2)
    ,c14 uuid
    ,c15 date
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 boolean
    ,c3 double precision
    ,c4 bigint
    ,c5 timestamp
    ,c6 bigint
    ,c7 numeric(12,2)
    ,c8 bigint
    ,c9 boolean
    ,c10 varchar(15)
    ,c11 real
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(7)
    ,c2 bigint
    ,c3 time
    ,c4 bytea
    ,c5 char(19)
    ,c6 date
    ,c7 date
    ,c8 integer
    ,c9 uuid
    ,c10 timestamp
    ,c11 double precision
    ,c12 numeric(5,2)
    ,c13 integer
    ,c14 numeric(7,0)
    ,c15 text
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 numeric(4,3)
    ,c3 bigint
    ,c4 timestamp
    ,c5 date
    ,c6 double precision
    ,c7 boolean
    ,c8 time
    ,c9 integer
    ,c10 varchar(44)
    ,c11 smallint
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 double precision
    ,c3 time
    ,c4 integer
    ,c5 real
    ,c6 time
    ,c7 date
    ,c8 jsonb
    ,c9 uuid
    ,c10 bytea
    ,c11 uuid
    ,c12 jsonb
    ,c13 char(7)
    ,c14 real
    ,c15 bytea
    ,c16 real
    ,c17 char(12)
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 text
    ,c3 varchar(46)
    ,c4 date
    ,c5 double precision
    ,c6 numeric(7,3)
    ,c7 time
    ,c8 boolean
    ,c9 smallint
    ,c10 text
    ,c11 time
    ,c12 varchar(1)
    ,c13 smallint
    ,c14 date
    ,c15 boolean
    ,c16 date
    ,c17 text
    ,c18 bigint
    ,c19 integer
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 real
    ,c3 time
    ,c4 double precision
    ,c5 smallint
    ,c6 char(17)
    ,c7 varchar(21)
    ,c8 integer
    ,c9 bytea
    ,c10 time
    ,c11 double precision
    ,c12 smallint
    ,c13 real
    ,c14 boolean
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 boolean
    ,c3 uuid
    ,c4 varchar(39)
    ,c5 text
    ,c6 bytea
    ,c7 uuid
    ,c8 double precision
    ,c9 smallint
    ,c10 boolean
    ,c11 text
    ,c12 bytea
    ,c13 char(8)
    ,c14 bytea
    ,c15 integer
    ,c16 numeric(9,2)
    ,c17 char(13)
    ,c18 double precision
    ,c19 date
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 time
    ,c3 smallint
    ,c4 bytea
    ,c5 char(12)
    ,c6 numeric(9,2)
    ,c7 numeric(6,0)
    ,c8 varchar(49)
    ,c9 text
    ,c10 numeric(9,3)
    ,c11 varchar(15)
    ,c12 numeric(5,2)
    ,c13 smallint
    ,c14 date
    ,c15 varchar(46)
    ,c16 bigint
    ,c17 timestamp
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 date
    ,c3 numeric(12,2)
    ,c4 smallint
    ,c5 boolean
    ,c6 timestamp
    ,c7 integer
    ,c8 timestamp
    ,c9 double precision
    ,c10 numeric(12,2)
    ,c11 jsonb
    ,c12 bytea
    ,c13 char(14)
    ,c14 double precision
    ,c15 date
    ,c16 integer
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 numeric(12,3)
    ,c3 numeric(8,1)
    ,c4 double precision
    ,c5 timestamp
    ,c6 text
    ,c7 jsonb
    ,c8 smallint
    ,c9 varchar(43)
    ,c10 smallint
    ,c11 real
    ,c12 boolean
    ,c13 smallint
    ,c14 boolean
    ,c15 text
    ,c16 boolean
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 numeric(9,1)
    ,c4 jsonb
    ,c5 bigint
    ,c6 bigint
    ,c7 time
    ,c8 bytea
    ,c9 real
    ,c10 bigint
    ,c11 uuid
    ,c12 char(16)
    ,c13 timestamp
    ,c14 real
    ,c15 smallint
    ,c16 char(5)
    ,c17 smallint
    ,c18 uuid
    ,c19 double precision
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 text
    ,c4 integer
    ,c5 bigint
    ,c6 integer
    ,c7 boolean
    ,c8 varchar(38)
    ,c9 bytea
    ,c10 date
    ,c11 boolean
    ,c12 boolean
    ,c13 bytea
    ,c14 real
    ,c15 double precision
    ,c16 bytea
    ,c17 char(4)
    ,c18 bytea
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 char(19)
    ,c3 text
    ,c4 time
    ,c5 jsonb
    ,c6 jsonb
    ,c7 jsonb
    ,c8 real
    ,c9 smallint
    ,c10 smallint
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(8,3)
    ,c3 real
    ,c4 time
    ,c5 double precision
    ,c6 char(12)
    ,c7 uuid
    ,c8 boolean
    ,c9 double precision
    ,c10 bytea
    ,c11 real
    ,c12 numeric(6,1)
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 integer
    ,c3 text
    ,c4 text
    ,c5 text
    ,c6 integer
    ,c7 uuid
    ,c8 date
    ,c9 bigint
    ,c10 timestamp
    ,c11 varchar(25)
    ,c12 boolean
    ,c13 double precision
    ,c14 integer
    ,c15 uuid
    ,c16 varchar(36)
    ,c17 numeric(12,1)
    ,c18 varchar(6)
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 timestamp
    ,c4 boolean
    ,c5 varchar(9)
    ,c6 bytea
    ,c7 time
    ,c8 char(2)
    ,c9 bigint
    ,c10 bytea
    ,c11 text
    ,c12 smallint
    ,c13 jsonb
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 time
    ,c3 text
    ,c4 timestamp
    ,c5 bigint
    ,c6 date
    ,c7 time
    ,c8 smallint
    ,c9 varchar(25)
    ,c10 boolean
    ,c11 bigint
    ,c12 char(9)
    ,c13 time
    ,c14 bytea
    ,c15 jsonb
    ,c16 text
    ,c17 double precision
    ,c18 boolean
    ,c19 real
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bytea
    ,c3 smallint
    ,c4 uuid
    ,c5 smallint
    ,c6 text
    ,c7 text
    ,c8 char(16)
    ,c9 uuid
    ,c10 boolean
    ,c11 date
    ,c12 timestamp
    ,c13 numeric(6,0)
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,3)
    ,c2 char(5)
    ,c3 text
    ,c4 integer
    ,c5 bigint
    ,c6 uuid
    ,c7 bigint
    ,c8 varchar(18)
    ,c9 timestamp
    ,c10 varchar(30)
    ,c11 boolean
    ,c12 numeric(9,3)
    ,c13 text
    ,c14 boolean
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 double precision
    ,c3 real
    ,c4 double precision
    ,c5 uuid
    ,c6 char(1)
    ,c7 boolean
    ,c8 bytea
    ,c9 date
    ,c10 time
    ,c11 real
    ,c12 bigint
    ,c13 varchar(21)
    ,c14 smallint
    ,c15 jsonb
    ,c16 real
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(48)
    ,c2 integer
    ,c3 uuid
    ,c4 real
    ,c5 integer
    ,c6 real
    ,c7 real
    ,c8 smallint
    ,c9 timestamp
    ,c10 double precision
    ,c11 real
    ,c12 integer
    ,c13 real
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 date
    ,c4 boolean
    ,c5 real
    ,c6 boolean
    ,c7 uuid
    ,c8 time
    ,c9 integer
    ,c10 real
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,0)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 timestamp
    ,c5 real
    ,c6 varchar(16)
    ,c7 time
    ,c8 char(1)
    ,c9 smallint
    ,c10 jsonb
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 numeric(7,2)
    ,c3 date
    ,c4 varchar(39)
    ,c5 text
    ,c6 varchar(13)
    ,c7 varchar(9)
    ,c8 real
    ,c9 real
    ,c10 char(4)
    ,c11 varchar(12)
    ,c12 timestamp
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 bigint
    ,c3 bytea
    ,c4 real
    ,c5 text
    ,c6 real
    ,c7 time
    ,c8 timestamp
    ,c9 uuid
    ,c10 numeric(12,2)
    ,c11 varchar(24)
    ,c12 smallint
    ,c13 bytea
    ,c14 date
    ,c15 date
    ,c16 smallint
);
