CREATE TABLE public.job1_1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(10)
    ,c2 double precision
    ,c3 real
    ,c4 varchar(48)
    ,c5 bigint
    ,c6 uuid
    ,c7 date
    ,c8 bytea
    ,c9 jsonb
    ,c10 smallint
    ,c11 timestamp
    ,c12 char(2)
    ,c13 uuid
    ,c14 double precision
);

CREATE TABLE public.job1_2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(3)
    ,c2 char(18)
    ,c3 text
    ,c4 jsonb
    ,c5 text
    ,c6 time
    ,c7 timestamp
    ,c8 bytea
    ,c9 time
    ,c10 jsonb
    ,c11 integer
);

CREATE TABLE public.job1_3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(11,0)
    ,c3 real
    ,c4 smallint
    ,c5 bigint
    ,c6 text
    ,c7 varchar(48)
    ,c8 timestamp
);

CREATE TABLE public.job1_4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(20)
    ,c2 timestamp
    ,c3 real
    ,c4 integer
    ,c5 smallint
    ,c6 integer
    ,c7 uuid
    ,c8 smallint
    ,c9 jsonb
    ,c10 bigint
    ,c11 double precision
    ,c12 timestamp
    ,c13 numeric(8,2)
    ,c14 real
    ,c15 jsonb
    ,c16 varchar(50)
    ,c17 time
    ,c18 uuid
);

CREATE TABLE public.job1_5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 jsonb
    ,c3 smallint
    ,c4 bigint
    ,c5 bigint
    ,c6 boolean
    ,c7 varchar(43)
    ,c8 date
    ,c9 timestamp
    ,c10 bigint
    ,c11 time
    ,c12 bytea
);

CREATE TABLE public.job1_6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 timestamp
    ,c3 time
    ,c4 smallint
    ,c5 boolean
    ,c6 bytea
    ,c7 bigint
    ,c8 integer
    ,c9 numeric(4,3)
    ,c10 bytea
    ,c11 date
    ,c12 integer
    ,c13 time
    ,c14 smallint
    ,c15 text
    ,c16 timestamp
    ,c17 double precision
    ,c18 uuid
    ,c19 numeric(10,3)
    ,c20 uuid
);

CREATE TABLE public.job1_7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 char(5)
    ,c4 uuid
    ,c5 time
    ,c6 date
    ,c7 double precision
    ,c8 bigint
    ,c9 smallint
    ,c10 bytea
    ,c11 timestamp
    ,c12 boolean
    ,c13 varchar(7)
);

CREATE TABLE public.job1_8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(14)
    ,c2 time
    ,c3 smallint
    ,c4 integer
    ,c5 uuid
    ,c6 smallint
    ,c7 timestamp
    ,c8 bigint
    ,c9 uuid
    ,c10 real
    ,c11 real
    ,c12 text
    ,c13 uuid
);

CREATE TABLE public.job1_9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 varchar(14)
    ,c4 double precision
    ,c5 real
    ,c6 smallint
    ,c7 real
    ,c8 time
    ,c9 text
    ,c10 numeric(5,3)
    ,c11 varchar(47)
    ,c12 jsonb
);

CREATE TABLE public.job1_10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 time
    ,c4 numeric(7,3)
    ,c5 smallint
    ,c6 uuid
    ,c7 numeric(7,2)
    ,c8 char(11)
);

CREATE TABLE public.job1_11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 boolean
    ,c3 jsonb
    ,c4 bigint
    ,c5 integer
    ,c6 text
    ,c7 real
    ,c8 integer
    ,c9 bytea
    ,c10 boolean
    ,c11 bytea
    ,c12 time
    ,c13 varchar(33)
);

CREATE TABLE public.job1_12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,3)
    ,c2 timestamp
    ,c3 time
    ,c4 timestamp
    ,c5 bigint
);

