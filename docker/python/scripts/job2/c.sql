CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(1)
    ,c2 numeric(6,3)
    ,c3 double precision
    ,c4 uuid
    ,c5 varchar(15)
    ,c6 bytea
    ,c7 uuid
    ,c8 numeric(5,2)
    ,c9 varchar(42)
    ,c10 timestamp
    ,c11 text
    ,c12 real
    ,c13 jsonb
    ,c14 bigint
    ,c15 boolean
    ,c16 smallint
    ,c17 char(17)
    ,c18 varchar(2)
    ,c19 bytea
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 varchar(50)
    ,c3 bytea
    ,c4 text
    ,c5 integer
    ,c6 numeric(12,1)
    ,c7 real
    ,c8 timestamp
    ,c9 numeric(12,0)
    ,c10 numeric(10,1)
    ,c11 bigint
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(18)
    ,c2 uuid
    ,c3 double precision
    ,c4 text
    ,c5 double precision
    ,c6 char(7)
    ,c7 double precision
    ,c8 varchar(21)
    ,c9 uuid
    ,c10 varchar(12)
    ,c11 bigint
    ,c12 bytea
    ,c13 numeric(8,1)
    ,c14 boolean
    ,c15 uuid
    ,c16 varchar(45)
    ,c17 uuid
    ,c18 numeric(10,3)
    ,c19 text
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(8)
    ,c2 varchar(39)
    ,c3 bytea
    ,c4 timestamp
    ,c5 timestamp
    ,c6 time
    ,c7 integer
    ,c8 boolean
    ,c9 uuid
    ,c10 real
    ,c11 real
    ,c12 integer
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 char(12)
    ,c3 bytea
    ,c4 smallint
    ,c5 numeric(7,2)
    ,c6 bigint
    ,c7 smallint
    ,c8 bytea
    ,c9 char(5)
    ,c10 boolean
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 jsonb
    ,c3 boolean
    ,c4 bytea
    ,c5 bytea
    ,c6 numeric(6,0)
    ,c7 time
    ,c8 varchar(6)
    ,c9 uuid
    ,c10 bigint
    ,c11 double precision
    ,c12 numeric(5,1)
    ,c13 integer
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 text
    ,c3 timestamp
    ,c4 numeric(10,2)
    ,c5 numeric(9,3)
    ,c6 real
    ,c7 date
    ,c8 date
    ,c9 integer
    ,c10 numeric(8,0)
    ,c11 bytea
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bigint
    ,c3 boolean
    ,c4 bytea
    ,c5 bytea
    ,c6 boolean
    ,c7 uuid
    ,c8 numeric(9,1)
    ,c9 uuid
    ,c10 smallint
    ,c11 varchar(23)
    ,c12 smallint
    ,c13 date
    ,c14 text
    ,c15 smallint
    ,c16 boolean
    ,c17 text
    ,c18 boolean
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,0)
    ,c2 bigint
    ,c3 uuid
    ,c4 smallint
    ,c5 smallint
    ,c6 double precision
    ,c7 bytea
    ,c8 char(17)
    ,c9 numeric(8,1)
    ,c10 numeric(4,0)
    ,c11 double precision
    ,c12 varchar(26)
    ,c13 real
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(13)
    ,c2 integer
    ,c3 varchar(25)
    ,c4 char(10)
    ,c5 uuid
    ,c6 bytea
    ,c7 uuid
    ,c8 text
    ,c9 varchar(4)
    ,c10 text
    ,c11 time
    ,c12 uuid
    ,c13 jsonb
    ,c14 boolean
    ,c15 real
    ,c16 double precision
    ,c17 real
    ,c18 uuid
    ,c19 real
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 numeric(9,0)
    ,c3 integer
    ,c4 real
    ,c5 smallint
    ,c6 text
    ,c7 numeric(6,3)
    ,c8 integer
    ,c9 date
    ,c10 bytea
    ,c11 bytea
    ,c12 varchar(7)
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 double precision
    ,c3 date
    ,c4 varchar(11)
    ,c5 boolean
    ,c6 timestamp
    ,c7 timestamp
    ,c8 numeric(12,3)
    ,c9 time
    ,c10 uuid
    ,c11 char(9)
    ,c12 real
    ,c13 time
    ,c14 date
    ,c15 double precision
    ,c16 boolean
    ,c17 integer
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 time
    ,c3 text
    ,c4 text
    ,c5 double precision
    ,c6 integer
    ,c7 bigint
    ,c8 smallint
    ,c9 smallint
    ,c10 real
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 time
    ,c3 varchar(22)
    ,c4 numeric(4,1)
    ,c5 time
    ,c6 integer
    ,c7 text
    ,c8 double precision
    ,c9 char(15)
    ,c10 timestamp
    ,c11 smallint
    ,c12 boolean
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 boolean
    ,c3 uuid
    ,c4 uuid
    ,c5 real
    ,c6 integer
    ,c7 smallint
    ,c8 uuid
    ,c9 varchar(22)
    ,c10 char(17)
    ,c11 bigint
    ,c12 jsonb
    ,c13 double precision
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 numeric(6,3)
    ,c3 date
    ,c4 uuid
    ,c5 varchar(7)
    ,c6 double precision
    ,c7 integer
    ,c8 integer
    ,c9 uuid
    ,c10 numeric(7,0)
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,3)
    ,c2 char(1)
    ,c3 bigint
    ,c4 boolean
    ,c5 time
    ,c6 varchar(33)
    ,c7 date
    ,c8 bytea
    ,c9 boolean
    ,c10 char(10)
    ,c11 boolean
    ,c12 char(14)
    ,c13 smallint
    ,c14 uuid
    ,c15 uuid
    ,c16 time
    ,c17 char(8)
    ,c18 varchar(38)
    ,c19 uuid
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 boolean
    ,c4 varchar(4)
    ,c5 bigint
    ,c6 bytea
    ,c7 text
    ,c8 boolean
    ,c9 double precision
    ,c10 integer
    ,c11 jsonb
    ,c12 smallint
    ,c13 double precision
    ,c14 text
    ,c15 time
    ,c16 bigint
    ,c17 integer
    ,c18 double precision
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 char(11)
    ,c3 jsonb
    ,c4 date
    ,c5 text
    ,c6 timestamp
    ,c7 jsonb
    ,c8 bigint
    ,c9 double precision
    ,c10 real
    ,c11 boolean
    ,c12 smallint
    ,c13 varchar(32)
    ,c14 numeric(11,2)
    ,c15 varchar(49)
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 text
    ,c4 integer
    ,c5 date
    ,c6 uuid
    ,c7 uuid
    ,c8 jsonb
    ,c9 boolean
    ,c10 text
    ,c11 text
    ,c12 text
    ,c13 date
    ,c14 boolean
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 double precision
    ,c3 timestamp
    ,c4 numeric(8,1)
    ,c5 varchar(11)
    ,c6 boolean
    ,c7 char(12)
    ,c8 jsonb
    ,c9 double precision
    ,c10 date
    ,c11 double precision
    ,c12 integer
    ,c13 double precision
    ,c14 text
    ,c15 integer
    ,c16 char(8)
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bigint
    ,c3 double precision
    ,c4 char(11)
    ,c5 timestamp
    ,c6 uuid
    ,c7 char(15)
    ,c8 smallint
    ,c9 real
    ,c10 varchar(6)
    ,c11 bytea
    ,c12 jsonb
    ,c13 varchar(15)
    ,c14 char(17)
    ,c15 integer
    ,c16 jsonb
    ,c17 numeric(10,2)
    ,c18 date
    ,c19 varchar(9)
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 double precision
    ,c3 char(11)
    ,c4 date
    ,c5 integer
    ,c6 char(4)
    ,c7 smallint
    ,c8 smallint
    ,c9 boolean
    ,c10 bytea
    ,c11 bigint
    ,c12 date
    ,c13 jsonb
    ,c14 boolean
    ,c15 time
    ,c16 boolean
    ,c17 time
    ,c18 numeric(8,3)
    ,c19 boolean
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 integer
    ,c4 integer
    ,c5 bigint
    ,c6 smallint
    ,c7 integer
    ,c8 uuid
    ,c9 numeric(10,0)
    ,c10 varchar(24)
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(4,2)
    ,c3 jsonb
    ,c4 real
    ,c5 bytea
    ,c6 bigint
    ,c7 double precision
    ,c8 real
    ,c9 time
    ,c10 numeric(8,2)
    ,c11 uuid
    ,c12 text
    ,c13 date
    ,c14 bytea
    ,c15 time
    ,c16 jsonb
    ,c17 real
    ,c18 text
    ,c19 boolean
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bytea
    ,c3 char(14)
    ,c4 text
    ,c5 bigint
    ,c6 numeric(7,3)
    ,c7 date
    ,c8 double precision
    ,c9 numeric(6,2)
    ,c10 smallint
    ,c11 real
    ,c12 char(7)
    ,c13 double precision
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 uuid
    ,c3 integer
    ,c4 varchar(13)
    ,c5 char(1)
    ,c6 integer
    ,c7 bigint
    ,c8 smallint
    ,c9 smallint
    ,c10 varchar(9)
    ,c11 timestamp
    ,c12 time
    ,c13 time
    ,c14 jsonb
    ,c15 date
    ,c16 smallint
    ,c17 double precision
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,2)
    ,c2 bigint
    ,c3 text
    ,c4 boolean
    ,c5 text
    ,c6 real
    ,c7 uuid
    ,c8 integer
    ,c9 bigint
    ,c10 time
    ,c11 boolean
    ,c12 uuid
    ,c13 smallint
    ,c14 date
    ,c15 real
    ,c16 time
    ,c17 text
    ,c18 timestamp
    ,c19 integer
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 integer
    ,c3 date
    ,c4 bytea
    ,c5 time
    ,c6 jsonb
    ,c7 time
    ,c8 real
    ,c9 char(10)
    ,c10 uuid
    ,c11 date
    ,c12 jsonb
    ,c13 time
    ,c14 time
    ,c15 char(19)
    ,c16 date
    ,c17 char(7)
    ,c18 integer
    ,c19 bytea
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 timestamp
    ,c4 integer
    ,c5 text
    ,c6 varchar(35)
    ,c7 bigint
    ,c8 date
    ,c9 boolean
    ,c10 smallint
    ,c11 bigint
    ,c12 integer
    ,c13 uuid
    ,c14 time
    ,c15 date
    ,c16 bytea
    ,c17 timestamp
    ,c18 timestamp
    ,c19 boolean
    ,c20 numeric(8,3)
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bytea
    ,c3 timestamp
    ,c4 text
    ,c5 jsonb
    ,c6 bigint
    ,c7 integer
    ,c8 char(1)
    ,c9 real
    ,c10 char(13)
    ,c11 bytea
    ,c12 timestamp
    ,c13 text
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bytea
    ,c3 date
    ,c4 real
    ,c5 varchar(2)
    ,c6 timestamp
    ,c7 uuid
    ,c8 bytea
    ,c9 boolean
    ,c10 uuid
    ,c11 smallint
    ,c12 time
    ,c13 text
    ,c14 uuid
    ,c15 char(18)
    ,c16 uuid
    ,c17 uuid
    ,c18 bigint
    ,c19 varchar(17)
    ,c20 char(12)
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(6,3)
    ,c3 text
    ,c4 numeric(4,3)
    ,c5 jsonb
    ,c6 bigint
    ,c7 jsonb
    ,c8 jsonb
    ,c9 bigint
    ,c10 double precision
    ,c11 time
    ,c12 timestamp
    ,c13 bigint
    ,c14 real
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 date
    ,c3 smallint
    ,c4 text
    ,c5 text
    ,c6 boolean
    ,c7 double precision
    ,c8 varchar(13)
    ,c9 boolean
    ,c10 char(17)
    ,c11 real
    ,c12 jsonb
    ,c13 uuid
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(44)
    ,c2 time
    ,c3 bytea
    ,c4 numeric(6,1)
    ,c5 uuid
    ,c6 timestamp
    ,c7 uuid
    ,c8 smallint
    ,c9 integer
    ,c10 real
    ,c11 integer
    ,c12 time
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 boolean
    ,c3 integer
    ,c4 uuid
    ,c5 date
    ,c6 double precision
    ,c7 timestamp
    ,c8 real
    ,c9 numeric(5,2)
    ,c10 date
    ,c11 bigint
    ,c12 bytea
    ,c13 bigint
    ,c14 varchar(37)
    ,c15 varchar(4)
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 text
    ,c3 jsonb
    ,c4 time
    ,c5 real
    ,c6 real
    ,c7 integer
    ,c8 bytea
    ,c9 date
    ,c10 bigint
    ,c11 timestamp
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 smallint
    ,c3 date
    ,c4 double precision
    ,c5 char(15)
    ,c6 timestamp
    ,c7 real
    ,c8 time
    ,c9 real
    ,c10 double precision
    ,c11 char(12)
    ,c12 integer
    ,c13 integer
    ,c14 real
    ,c15 double precision
    ,c16 boolean
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 varchar(37)
    ,c3 varchar(29)
    ,c4 text
    ,c5 uuid
    ,c6 date
    ,c7 jsonb
    ,c8 jsonb
    ,c9 real
    ,c10 numeric(4,2)
    ,c11 timestamp
    ,c12 bigint
    ,c13 smallint
    ,c14 bytea
    ,c15 boolean
    ,c16 varchar(9)
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 double precision
    ,c3 timestamp
    ,c4 date
    ,c5 bytea
    ,c6 boolean
    ,c7 smallint
    ,c8 bigint
    ,c9 uuid
    ,c10 varchar(15)
    ,c11 date
    ,c12 timestamp
    ,c13 real
    ,c14 boolean
    ,c15 integer
    ,c16 double precision
    ,c17 integer
    ,c18 time
    ,c19 bytea
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 char(3)
    ,c3 double precision
    ,c4 bigint
    ,c5 timestamp
    ,c6 real
    ,c7 bytea
    ,c8 numeric(10,1)
    ,c9 text
    ,c10 numeric(6,0)
    ,c11 double precision
    ,c12 bytea
    ,c13 jsonb
    ,c14 timestamp
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 char(6)
    ,c3 date
    ,c4 uuid
    ,c5 bytea
    ,c6 date
    ,c7 real
    ,c8 bigint
    ,c9 integer
    ,c10 integer
    ,c11 real
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 bytea
    ,c4 uuid
    ,c5 text
    ,c6 double precision
    ,c7 boolean
    ,c8 double precision
    ,c9 bigint
    ,c10 integer
    ,c11 uuid
    ,c12 text
    ,c13 jsonb
    ,c14 timestamp
    ,c15 double precision
    ,c16 text
    ,c17 varchar(38)
    ,c18 numeric(12,2)
    ,c19 varchar(21)
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(13)
    ,c2 double precision
    ,c3 boolean
    ,c4 text
    ,c5 date
    ,c6 bytea
    ,c7 varchar(8)
    ,c8 timestamp
    ,c9 varchar(28)
    ,c10 smallint
    ,c11 text
    ,c12 char(3)
    ,c13 uuid
    ,c14 bigint
    ,c15 numeric(4,1)
    ,c16 date
    ,c17 text
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 uuid
    ,c3 jsonb
    ,c4 date
    ,c5 real
    ,c6 uuid
    ,c7 integer
    ,c8 bytea
    ,c9 numeric(10,1)
    ,c10 date
    ,c11 double precision
    ,c12 smallint
    ,c13 boolean
    ,c14 varchar(34)
    ,c15 date
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 integer
    ,c3 boolean
    ,c4 real
    ,c5 numeric(9,3)
    ,c6 real
    ,c7 time
    ,c8 varchar(8)
    ,c9 jsonb
    ,c10 time
    ,c11 boolean
    ,c12 timestamp
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 text
    ,c3 real
    ,c4 jsonb
    ,c5 integer
    ,c6 uuid
    ,c7 boolean
    ,c8 numeric(11,0)
    ,c9 smallint
    ,c10 jsonb
    ,c11 boolean
    ,c12 timestamp
    ,c13 date
    ,c14 date
    ,c15 time
    ,c16 boolean
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 smallint
    ,c3 jsonb
    ,c4 boolean
    ,c5 bigint
    ,c6 text
    ,c7 text
    ,c8 smallint
    ,c9 time
    ,c10 char(14)
    ,c11 integer
    ,c12 varchar(18)
    ,c13 double precision
    ,c14 text
    ,c15 numeric(11,0)
    ,c16 uuid
    ,c17 boolean
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 bigint
    ,c4 double precision
    ,c5 char(2)
    ,c6 integer
    ,c7 char(12)
    ,c8 varchar(15)
    ,c9 smallint
    ,c10 jsonb
    ,c11 boolean
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 text
    ,c3 real
    ,c4 numeric(9,3)
    ,c5 char(9)
    ,c6 uuid
    ,c7 timestamp
    ,c8 bigint
    ,c9 varchar(7)
    ,c10 uuid
    ,c11 double precision
    ,c12 numeric(12,3)
    ,c13 char(2)
    ,c14 char(15)
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 timestamp
    ,c3 integer
    ,c4 date
    ,c5 char(12)
    ,c6 double precision
    ,c7 jsonb
    ,c8 timestamp
    ,c9 text
    ,c10 date
    ,c11 smallint
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(10)
    ,c3 integer
    ,c4 time
    ,c5 bigint
    ,c6 integer
    ,c7 bytea
    ,c8 boolean
    ,c9 uuid
    ,c10 timestamp
    ,c11 text
    ,c12 jsonb
    ,c13 bytea
    ,c14 text
    ,c15 bigint
    ,c16 time
    ,c17 bigint
    ,c18 smallint
    ,c19 text
    ,c20 timestamp
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 numeric(7,2)
    ,c4 smallint
    ,c5 integer
    ,c6 double precision
    ,c7 char(3)
    ,c8 uuid
    ,c9 uuid
    ,c10 integer
    ,c11 text
    ,c12 varchar(31)
    ,c13 uuid
    ,c14 smallint
    ,c15 varchar(42)
    ,c16 timestamp
    ,c17 timestamp
    ,c18 time
    ,c19 text
    ,c20 integer
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 date
    ,c3 double precision
    ,c4 jsonb
    ,c5 time
    ,c6 double precision
    ,c7 smallint
    ,c8 smallint
    ,c9 uuid
    ,c10 char(17)
    ,c11 text
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 time
    ,c3 numeric(6,0)
    ,c4 bytea
    ,c5 boolean
    ,c6 text
    ,c7 time
    ,c8 bigint
    ,c9 smallint
    ,c10 real
    ,c11 char(6)
    ,c12 date
    ,c13 real
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 time
    ,c3 smallint
    ,c4 date
    ,c5 bytea
    ,c6 char(9)
    ,c7 char(17)
    ,c8 uuid
    ,c9 timestamp
    ,c10 timestamp
    ,c11 bigint
    ,c12 smallint
    ,c13 text
    ,c14 text
    ,c15 numeric(4,3)
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 date
    ,c4 text
    ,c5 char(10)
    ,c6 jsonb
    ,c7 time
    ,c8 time
    ,c9 char(4)
    ,c10 jsonb
    ,c11 integer
    ,c12 varchar(8)
    ,c13 jsonb
    ,c14 smallint
    ,c15 boolean
    ,c16 boolean
    ,c17 time
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 bigint
    ,c3 varchar(6)
    ,c4 integer
    ,c5 integer
    ,c6 boolean
    ,c7 smallint
    ,c8 smallint
    ,c9 date
    ,c10 date
    ,c11 real
    ,c12 jsonb
    ,c13 numeric(11,2)
    ,c14 bytea
    ,c15 date
    ,c16 char(12)
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 boolean
    ,c4 uuid
    ,c5 timestamp
    ,c6 numeric(4,0)
    ,c7 double precision
    ,c8 boolean
    ,c9 date
    ,c10 double precision
    ,c11 varchar(21)
    ,c12 double precision
    ,c13 real
    ,c14 smallint
    ,c15 time
    ,c16 uuid
    ,c17 real
    ,c18 text
    ,c19 numeric(10,0)
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 text
    ,c3 bytea
    ,c4 real
    ,c5 integer
    ,c6 bytea
    ,c7 bytea
    ,c8 integer
    ,c9 jsonb
    ,c10 text
    ,c11 time
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 bigint
    ,c3 uuid
    ,c4 integer
    ,c5 text
    ,c6 uuid
    ,c7 jsonb
    ,c8 bytea
    ,c9 jsonb
    ,c10 real
    ,c11 time
    ,c12 uuid
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(11,0)
    ,c3 time
    ,c4 smallint
    ,c5 varchar(27)
    ,c6 char(1)
    ,c7 integer
    ,c8 numeric(4,2)
    ,c9 varchar(15)
    ,c10 smallint
    ,c11 text
    ,c12 bigint
    ,c13 char(7)
    ,c14 bigint
    ,c15 smallint
    ,c16 date
    ,c17 bigint
    ,c18 real
    ,c19 time
    ,c20 double precision
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 numeric(5,2)
    ,c3 real
    ,c4 bigint
    ,c5 real
    ,c6 boolean
    ,c7 double precision
    ,c8 double precision
    ,c9 varchar(24)
    ,c10 double precision
    ,c11 char(4)
    ,c12 bigint
    ,c13 real
    ,c14 time
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 smallint
    ,c3 double precision
    ,c4 real
    ,c5 jsonb
    ,c6 double precision
    ,c7 time
    ,c8 integer
    ,c9 timestamp
    ,c10 char(1)
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 double precision
    ,c3 bytea
    ,c4 date
    ,c5 smallint
    ,c6 uuid
    ,c7 numeric(10,1)
    ,c8 boolean
    ,c9 text
    ,c10 smallint
    ,c11 boolean
    ,c12 real
    ,c13 numeric(6,1)
    ,c14 varchar(21)
    ,c15 time
    ,c16 jsonb
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(38)
    ,c2 jsonb
    ,c3 uuid
    ,c4 smallint
    ,c5 bytea
    ,c6 text
    ,c7 date
    ,c8 text
    ,c9 integer
    ,c10 timestamp
    ,c11 time
    ,c12 text
    ,c13 time
    ,c14 uuid
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 uuid
    ,c3 integer
    ,c4 uuid
    ,c5 bigint
    ,c6 jsonb
    ,c7 boolean
    ,c8 smallint
    ,c9 uuid
    ,c10 double precision
    ,c11 char(1)
    ,c12 boolean
    ,c13 double precision
    ,c14 double precision
    ,c15 date
    ,c16 text
    ,c17 time
    ,c18 bytea
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 boolean
    ,c3 jsonb
    ,c4 date
    ,c5 text
    ,c6 char(14)
    ,c7 numeric(12,1)
    ,c8 double precision
    ,c9 boolean
    ,c10 char(14)
    ,c11 bigint
    ,c12 char(20)
    ,c13 jsonb
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(7,3)
    ,c3 time
    ,c4 date
    ,c5 double precision
    ,c6 jsonb
    ,c7 bigint
    ,c8 time
    ,c9 real
    ,c10 date
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(25)
    ,c2 char(19)
    ,c3 time
    ,c4 integer
    ,c5 char(8)
    ,c6 date
    ,c7 boolean
    ,c8 jsonb
    ,c9 real
    ,c10 varchar(5)
    ,c11 jsonb
    ,c12 date
    ,c13 char(14)
    ,c14 uuid
    ,c15 date
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 time
    ,c3 date
    ,c4 char(18)
    ,c5 real
    ,c6 date
    ,c7 numeric(7,1)
    ,c8 integer
    ,c9 smallint
    ,c10 date
    ,c11 timestamp
    ,c12 real
    ,c13 real
    ,c14 double precision
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 numeric(12,1)
    ,c4 integer
    ,c5 date
    ,c6 timestamp
    ,c7 numeric(10,2)
    ,c8 real
    ,c9 numeric(5,2)
    ,c10 jsonb
    ,c11 bigint
    ,c12 uuid
    ,c13 char(14)
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 date
    ,c4 boolean
    ,c5 time
    ,c6 bigint
    ,c7 boolean
    ,c8 boolean
    ,c9 bigint
    ,c10 boolean
    ,c11 bigint
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 text
    ,c3 real
    ,c4 timestamp
    ,c5 real
    ,c6 integer
    ,c7 double precision
    ,c8 varchar(40)
    ,c9 bigint
    ,c10 double precision
    ,c11 jsonb
    ,c12 boolean
    ,c13 timestamp
    ,c14 uuid
    ,c15 numeric(9,0)
    ,c16 boolean
    ,c17 date
    ,c18 real
    ,c19 uuid
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(18)
    ,c2 timestamp
    ,c3 numeric(11,0)
    ,c4 timestamp
    ,c5 timestamp
    ,c6 date
    ,c7 integer
    ,c8 double precision
    ,c9 char(3)
    ,c10 bigint
    ,c11 double precision
    ,c12 char(9)
    ,c13 bytea
    ,c14 bigint
    ,c15 timestamp
    ,c16 uuid
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bytea
    ,c3 timestamp
    ,c4 smallint
    ,c5 time
    ,c6 boolean
    ,c7 boolean
    ,c8 jsonb
    ,c9 varchar(49)
    ,c10 jsonb
    ,c11 numeric(9,1)
    ,c12 numeric(6,0)
    ,c13 uuid
    ,c14 time
    ,c15 char(2)
    ,c16 bytea
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 date
    ,c3 smallint
    ,c4 jsonb
    ,c5 boolean
    ,c6 numeric(4,0)
    ,c7 bytea
    ,c8 smallint
    ,c9 uuid
    ,c10 integer
    ,c11 varchar(6)
    ,c12 integer
    ,c13 timestamp
    ,c14 timestamp
    ,c15 jsonb
    ,c16 date
    ,c17 double precision
    ,c18 bytea
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 double precision
    ,c4 time
    ,c5 text
    ,c6 double precision
    ,c7 smallint
    ,c8 time
    ,c9 date
    ,c10 jsonb
    ,c11 integer
    ,c12 double precision
    ,c13 smallint
    ,c14 bytea
    ,c15 bytea
    ,c16 jsonb
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(10)
    ,c2 time
    ,c3 real
    ,c4 real
    ,c5 varchar(47)
    ,c6 integer
    ,c7 jsonb
    ,c8 date
    ,c9 timestamp
    ,c10 smallint
    ,c11 char(12)
    ,c12 date
    ,c13 timestamp
    ,c14 bigint
    ,c15 char(4)
    ,c16 text
    ,c17 uuid
    ,c18 smallint
    ,c19 double precision
    ,c20 real
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 varchar(16)
    ,c3 uuid
    ,c4 uuid
    ,c5 smallint
    ,c6 integer
    ,c7 double precision
    ,c8 integer
    ,c9 uuid
    ,c10 uuid
    ,c11 jsonb
    ,c12 double precision
    ,c13 varchar(44)
    ,c14 boolean
    ,c15 timestamp
    ,c16 time
    ,c17 bytea
    ,c18 timestamp
    ,c19 integer
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 date
    ,c3 date
    ,c4 timestamp
    ,c5 bytea
    ,c6 varchar(13)
    ,c7 real
    ,c8 bigint
    ,c9 timestamp
    ,c10 time
    ,c11 bytea
    ,c12 smallint
    ,c13 text
    ,c14 timestamp
    ,c15 smallint
    ,c16 bytea
    ,c17 double precision
    ,c18 bigint
    ,c19 text
    ,c20 bytea
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,1)
    ,c2 varchar(43)
    ,c3 real
    ,c4 jsonb
    ,c5 bytea
    ,c6 jsonb
    ,c7 jsonb
    ,c8 text
    ,c9 uuid
    ,c10 boolean
    ,c11 timestamp
    ,c12 double precision
    ,c13 boolean
    ,c14 boolean
    ,c15 text
    ,c16 time
    ,c17 integer
    ,c18 jsonb
    ,c19 timestamp
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 double precision
    ,c3 smallint
    ,c4 numeric(4,2)
    ,c5 timestamp
    ,c6 numeric(11,1)
    ,c7 jsonb
    ,c8 integer
    ,c9 varchar(1)
    ,c10 bytea
    ,c11 numeric(8,1)
    ,c12 smallint
    ,c13 jsonb
    ,c14 char(17)
    ,c15 double precision
    ,c16 timestamp
    ,c17 char(16)
    ,c18 boolean
    ,c19 real
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 varchar(9)
    ,c3 boolean
    ,c4 varchar(37)
    ,c5 time
    ,c6 smallint
    ,c7 bigint
    ,c8 varchar(23)
    ,c9 numeric(8,1)
    ,c10 boolean
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,0)
    ,c2 varchar(33)
    ,c3 numeric(8,2)
    ,c4 numeric(12,1)
    ,c5 bigint
    ,c6 boolean
    ,c7 integer
    ,c8 time
    ,c9 timestamp
    ,c10 real
    ,c11 double precision
    ,c12 uuid
    ,c13 text
    ,c14 bigint
    ,c15 bytea
    ,c16 timestamp
    ,c17 jsonb
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 integer
    ,c4 time
    ,c5 bytea
    ,c6 boolean
    ,c7 boolean
    ,c8 time
    ,c9 date
    ,c10 boolean
    ,c11 bytea
    ,c12 smallint
    ,c13 real
    ,c14 real
    ,c15 uuid
    ,c16 text
    ,c17 real
    ,c18 varchar(47)
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 integer
    ,c3 boolean
    ,c4 boolean
    ,c5 bigint
    ,c6 double precision
    ,c7 uuid
    ,c8 char(8)
    ,c9 numeric(8,3)
    ,c10 boolean
    ,c11 varchar(3)
    ,c12 text
    ,c13 bytea
    ,c14 jsonb
    ,c15 bigint
    ,c16 text
    ,c17 double precision
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 date
    ,c4 timestamp
    ,c5 date
    ,c6 boolean
    ,c7 date
    ,c8 boolean
    ,c9 varchar(2)
    ,c10 bigint
    ,c11 smallint
    ,c12 jsonb
    ,c13 timestamp
    ,c14 text
    ,c15 char(6)
    ,c16 bigint
    ,c17 timestamp
    ,c18 numeric(8,1)
    ,c19 integer
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bigint
    ,c3 numeric(10,0)
    ,c4 boolean
    ,c5 double precision
    ,c6 integer
    ,c7 time
    ,c8 double precision
    ,c9 real
    ,c10 date
    ,c11 integer
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 numeric(6,3)
    ,c3 date
    ,c4 text
    ,c5 numeric(4,0)
    ,c6 bytea
    ,c7 integer
    ,c8 jsonb
    ,c9 time
    ,c10 timestamp
    ,c11 double precision
    ,c12 real
    ,c13 date
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,0)
    ,c2 double precision
    ,c3 smallint
    ,c4 date
    ,c5 numeric(7,0)
    ,c6 double precision
    ,c7 bigint
    ,c8 char(1)
    ,c9 integer
    ,c10 char(8)
    ,c11 text
    ,c12 varchar(32)
    ,c13 timestamp
    ,c14 timestamp
    ,c15 numeric(9,0)
    ,c16 varchar(22)
    ,c17 timestamp
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,3)
    ,c2 real
    ,c3 real
    ,c4 date
    ,c5 jsonb
    ,c6 bytea
    ,c7 timestamp
    ,c8 boolean
    ,c9 time
    ,c10 timestamp
    ,c11 jsonb
    ,c12 smallint
    ,c13 text
    ,c14 bytea
    ,c15 real
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 bytea
    ,c3 numeric(12,1)
    ,c4 real
    ,c5 boolean
    ,c6 boolean
    ,c7 varchar(1)
    ,c8 timestamp
    ,c9 bytea
    ,c10 bigint
    ,c11 char(9)
    ,c12 real
    ,c13 bigint
    ,c14 varchar(20)
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 jsonb
    ,c4 real
    ,c5 numeric(6,0)
    ,c6 jsonb
    ,c7 bytea
    ,c8 char(2)
    ,c9 numeric(10,2)
    ,c10 bytea
    ,c11 numeric(7,2)
    ,c12 timestamp
    ,c13 uuid
    ,c14 boolean
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 varchar(16)
    ,c3 char(7)
    ,c4 varchar(41)
    ,c5 varchar(4)
    ,c6 smallint
    ,c7 smallint
    ,c8 numeric(6,3)
    ,c9 char(4)
    ,c10 text
    ,c11 date
    ,c12 double precision
    ,c13 jsonb
    ,c14 double precision
    ,c15 char(3)
    ,c16 smallint
    ,c17 boolean
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,2)
    ,c2 smallint
    ,c3 time
    ,c4 boolean
    ,c5 date
    ,c6 time
    ,c7 boolean
    ,c8 char(7)
    ,c9 uuid
    ,c10 date
    ,c11 numeric(11,3)
    ,c12 jsonb
    ,c13 real
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 char(20)
    ,c3 bytea
    ,c4 smallint
    ,c5 char(7)
    ,c6 integer
    ,c7 jsonb
    ,c8 jsonb
    ,c9 date
    ,c10 boolean
    ,c11 numeric(9,0)
    ,c12 numeric(7,3)
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 varchar(36)
    ,c3 uuid
    ,c4 date
    ,c5 text
    ,c6 varchar(30)
    ,c7 bigint
    ,c8 smallint
    ,c9 date
    ,c10 integer
    ,c11 boolean
    ,c12 bigint
    ,c13 time
    ,c14 jsonb
    ,c15 date
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bigint
    ,c3 time
    ,c4 uuid
    ,c5 numeric(11,3)
    ,c6 smallint
    ,c7 integer
    ,c8 numeric(10,1)
    ,c9 char(18)
    ,c10 jsonb
    ,c11 boolean
    ,c12 time
    ,c13 date
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bytea
    ,c3 integer
    ,c4 text
    ,c5 jsonb
    ,c6 numeric(9,1)
    ,c7 real
    ,c8 time
    ,c9 double precision
    ,c10 integer
);