CREATE TABLE public.job1_13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 jsonb
    ,c3 boolean
    ,c4 char(6)
    ,c5 boolean
    ,c6 jsonb
    ,c7 jsonb
    ,c8 uuid
);

CREATE TABLE public.job1_14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 real
    ,c3 uuid
    ,c4 bytea
    ,c5 jsonb
    ,c6 date
    ,c7 jsonb
    ,c8 numeric(12,3)
    ,c9 uuid
    ,c10 numeric(11,0)
    ,c11 real
    ,c12 smallint
    ,c13 time
    ,c14 text
    ,c15 uuid
    ,c16 bigint
);

CREATE TABLE public.job1_15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 varchar(41)
    ,c3 real
    ,c4 timestamp
    ,c5 smallint
    ,c6 integer
    ,c7 jsonb
    ,c8 text
    ,c9 numeric(10,1)
    ,c10 time
    ,c11 timestamp
    ,c12 jsonb
    ,c13 jsonb
    ,c14 bytea
    ,c15 timestamp
    ,c16 boolean
    ,c17 boolean
    ,c18 timestamp
    ,c19 numeric(12,0)
);

CREATE TABLE public.job1_16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 bigint
    ,c4 smallint
    ,c5 numeric(11,1)
    ,c6 numeric(4,2)
    ,c7 text
    ,c8 bytea
    ,c9 text
    ,c10 text
);

CREATE TABLE public.job1_17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 double precision
    ,c3 numeric(10,0)
    ,c4 real
    ,c5 numeric(10,3)
    ,c6 boolean
    ,c7 bigint
    ,c8 bigint
    ,c9 boolean
    ,c10 timestamp
    ,c11 double precision
);

CREATE TABLE public.job1_18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,3)
    ,c2 char(19)
    ,c3 integer
    ,c4 integer
    ,c5 uuid
    ,c6 char(12)
    ,c7 time
    ,c8 real
    ,c9 date
    ,c10 time
    ,c11 bytea
    ,c12 numeric(10,3)
    ,c13 bigint
);

CREATE TABLE public.job1_19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(34)
    ,c2 text
    ,c3 numeric(9,2)
    ,c4 jsonb
    ,c5 real
    ,c6 double precision
    ,c7 bigint
    ,c8 bigint
    ,c9 time
    ,c10 text
    ,c11 uuid
    ,c12 smallint
    ,c13 date
    ,c14 date
    ,c15 boolean
    ,c16 date
    ,c17 integer
    ,c18 real
    ,c19 numeric(11,1)
);

CREATE TABLE public.job1_20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 time
    ,c3 numeric(9,3)
    ,c4 bytea
    ,c5 text
    ,c6 integer
    ,c7 time
    ,c8 date
    ,c9 integer
    ,c10 jsonb
    ,c11 jsonb
    ,c12 timestamp
    ,c13 bigint
    ,c14 smallint
);

CREATE TABLE public.job1_21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 time
    ,c4 real
    ,c5 varchar(33)
);

CREATE TABLE public.job1_22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bigint
    ,c3 smallint
    ,c4 integer
    ,c5 jsonb
    ,c6 char(20)
    ,c7 uuid
    ,c8 time
    ,c9 date
);

CREATE TABLE public.job1_23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,0)
    ,c2 bytea
    ,c3 smallint
    ,c4 date
    ,c5 boolean
    ,c6 smallint
    ,c7 real
    ,c8 bigint
    ,c9 boolean
    ,c10 boolean
    ,c11 date
    ,c12 time
    ,c13 boolean
    ,c14 double precision
);

CREATE TABLE public.job1_24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 integer
    ,c3 bytea
    ,c4 time
    ,c5 real
    ,c6 time
    ,c7 uuid
    ,c8 jsonb
    ,c9 uuid
    ,c10 boolean
    ,c11 real
    ,c12 bytea
);

CREATE TABLE public.job1_25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 char(11)
    ,c3 real
    ,c4 uuid
    ,c5 double precision
    ,c6 text
    ,c7 date
    ,c8 timestamp
    ,c9 uuid
    ,c10 smallint
    ,c11 smallint
    ,c12 numeric(12,1)
    ,c13 timestamp
    ,c14 bytea
    ,c15 integer
);

CREATE TABLE public.job1_26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(15)
    ,c2 double precision
    ,c3 uuid
    ,c4 double precision
    ,c5 timestamp
    ,c6 text
    ,c7 char(1)
);

CREATE TABLE public.job1_27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 char(11)
    ,c4 text
    ,c5 bigint
);

CREATE TABLE public.job1_28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 real
    ,c4 smallint
    ,c5 boolean
    ,c6 time
    ,c7 timestamp
    ,c8 varchar(27)
    ,c9 bigint
);

CREATE TABLE public.job1_29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 timestamp
    ,c3 double precision
    ,c4 real
    ,c5 numeric(7,1)
    ,c6 time
    ,c7 smallint
);

CREATE TABLE public.job1_30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 jsonb
    ,c4 time
    ,c5 double precision
    ,c6 smallint
    ,c7 varchar(32)
    ,c8 date
);

CREATE TABLE public.job1_31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 date
    ,c3 uuid
    ,c4 uuid
    ,c5 bytea
    ,c6 bigint
    ,c7 boolean
    ,c8 bigint
    ,c9 uuid
    ,c10 time
);

CREATE TABLE public.job1_32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 double precision
    ,c4 text
    ,c5 boolean
    ,c6 smallint
    ,c7 real
    ,c8 double precision
    ,c9 char(13)
    ,c10 numeric(12,1)
    ,c11 double precision
    ,c12 integer
);

CREATE TABLE public.job1_33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(4,2)
    ,c3 bigint
    ,c4 uuid
    ,c5 time
    ,c6 time
    ,c7 date
    ,c8 time
    ,c9 double precision
    ,c10 jsonb
    ,c11 integer
    ,c12 bytea
    ,c13 timestamp
    ,c14 numeric(7,1)
    ,c15 char(6)
    ,c16 date
    ,c17 uuid
);

CREATE TABLE public.job1_34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 bytea
    ,c4 boolean
    ,c5 date
    ,c6 bytea
    ,c7 double precision
    ,c8 bytea
    ,c9 jsonb
    ,c10 bytea
    ,c11 real
    ,c12 jsonb
    ,c13 jsonb
    ,c14 bytea
    ,c15 boolean
    ,c16 bigint
    ,c17 bigint
);

CREATE TABLE public.job1_35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 char(11)
    ,c4 jsonb
    ,c5 numeric(4,2)
    ,c6 integer
    ,c7 bigint
    ,c8 jsonb
    ,c9 text
    ,c10 jsonb
    ,c11 varchar(42)
);

CREATE TABLE public.job1_36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 jsonb
    ,c3 time
    ,c4 char(13)
    ,c5 boolean
    ,c6 varchar(39)
    ,c7 jsonb
    ,c8 time
    ,c9 bytea
    ,c10 uuid
    ,c11 char(11)
    ,c12 smallint
    ,c13 boolean
    ,c14 time
    ,c15 time
    ,c16 date
);

CREATE TABLE public.job1_37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 jsonb
    ,c3 timestamp
    ,c4 real
    ,c5 text
    ,c6 numeric(9,2)
    ,c7 smallint
    ,c8 integer
    ,c9 text
    ,c10 varchar(14)
    ,c11 date
    ,c12 real
    ,c13 double precision
    ,c14 numeric(7,1)
    ,c15 text
    ,c16 time
    ,c17 bytea
    ,c18 time
    ,c19 date
    ,c20 uuid
);

CREATE TABLE public.job1_38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 uuid
    ,c3 date
    ,c4 numeric(10,1)
    ,c5 smallint
    ,c6 uuid
    ,c7 smallint
    ,c8 boolean
    ,c9 varchar(10)
    ,c10 bigint
    ,c11 real
);

CREATE TABLE public.job1_39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 date
    ,c3 varchar(7)
    ,c4 time
    ,c5 char(12)
    ,c6 time
    ,c7 time
    ,c8 jsonb
    ,c9 date
    ,c10 date
    ,c11 real
    ,c12 text
    ,c13 smallint
    ,c14 time
    ,c15 jsonb
    ,c16 char(5)
    ,c17 smallint
    ,c18 time
    ,c19 bigint
);

CREATE TABLE public.job1_40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 char(4)
    ,c4 timestamp
    ,c5 integer
    ,c6 text
    ,c7 numeric(6,1)
    ,c8 bytea
    ,c9 double precision
    ,c10 real
    ,c11 integer
    ,c12 time
    ,c13 jsonb
    ,c14 double precision
    ,c15 timestamp
    ,c16 integer
    ,c17 timestamp
    ,c18 smallint
    ,c19 varchar(28)
    ,c20 integer
);

CREATE TABLE public.job1_41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 time
    ,c3 bytea
    ,c4 double precision
    ,c5 integer
    ,c6 bigint
    ,c7 text
    ,c8 bytea
    ,c9 double precision
    ,c10 time
    ,c11 time
    ,c12 boolean
    ,c13 boolean
    ,c14 varchar(37)
    ,c15 char(15)
    ,c16 time
    ,c17 uuid
    ,c18 double precision
    ,c19 bigint
    ,c20 smallint
);

CREATE TABLE public.job1_42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 real
    ,c4 smallint
    ,c5 integer
    ,c6 numeric(11,3)
    ,c7 integer
    ,c8 numeric(11,0)
    ,c9 numeric(4,0)
    ,c10 char(9)
    ,c11 double precision
);

CREATE TABLE public.job1_43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 double precision
    ,c3 bytea
    ,c4 char(2)
    ,c5 text
    ,c6 char(13)
    ,c7 double precision
    ,c8 uuid
    ,c9 bigint
);

CREATE TABLE public.job1_44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 date
    ,c3 boolean
    ,c4 numeric(6,0)
    ,c5 uuid
    ,c6 time
    ,c7 integer
    ,c8 jsonb
    ,c9 bytea
    ,c10 text
    ,c11 boolean
    ,c12 boolean
    ,c13 numeric(7,0)
    ,c14 date
    ,c15 integer
);

CREATE TABLE public.job1_45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(8)
    ,c3 jsonb
    ,c4 jsonb
    ,c5 jsonb
    ,c6 uuid
    ,c7 real
);

CREATE TABLE public.job1_46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 time
    ,c3 integer
    ,c4 boolean
    ,c5 timestamp
    ,c6 numeric(7,3)
    ,c7 timestamp
);

CREATE TABLE public.job1_47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 date
    ,c3 smallint
    ,c4 integer
    ,c5 smallint
    ,c6 jsonb
    ,c7 integer
    ,c8 smallint
);

CREATE TABLE public.job1_48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 varchar(45)
    ,c3 integer
    ,c4 uuid
    ,c5 char(11)
    ,c6 date
    ,c7 bigint
    ,c8 double precision
    ,c9 numeric(6,2)
);

CREATE TABLE public.job1_49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(5)
    ,c2 timestamp
    ,c3 uuid
    ,c4 text
    ,c5 boolean
    ,c6 double precision
    ,c7 smallint
    ,c8 timestamp
    ,c9 real
    ,c10 boolean
    ,c11 varchar(39)
);

CREATE TABLE public.job1_50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 uuid
    ,c4 bigint
    ,c5 jsonb
    ,c6 real
    ,c7 uuid
    ,c8 bigint
    ,c9 real
    ,c10 date
    ,c11 bytea
    ,c12 real
    ,c13 jsonb
    ,c14 smallint
    ,c15 timestamp
);

CREATE TABLE public.job1_51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 varchar(16)
    ,c3 uuid
    ,c4 time
    ,c5 boolean
    ,c6 numeric(5,3)
);

CREATE TABLE public.job1_52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 jsonb
    ,c3 integer
    ,c4 bigint
    ,c5 date
    ,c6 varchar(23)
    ,c7 uuid
);

CREATE TABLE public.job1_53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 date
    ,c4 smallint
    ,c5 bytea
    ,c6 double precision
    ,c7 bytea
    ,c8 varchar(1)
    ,c9 integer
    ,c10 boolean
    ,c11 jsonb
    ,c12 real
    ,c13 text
    ,c14 varchar(4)
    ,c15 integer
    ,c16 bytea
    ,c17 time
    ,c18 timestamp
    ,c19 timestamp
    ,c20 real
);

CREATE TABLE public.job1_54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 real
    ,c4 date
    ,c5 char(12)
);

CREATE TABLE public.job1_55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 double precision
    ,c3 real
    ,c4 timestamp
    ,c5 smallint
    ,c6 integer
    ,c7 bigint
    ,c8 double precision
    ,c9 bytea
    ,c10 double precision
    ,c11 jsonb
    ,c12 boolean
    ,c13 bytea
    ,c14 date
    ,c15 time
    ,c16 real
    ,c17 smallint
);

CREATE TABLE public.job1_56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 timestamp
    ,c3 text
    ,c4 text
    ,c5 bigint
    ,c6 integer
    ,c7 timestamp
    ,c8 integer
    ,c9 text
    ,c10 timestamp
    ,c11 varchar(17)
    ,c12 integer
    ,c13 double precision
);

CREATE TABLE public.job1_57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,2)
    ,c2 uuid
    ,c3 boolean
    ,c4 text
    ,c5 double precision
    ,c6 char(16)
    ,c7 boolean
    ,c8 text
    ,c9 text
    ,c10 uuid
    ,c11 numeric(4,3)
    ,c12 smallint
    ,c13 date
    ,c14 numeric(9,2)
    ,c15 jsonb
);

CREATE TABLE public.job1_58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(44)
    ,c2 jsonb
    ,c3 char(12)
    ,c4 real
    ,c5 time
    ,c6 integer
);

CREATE TABLE public.job1_59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 char(15)
    ,c3 integer
    ,c4 numeric(12,0)
    ,c5 char(5)
    ,c6 time
    ,c7 text
    ,c8 varchar(35)
    ,c9 real
    ,c10 time
    ,c11 bytea
    ,c12 timestamp
    ,c13 date
    ,c14 integer
    ,c15 bigint
    ,c16 varchar(44)
    ,c17 uuid
    ,c18 real
    ,c19 boolean
    ,c20 jsonb
);

CREATE TABLE public.job1_60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bigint
    ,c3 timestamp
    ,c4 date
    ,c5 numeric(10,2)
    ,c6 text
    ,c7 text
    ,c8 bytea
    ,c9 numeric(6,2)
    ,c10 date
    ,c11 bigint
);

CREATE TABLE public.job1_61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 timestamp
    ,c3 text
    ,c4 smallint
    ,c5 timestamp
    ,c6 date
    ,c7 time
    ,c8 uuid
    ,c9 bigint
    ,c10 boolean
    ,c11 timestamp
    ,c12 numeric(12,2)
    ,c13 integer
    ,c14 boolean
    ,c15 integer
    ,c16 integer
    ,c17 char(15)
);

CREATE TABLE public.job1_62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(7,0)
    ,c2 time
    ,c3 date
    ,c4 numeric(4,0)
    ,c5 numeric(11,1)
    ,c6 bigint
    ,c7 varchar(25)
    ,c8 uuid
    ,c9 time
    ,c10 date
    ,c11 char(8)
    ,c12 timestamp
    ,c13 bigint
    ,c14 integer
);

CREATE TABLE public.job1_63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 varchar(27)
    ,c3 integer
    ,c4 real
    ,c5 varchar(15)
    ,c6 real
    ,c7 numeric(12,1)
    ,c8 text
    ,c9 real
    ,c10 date
    ,c11 numeric(5,2)
    ,c12 smallint
    ,c13 time
    ,c14 bytea
);

CREATE TABLE public.job1_64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 double precision
    ,c3 smallint
    ,c4 char(3)
    ,c5 timestamp
    ,c6 uuid
    ,c7 bytea
    ,c8 bigint
    ,c9 varchar(1)
    ,c10 timestamp
    ,c11 integer
    ,c12 jsonb
    ,c13 double precision
    ,c14 varchar(4)
    ,c15 char(9)
    ,c16 real
    ,c17 text
);

CREATE TABLE public.job1_65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,2)
    ,c2 integer
    ,c3 timestamp
    ,c4 jsonb
    ,c5 char(7)
    ,c6 bigint
    ,c7 boolean
    ,c8 text
    ,c9 integer
    ,c10 numeric(12,1)
    ,c11 numeric(5,2)
    ,c12 time
);

CREATE TABLE public.job1_66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 date
    ,c4 char(16)
    ,c5 date
);

CREATE TABLE public.job1_67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(21)
    ,c2 varchar(43)
    ,c3 uuid
    ,c4 real
    ,c5 char(12)
    ,c6 date
    ,c7 integer
    ,c8 date
    ,c9 real
    ,c10 bytea
    ,c11 boolean
    ,c12 date
    ,c13 timestamp
    ,c14 bytea
    ,c15 text
    ,c16 bigint
    ,c17 integer
    ,c18 char(17)
    ,c19 time
    ,c20 numeric(9,3)
);

CREATE TABLE public.job1_68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 timestamp
    ,c4 double precision
    ,c5 numeric(7,2)
    ,c6 varchar(50)
    ,c7 bytea
    ,c8 double precision
    ,c9 time
    ,c10 numeric(8,2)
    ,c11 double precision
);

CREATE TABLE public.job1_69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bigint
    ,c3 text
    ,c4 boolean
    ,c5 uuid
    ,c6 varchar(29)
    ,c7 char(6)
    ,c8 jsonb
    ,c9 time
    ,c10 jsonb
);

CREATE TABLE public.job1_70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 real
    ,c3 boolean
    ,c4 double precision
    ,c5 numeric(5,2)
    ,c6 bigint
    ,c7 double precision
    ,c8 double precision
    ,c9 uuid
    ,c10 boolean
    ,c11 text
    ,c12 jsonb
    ,c13 uuid
    ,c14 bytea
    ,c15 double precision
    ,c16 boolean
    ,c17 double precision
    ,c18 text
    ,c19 date
    ,c20 real
);

CREATE TABLE public.job1_71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 jsonb
    ,c3 smallint
    ,c4 time
    ,c5 boolean
    ,c6 timestamp
    ,c7 char(8)
    ,c8 double precision
    ,c9 numeric(4,1)
    ,c10 smallint
);

CREATE TABLE public.job1_72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(13)
    ,c2 time
    ,c3 bigint
    ,c4 uuid
    ,c5 smallint
    ,c6 jsonb
    ,c7 timestamp
);

CREATE TABLE public.job1_73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 time
    ,c3 uuid
    ,c4 bigint
    ,c5 bytea
    ,c6 bigint
    ,c7 uuid
    ,c8 boolean
    ,c9 uuid
    ,c10 text
    ,c11 date
    ,c12 char(6)
    ,c13 integer
    ,c14 bytea
);

CREATE TABLE public.job1_74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 boolean
    ,c4 bytea
    ,c5 time
    ,c6 bytea
    ,c7 boolean
    ,c8 double precision
    ,c9 smallint
    ,c10 real
    ,c11 text
    ,c12 bytea
    ,c13 smallint
    ,c14 timestamp
);

CREATE TABLE public.job1_75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 double precision
    ,c3 timestamp
    ,c4 bigint
    ,c5 real
    ,c6 boolean
    ,c7 numeric(11,1)
    ,c8 uuid
    ,c9 date
    ,c10 jsonb
    ,c11 text
);

CREATE TABLE public.job1_76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 jsonb
    ,c4 timestamp
    ,c5 time
    ,c6 numeric(5,0)
);

CREATE TABLE public.job1_77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 numeric(11,2)
    ,c3 jsonb
    ,c4 bigint
    ,c5 time
    ,c6 timestamp
    ,c7 boolean
    ,c8 numeric(7,2)
    ,c9 char(9)
    ,c10 time
    ,c11 double precision
    ,c12 char(14)
    ,c13 time
    ,c14 real
);

CREATE TABLE public.job1_78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(20)
    ,c2 boolean
    ,c3 varchar(44)
    ,c4 char(14)
    ,c5 smallint
    ,c6 char(12)
    ,c7 date
    ,c8 jsonb
    ,c9 numeric(8,0)
    ,c10 text
    ,c11 bytea
    ,c12 boolean
    ,c13 integer
);

CREATE TABLE public.job1_79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,1)
    ,c2 bytea
    ,c3 bytea
    ,c4 smallint
    ,c5 integer
    ,c6 smallint
    ,c7 bigint
    ,c8 date
    ,c9 timestamp
    ,c10 real
    ,c11 real
    ,c12 bytea
);

CREATE TABLE public.job1_80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bytea
    ,c3 integer
    ,c4 boolean
    ,c5 date
    ,c6 varchar(8)
    ,c7 char(11)
    ,c8 double precision
    ,c9 boolean
    ,c10 double precision
    ,c11 char(2)
);

CREATE TABLE public.job1_81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(7,0)
    ,c2 varchar(32)
    ,c3 integer
    ,c4 timestamp
    ,c5 varchar(5)
    ,c6 bytea
    ,c7 bigint
    ,c8 varchar(25)
    ,c9 date
    ,c10 integer
    ,c11 text
    ,c12 time
);

CREATE TABLE public.job1_82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 char(15)
    ,c3 timestamp
    ,c4 uuid
    ,c5 text
);

CREATE TABLE public.job1_83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 text
    ,c3 smallint
    ,c4 uuid
    ,c5 smallint
    ,c6 smallint
    ,c7 bigint
    ,c8 integer
    ,c9 date
    ,c10 time
    ,c11 integer
    ,c12 double precision
    ,c13 varchar(42)
    ,c14 bigint
    ,c15 uuid
    ,c16 smallint
    ,c17 bytea
    ,c18 real
);

CREATE TABLE public.job1_84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 timestamp
    ,c3 boolean
    ,c4 char(3)
    ,c5 integer
    ,c6 varchar(29)
    ,c7 uuid
    ,c8 text
    ,c9 double precision
    ,c10 bytea
    ,c11 boolean
    ,c12 bytea
    ,c13 real
    ,c14 jsonb
    ,c15 jsonb
);

CREATE TABLE public.job1_85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 date
    ,c3 uuid
    ,c4 uuid
    ,c5 jsonb
    ,c6 real
    ,c7 numeric(5,0)
    ,c8 varchar(8)
    ,c9 char(14)
    ,c10 numeric(4,1)
    ,c11 varchar(25)
    ,c12 bigint
);

CREATE TABLE public.job1_86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 char(9)
    ,c4 date
    ,c5 text
    ,c6 smallint
    ,c7 date
    ,c8 uuid
    ,c9 char(20)
    ,c10 double precision
    ,c11 bytea
);

CREATE TABLE public.job1_87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 real
    ,c3 text
    ,c4 jsonb
    ,c5 real
    ,c6 time
);

CREATE TABLE public.job1_88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(10,2)
    ,c3 timestamp
    ,c4 text
    ,c5 uuid
    ,c6 uuid
    ,c7 time
    ,c8 jsonb
    ,c9 double precision
    ,c10 real
);

CREATE TABLE public.job1_89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 uuid
    ,c3 jsonb
    ,c4 bytea
    ,c5 bytea
    ,c6 uuid
    ,c7 varchar(23)
    ,c8 time
    ,c9 varchar(19)
    ,c10 varchar(43)
    ,c11 double precision
    ,c12 uuid
    ,c13 uuid
    ,c14 bytea
    ,c15 char(4)
    ,c16 double precision
);

CREATE TABLE public.job1_90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 bigint
    ,c4 bytea
    ,c5 real
    ,c6 numeric(12,1)
    ,c7 real
    ,c8 date
    ,c9 jsonb
    ,c10 time
    ,c11 bytea
    ,c12 boolean
);

CREATE TABLE public.job1_91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 double precision
    ,c3 boolean
    ,c4 double precision
    ,c5 bigint
    ,c6 double precision
    ,c7 uuid
    ,c8 bigint
    ,c9 bytea
    ,c10 boolean
    ,c11 jsonb
    ,c12 timestamp
    ,c13 boolean
    ,c14 smallint
    ,c15 double precision
    ,c16 timestamp
    ,c17 bytea
    ,c18 jsonb
    ,c19 text
    ,c20 integer
);

CREATE TABLE public.job1_92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 bigint
    ,c3 real
    ,c4 varchar(39)
    ,c5 smallint
    ,c6 uuid
    ,c7 bytea
    ,c8 boolean
    ,c9 numeric(6,1)
    ,c10 uuid
    ,c11 date
    ,c12 date
    ,c13 uuid
    ,c14 char(3)
    ,c15 text
);

CREATE TABLE public.job1_93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 uuid
    ,c3 integer
    ,c4 bytea
    ,c5 timestamp
    ,c6 numeric(5,0)
    ,c7 double precision
    ,c8 timestamp
    ,c9 time
);

CREATE TABLE public.job1_94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 jsonb
    ,c4 bigint
    ,c5 date
    ,c6 jsonb
    ,c7 smallint
    ,c8 numeric(12,0)
    ,c9 timestamp
    ,c10 integer
    ,c11 varchar(50)
);

CREATE TABLE public.job1_95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 date
    ,c3 uuid
    ,c4 timestamp
    ,c5 char(20)
    ,c6 char(14)
    ,c7 bigint
    ,c8 timestamp
    ,c9 real
    ,c10 varchar(26)
    ,c11 boolean
    ,c12 jsonb
    ,c13 bigint
    ,c14 integer
    ,c15 uuid
    ,c16 bigint
);

CREATE TABLE public.job1_96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 varchar(8)
    ,c4 numeric(11,1)
    ,c5 date
    ,c6 numeric(7,2)
    ,c7 smallint
    ,c8 char(14)
    ,c9 numeric(5,2)
    ,c10 numeric(9,1)
    ,c11 timestamp
    ,c12 date
    ,c13 date
    ,c14 uuid
    ,c15 double precision
    ,c16 smallint
);

CREATE TABLE public.job1_97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 varchar(34)
    ,c4 time
    ,c5 boolean
    ,c6 bigint
    ,c7 date
);

CREATE TABLE public.job1_98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 char(12)
    ,c4 real
    ,c5 varchar(40)
);

CREATE TABLE public.job1_99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 char(9)
    ,c3 smallint
    ,c4 timestamp
    ,c5 char(1)
    ,c6 varchar(30)
    ,c7 real
    ,c8 date
    ,c9 integer
    ,c10 numeric(6,0)
    ,c11 bytea
    ,c12 smallint
);

CREATE TABLE public.job1_100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 char(16)
    ,c3 date
    ,c4 boolean
    ,c5 timestamp
    ,c6 bytea
    ,c7 numeric(11,0)
    ,c8 numeric(8,1)
    ,c9 time
    ,c10 double precision
);
