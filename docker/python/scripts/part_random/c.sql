CREATE TABLE part_random.t1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 bigint
    ,c4 uuid
    ,c5 varchar(24)
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t1_p0 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE part_random.t1_p1 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE part_random.t1_p2 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE part_random.t1_p3 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE part_random.t1_p4 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE part_random.t1_p5 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE part_random.t1_p6 PARTITION OF part_random.t1 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE part_random.t2 (
    id BIGSERIAL
    ,c1 date
    ,c2 uuid
    ,c3 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t2_p0 PARTITION OF part_random.t2 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t2_p1 PARTITION OF part_random.t2 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t2_p2 PARTITION OF part_random.t2 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t2_p3 PARTITION OF part_random.t2 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t2_p4 PARTITION OF part_random.t2 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t2_p5 PARTITION OF part_random.t2 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t2_p6 PARTITION OF part_random.t2 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t2_p7 PARTITION OF part_random.t2 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t2_p8 PARTITION OF part_random.t2 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE part_random.t2_p9 PARTITION OF part_random.t2 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE part_random.t2_px PARTITION OF part_random.t2 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t3 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 uuid
    ,c4 smallint
    ,c5 char(2)
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t3_p0 PARTITION OF part_random.t3 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t3_p1 PARTITION OF part_random.t3 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t3_p2 PARTITION OF part_random.t3 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t3_p3 PARTITION OF part_random.t3 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t3_p4 PARTITION OF part_random.t3 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t3_p5 PARTITION OF part_random.t3 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t3_p6 PARTITION OF part_random.t3 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t3_px PARTITION OF part_random.t3 FOR VALUES FROM ('2040-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(48)
    ,c3 text
    ,c4 smallint
    ,c5 jsonb
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t4_p0 PARTITION OF part_random.t4 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t4_p1 PARTITION OF part_random.t4 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t4_p2 PARTITION OF part_random.t4 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t4_p3 PARTITION OF part_random.t4 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t4_p4 PARTITION OF part_random.t4 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t4_px PARTITION OF part_random.t4 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE part_random.t5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 bigint
    ,c4 double precision
    ,c5 uuid
    ,c6 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t5_p0 PARTITION OF part_random.t5 FOR VALUES IN (1, 2);
CREATE TABLE part_random.t5_p1 PARTITION OF part_random.t5 FOR VALUES IN (9, 4);
CREATE TABLE part_random.t5_p2 PARTITION OF part_random.t5 FOR VALUES IN (6, 3);
CREATE TABLE part_random.t5_p3 PARTITION OF part_random.t5 FOR VALUES IN (0, 5);
CREATE TABLE part_random.t5_p4 PARTITION OF part_random.t5 FOR VALUES IN (8, 7);

CREATE TABLE part_random.t6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(10)
    ,c3 integer
    ,c4 varchar(31)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t6_p0 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE part_random.t6_p1 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE part_random.t6_p2 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE part_random.t6_p3 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE part_random.t6_p4 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE part_random.t6_p5 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE part_random.t6_p6 PARTITION OF part_random.t6 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE part_random.t7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 timestamp
    ,c4 smallint
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t7_p0 PARTITION OF part_random.t7 FOR VALUES IN (7, 2);
CREATE TABLE part_random.t7_p1 PARTITION OF part_random.t7 FOR VALUES IN (4, 3);
CREATE TABLE part_random.t7_p2 PARTITION OF part_random.t7 FOR VALUES IN (9, 0);
CREATE TABLE part_random.t7_p3 PARTITION OF part_random.t7 FOR VALUES IN (8, 5);
CREATE TABLE part_random.t7_p4 PARTITION OF part_random.t7 FOR VALUES IN (6);
CREATE TABLE part_random.t7_p5 PARTITION OF part_random.t7 FOR VALUES IN (1);

CREATE TABLE part_random.t8 (
    id BIGSERIAL
    ,c1 date
    ,c2 double precision
    ,c3 smallint
    ,c4 boolean
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t8_p0 PARTITION OF part_random.t8 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t8_p1 PARTITION OF part_random.t8 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t8_p2 PARTITION OF part_random.t8 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t8_p3 PARTITION OF part_random.t8 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t8_p4 PARTITION OF part_random.t8 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t8_p5 PARTITION OF part_random.t8 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t8_p6 PARTITION OF part_random.t8 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t8_p7 PARTITION OF part_random.t8 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t8_p8 PARTITION OF part_random.t8 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE part_random.t8_px PARTITION OF part_random.t8 FOR VALUES FROM ('2060-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 uuid
    ,c4 uuid
    ,c5 double precision
    ,c6 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t9_p0 PARTITION OF part_random.t9 FOR VALUES IN (5, 1);
CREATE TABLE part_random.t9_p1 PARTITION OF part_random.t9 FOR VALUES IN (4, 2);
CREATE TABLE part_random.t9_p2 PARTITION OF part_random.t9 FOR VALUES IN (6, 8);
CREATE TABLE part_random.t9_p3 PARTITION OF part_random.t9 FOR VALUES IN (3, 9);
CREATE TABLE part_random.t9_p4 PARTITION OF part_random.t9 FOR VALUES IN (7);
CREATE TABLE part_random.t9_p5 PARTITION OF part_random.t9 FOR VALUES IN (0);

CREATE TABLE part_random.t10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t10_p0 PARTITION OF part_random.t10 FOR VALUES IN (0, 6, 5, 2);
CREATE TABLE part_random.t10_p1 PARTITION OF part_random.t10 FOR VALUES IN (8, 9, 7);
CREATE TABLE part_random.t10_p2 PARTITION OF part_random.t10 FOR VALUES IN (4, 3, 1);

CREATE TABLE part_random.t11 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 smallint
    ,c4 boolean
    ,c5 integer
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t11_p0 PARTITION OF part_random.t11 FOR VALUES IN (8, 9);
CREATE TABLE part_random.t11_p1 PARTITION OF part_random.t11 FOR VALUES IN (3, 7);
CREATE TABLE part_random.t11_p2 PARTITION OF part_random.t11 FOR VALUES IN (2, 5);
CREATE TABLE part_random.t11_p3 PARTITION OF part_random.t11 FOR VALUES IN (0, 1);
CREATE TABLE part_random.t11_p4 PARTITION OF part_random.t11 FOR VALUES IN (4);
CREATE TABLE part_random.t11_p5 PARTITION OF part_random.t11 FOR VALUES IN (6);

CREATE TABLE part_random.t12 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 integer
    ,c4 varchar(24)
    ,c5 integer
    ,c6 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t12_p0 PARTITION OF part_random.t12 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t12_p1 PARTITION OF part_random.t12 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t12_p2 PARTITION OF part_random.t12 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t12_px PARTITION OF part_random.t12 FOR VALUES FROM (3000000) TO (2147483647);

CREATE TABLE part_random.t13 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 timestamp
    ,c4 numeric(8,0)
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t13_p0 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t13_p1 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t13_p2 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t13_p3 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t13_p4 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t13_p5 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t13_p6 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t13_p7 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t13_p8 PARTITION OF part_random.t13 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t14 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 text
    ,c4 char(15)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t14_p0 PARTITION OF part_random.t14 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t14_p1 PARTITION OF part_random.t14 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t14_p2 PARTITION OF part_random.t14 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t14_px PARTITION OF part_random.t14 FOR VALUES FROM (3000000) TO (2147483647);

CREATE TABLE part_random.t15 (
    id BIGSERIAL
    ,c1 date
    ,c2 timestamp
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t15_p0 PARTITION OF part_random.t15 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t15_p1 PARTITION OF part_random.t15 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t15_p2 PARTITION OF part_random.t15 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t15_px PARTITION OF part_random.t15 FOR VALUES FROM ('2000-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t16 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 double precision
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t16_p0 PARTITION OF part_random.t16 FOR VALUES IN (8, 6);
CREATE TABLE part_random.t16_p1 PARTITION OF part_random.t16 FOR VALUES IN (1, 4);
CREATE TABLE part_random.t16_p2 PARTITION OF part_random.t16 FOR VALUES IN (2, 7);
CREATE TABLE part_random.t16_p3 PARTITION OF part_random.t16 FOR VALUES IN (5);
CREATE TABLE part_random.t16_p4 PARTITION OF part_random.t16 FOR VALUES IN (0);
CREATE TABLE part_random.t16_p5 PARTITION OF part_random.t16 FOR VALUES IN (3);
CREATE TABLE part_random.t16_p6 PARTITION OF part_random.t16 FOR VALUES IN (9);

CREATE TABLE part_random.t17 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(6)
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t17_p0 PARTITION OF part_random.t17 FOR VALUES IN (2, 5);
CREATE TABLE part_random.t17_p1 PARTITION OF part_random.t17 FOR VALUES IN (9, 3);
CREATE TABLE part_random.t17_p2 PARTITION OF part_random.t17 FOR VALUES IN (6, 1);
CREATE TABLE part_random.t17_p3 PARTITION OF part_random.t17 FOR VALUES IN (7, 4);
CREATE TABLE part_random.t17_p4 PARTITION OF part_random.t17 FOR VALUES IN (8);
CREATE TABLE part_random.t17_p5 PARTITION OF part_random.t17 FOR VALUES IN (0);

CREATE TABLE part_random.t18 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 double precision
    ,c4 char(12)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t18_p0 PARTITION OF part_random.t18 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t18_p1 PARTITION OF part_random.t18 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t18_p2 PARTITION OF part_random.t18 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t18_p3 PARTITION OF part_random.t18 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t18_p4 PARTITION OF part_random.t18 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t18_p5 PARTITION OF part_random.t18 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t18_p6 PARTITION OF part_random.t18 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t18_p7 PARTITION OF part_random.t18 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t18_px PARTITION OF part_random.t18 FOR VALUES FROM (8000000) TO (2147483647);

CREATE TABLE part_random.t19 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t19_p0 PARTITION OF part_random.t19 FOR VALUES IN (6, 3);
CREATE TABLE part_random.t19_p1 PARTITION OF part_random.t19 FOR VALUES IN (4);
CREATE TABLE part_random.t19_p2 PARTITION OF part_random.t19 FOR VALUES IN (1);
CREATE TABLE part_random.t19_p3 PARTITION OF part_random.t19 FOR VALUES IN (9);
CREATE TABLE part_random.t19_p4 PARTITION OF part_random.t19 FOR VALUES IN (7);
CREATE TABLE part_random.t19_p5 PARTITION OF part_random.t19 FOR VALUES IN (5);
CREATE TABLE part_random.t19_p6 PARTITION OF part_random.t19 FOR VALUES IN (0);
CREATE TABLE part_random.t19_p7 PARTITION OF part_random.t19 FOR VALUES IN (2);
CREATE TABLE part_random.t19_p8 PARTITION OF part_random.t19 FOR VALUES IN (8);

CREATE TABLE part_random.t20 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t20_p0 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE part_random.t20_p1 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE part_random.t20_p2 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE part_random.t20_p3 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE part_random.t20_p4 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE part_random.t20_p5 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE part_random.t20_p6 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE part_random.t20_p7 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE part_random.t20_p8 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE part_random.t20_p9 PARTITION OF part_random.t20 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE part_random.t21 (
    id BIGSERIAL
    ,c1 integer
    ,c2 numeric(9,0)
    ,c3 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t21_p0 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE part_random.t21_p1 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE part_random.t21_p2 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE part_random.t21_p3 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE part_random.t21_p4 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE part_random.t21_p5 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE part_random.t21_p6 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE part_random.t21_p7 PARTITION OF part_random.t21 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE part_random.t22 (
    id BIGSERIAL
    ,c1 date
    ,c2 real
    ,c3 text
    ,c4 boolean
    ,c5 numeric(5,2)
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t22_p0 PARTITION OF part_random.t22 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t22_p1 PARTITION OF part_random.t22 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t22_p2 PARTITION OF part_random.t22 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t22_p3 PARTITION OF part_random.t22 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t22_p4 PARTITION OF part_random.t22 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t22_p5 PARTITION OF part_random.t22 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t22_px PARTITION OF part_random.t22 FOR VALUES FROM ('2030-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t23 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 smallint
    ,c4 bigint
    ,c5 bigint
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t23_p0 PARTITION OF part_random.t23 FOR VALUES IN (7, 9);
CREATE TABLE part_random.t23_p1 PARTITION OF part_random.t23 FOR VALUES IN (5, 6);
CREATE TABLE part_random.t23_p2 PARTITION OF part_random.t23 FOR VALUES IN (4, 3);
CREATE TABLE part_random.t23_p3 PARTITION OF part_random.t23 FOR VALUES IN (0, 2);
CREATE TABLE part_random.t23_p4 PARTITION OF part_random.t23 FOR VALUES IN (8);
CREATE TABLE part_random.t23_p5 PARTITION OF part_random.t23 FOR VALUES IN (1);

CREATE TABLE part_random.t24 (
    id BIGSERIAL
    ,c1 date
    ,c2 boolean
    ,c3 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t24_p0 PARTITION OF part_random.t24 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t24_p1 PARTITION OF part_random.t24 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t24_p2 PARTITION OF part_random.t24 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t24_p3 PARTITION OF part_random.t24 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t24_p4 PARTITION OF part_random.t24 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t24_p5 PARTITION OF part_random.t24 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t24_p6 PARTITION OF part_random.t24 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t24_p7 PARTITION OF part_random.t24 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t24_p8 PARTITION OF part_random.t24 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE part_random.t24_p9 PARTITION OF part_random.t24 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE part_random.t24_px PARTITION OF part_random.t24 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t25 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 text
    ,c4 real
    ,c5 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t25_p0 PARTITION OF part_random.t25 FOR VALUES IN (0, 3, 6, 7);
CREATE TABLE part_random.t25_p1 PARTITION OF part_random.t25 FOR VALUES IN (4, 5, 1);
CREATE TABLE part_random.t25_p2 PARTITION OF part_random.t25 FOR VALUES IN (9, 8, 2);

CREATE TABLE part_random.t26 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 timestamp
    ,c4 numeric(9,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t26_p0 PARTITION OF part_random.t26 FOR VALUES IN (2, 5);
CREATE TABLE part_random.t26_p1 PARTITION OF part_random.t26 FOR VALUES IN (9);
CREATE TABLE part_random.t26_p2 PARTITION OF part_random.t26 FOR VALUES IN (6);
CREATE TABLE part_random.t26_p3 PARTITION OF part_random.t26 FOR VALUES IN (8);
CREATE TABLE part_random.t26_p4 PARTITION OF part_random.t26 FOR VALUES IN (3);
CREATE TABLE part_random.t26_p5 PARTITION OF part_random.t26 FOR VALUES IN (4);
CREATE TABLE part_random.t26_p6 PARTITION OF part_random.t26 FOR VALUES IN (7);
CREATE TABLE part_random.t26_p7 PARTITION OF part_random.t26 FOR VALUES IN (0);
CREATE TABLE part_random.t26_p8 PARTITION OF part_random.t26 FOR VALUES IN (1);

CREATE TABLE part_random.t27 (
    id BIGSERIAL
    ,c1 integer
    ,c2 numeric(5,0)
    ,c3 numeric(10,1)
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t27_p0 PARTITION OF part_random.t27 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t27_p1 PARTITION OF part_random.t27 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t27_p2 PARTITION OF part_random.t27 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t27_p3 PARTITION OF part_random.t27 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t27_p4 PARTITION OF part_random.t27 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t27_p5 PARTITION OF part_random.t27 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t27_p6 PARTITION OF part_random.t27 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t27_p7 PARTITION OF part_random.t27 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t27_p8 PARTITION OF part_random.t27 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t27_p9 PARTITION OF part_random.t27 FOR VALUES FROM (9000000) TO (10000000);
CREATE TABLE part_random.t27_px PARTITION OF part_random.t27 FOR VALUES FROM (10000000) TO (2147483647);

CREATE TABLE part_random.t28 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 real
    ,c4 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t28_p0 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE part_random.t28_p1 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE part_random.t28_p2 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE part_random.t28_p3 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE part_random.t28_p4 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE part_random.t28_p5 PARTITION OF part_random.t28 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE part_random.t29 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 date
    ,c4 char(12)
    ,c5 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t29_p0 PARTITION OF part_random.t29 FOR VALUES IN (8);
CREATE TABLE part_random.t29_p1 PARTITION OF part_random.t29 FOR VALUES IN (3);
CREATE TABLE part_random.t29_p2 PARTITION OF part_random.t29 FOR VALUES IN (0);
CREATE TABLE part_random.t29_p3 PARTITION OF part_random.t29 FOR VALUES IN (7);
CREATE TABLE part_random.t29_p4 PARTITION OF part_random.t29 FOR VALUES IN (2);
CREATE TABLE part_random.t29_p5 PARTITION OF part_random.t29 FOR VALUES IN (4);
CREATE TABLE part_random.t29_p6 PARTITION OF part_random.t29 FOR VALUES IN (1);
CREATE TABLE part_random.t29_p7 PARTITION OF part_random.t29 FOR VALUES IN (5);
CREATE TABLE part_random.t29_p8 PARTITION OF part_random.t29 FOR VALUES IN (6);
CREATE TABLE part_random.t29_p9 PARTITION OF part_random.t29 FOR VALUES IN (9);

CREATE TABLE part_random.t30 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 real
    ,c4 jsonb
    ,c5 varchar(23)
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t30_p0 PARTITION OF part_random.t30 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t30_p1 PARTITION OF part_random.t30 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t30_p2 PARTITION OF part_random.t30 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t30_p3 PARTITION OF part_random.t30 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t30_px PARTITION OF part_random.t30 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t31 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 char(10)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t31_p0 PARTITION OF part_random.t31 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE part_random.t31_p1 PARTITION OF part_random.t31 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE part_random.t31_p2 PARTITION OF part_random.t31 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE part_random.t31_p3 PARTITION OF part_random.t31 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE part_random.t32 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t32_p0 PARTITION OF part_random.t32 FOR VALUES IN (7, 6);
CREATE TABLE part_random.t32_p1 PARTITION OF part_random.t32 FOR VALUES IN (3, 5);
CREATE TABLE part_random.t32_p2 PARTITION OF part_random.t32 FOR VALUES IN (9);
CREATE TABLE part_random.t32_p3 PARTITION OF part_random.t32 FOR VALUES IN (2);
CREATE TABLE part_random.t32_p4 PARTITION OF part_random.t32 FOR VALUES IN (8);
CREATE TABLE part_random.t32_p5 PARTITION OF part_random.t32 FOR VALUES IN (0);
CREATE TABLE part_random.t32_p6 PARTITION OF part_random.t32 FOR VALUES IN (4);
CREATE TABLE part_random.t32_p7 PARTITION OF part_random.t32 FOR VALUES IN (1);

CREATE TABLE part_random.t33 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 date
    ,c4 bytea
    ,c5 varchar(29)
    ,c6 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t33_p0 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t33_p1 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t33_p2 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t33_p3 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t33_p4 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t33_p5 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t33_p6 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t33_p7 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t33_p8 PARTITION OF part_random.t33 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t34 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 numeric(7,2)
    ,c4 smallint
    ,c5 smallint
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t34_p0 PARTITION OF part_random.t34 FOR VALUES IN (6, 7);
CREATE TABLE part_random.t34_p1 PARTITION OF part_random.t34 FOR VALUES IN (9, 1);
CREATE TABLE part_random.t34_p2 PARTITION OF part_random.t34 FOR VALUES IN (3);
CREATE TABLE part_random.t34_p3 PARTITION OF part_random.t34 FOR VALUES IN (5);
CREATE TABLE part_random.t34_p4 PARTITION OF part_random.t34 FOR VALUES IN (2);
CREATE TABLE part_random.t34_p5 PARTITION OF part_random.t34 FOR VALUES IN (8);
CREATE TABLE part_random.t34_p6 PARTITION OF part_random.t34 FOR VALUES IN (4);
CREATE TABLE part_random.t34_p7 PARTITION OF part_random.t34 FOR VALUES IN (0);

CREATE TABLE part_random.t35 (
    id BIGSERIAL
    ,c1 date
    ,c2 bytea
    ,c3 text
    ,c4 char(7)
    ,c5 double precision
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t35_p0 PARTITION OF part_random.t35 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t35_p1 PARTITION OF part_random.t35 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t35_p2 PARTITION OF part_random.t35 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t35_p3 PARTITION OF part_random.t35 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t35_p4 PARTITION OF part_random.t35 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t35_px PARTITION OF part_random.t35 FOR VALUES FROM ('2020-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t36 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 date
    ,c4 varchar(27)
    ,c5 varchar(24)
    ,c6 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t36_p0 PARTITION OF part_random.t36 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t36_p1 PARTITION OF part_random.t36 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t36_p2 PARTITION OF part_random.t36 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t36_p3 PARTITION OF part_random.t36 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t36_p4 PARTITION OF part_random.t36 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t36_p5 PARTITION OF part_random.t36 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t36_px PARTITION OF part_random.t36 FOR VALUES FROM (6000000) TO (2147483647);

CREATE TABLE part_random.t37 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 smallint
    ,c4 date
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t37_p0 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t37_p1 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t37_p2 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t37_p3 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t37_p4 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t37_p5 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t37_p6 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t37_p7 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t37_p8 PARTITION OF part_random.t37 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t38 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(21)
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t38_p0 PARTITION OF part_random.t38 FOR VALUES IN (4, 8, 1, 0);
CREATE TABLE part_random.t38_p1 PARTITION OF part_random.t38 FOR VALUES IN (2, 7, 3);
CREATE TABLE part_random.t38_p2 PARTITION OF part_random.t38 FOR VALUES IN (6, 9, 5);

CREATE TABLE part_random.t39 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t39_p0 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE part_random.t39_p1 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE part_random.t39_p2 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE part_random.t39_p3 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE part_random.t39_p4 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE part_random.t39_p5 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE part_random.t39_p6 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE part_random.t39_p7 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE part_random.t39_p8 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE part_random.t39_p9 PARTITION OF part_random.t39 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE part_random.t40 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 jsonb
    ,c4 bytea
    ,c5 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t40_p0 PARTITION OF part_random.t40 FOR VALUES IN (3, 7);
CREATE TABLE part_random.t40_p1 PARTITION OF part_random.t40 FOR VALUES IN (8, 0);
CREATE TABLE part_random.t40_p2 PARTITION OF part_random.t40 FOR VALUES IN (6, 4);
CREATE TABLE part_random.t40_p3 PARTITION OF part_random.t40 FOR VALUES IN (1);
CREATE TABLE part_random.t40_p4 PARTITION OF part_random.t40 FOR VALUES IN (2);
CREATE TABLE part_random.t40_p5 PARTITION OF part_random.t40 FOR VALUES IN (5);
CREATE TABLE part_random.t40_p6 PARTITION OF part_random.t40 FOR VALUES IN (9);

CREATE TABLE part_random.t41 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 char(7)
    ,c4 bytea
    ,c5 time
    ,c6 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t41_p0 PARTITION OF part_random.t41 FOR VALUES IN (1, 6);
CREATE TABLE part_random.t41_p1 PARTITION OF part_random.t41 FOR VALUES IN (8);
CREATE TABLE part_random.t41_p2 PARTITION OF part_random.t41 FOR VALUES IN (5);
CREATE TABLE part_random.t41_p3 PARTITION OF part_random.t41 FOR VALUES IN (3);
CREATE TABLE part_random.t41_p4 PARTITION OF part_random.t41 FOR VALUES IN (7);
CREATE TABLE part_random.t41_p5 PARTITION OF part_random.t41 FOR VALUES IN (0);
CREATE TABLE part_random.t41_p6 PARTITION OF part_random.t41 FOR VALUES IN (9);
CREATE TABLE part_random.t41_p7 PARTITION OF part_random.t41 FOR VALUES IN (4);
CREATE TABLE part_random.t41_p8 PARTITION OF part_random.t41 FOR VALUES IN (2);

CREATE TABLE part_random.t42 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(8)
    ,c3 numeric(6,1)
    ,c4 real
    ,c5 boolean
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t42_p0 PARTITION OF part_random.t42 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t42_p1 PARTITION OF part_random.t42 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t42_p2 PARTITION OF part_random.t42 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t42_p3 PARTITION OF part_random.t42 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t42_px PARTITION OF part_random.t42 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t43 (
    id BIGSERIAL
    ,c1 date
    ,c2 jsonb
    ,c3 bytea
    ,c4 date
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t43_p0 PARTITION OF part_random.t43 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t43_p1 PARTITION OF part_random.t43 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t43_p2 PARTITION OF part_random.t43 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t43_p3 PARTITION OF part_random.t43 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t43_p4 PARTITION OF part_random.t43 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t43_p5 PARTITION OF part_random.t43 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t43_p6 PARTITION OF part_random.t43 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t43_p7 PARTITION OF part_random.t43 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t43_p8 PARTITION OF part_random.t43 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE part_random.t43_px PARTITION OF part_random.t43 FOR VALUES FROM ('2060-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t44 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 double precision
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t44_p0 PARTITION OF part_random.t44 FOR VALUES IN (7);
CREATE TABLE part_random.t44_p1 PARTITION OF part_random.t44 FOR VALUES IN (5);
CREATE TABLE part_random.t44_p2 PARTITION OF part_random.t44 FOR VALUES IN (1);
CREATE TABLE part_random.t44_p3 PARTITION OF part_random.t44 FOR VALUES IN (2);
CREATE TABLE part_random.t44_p4 PARTITION OF part_random.t44 FOR VALUES IN (8);
CREATE TABLE part_random.t44_p5 PARTITION OF part_random.t44 FOR VALUES IN (0);
CREATE TABLE part_random.t44_p6 PARTITION OF part_random.t44 FOR VALUES IN (4);
CREATE TABLE part_random.t44_p7 PARTITION OF part_random.t44 FOR VALUES IN (3);
CREATE TABLE part_random.t44_p8 PARTITION OF part_random.t44 FOR VALUES IN (9);
CREATE TABLE part_random.t44_p9 PARTITION OF part_random.t44 FOR VALUES IN (6);

CREATE TABLE part_random.t45 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t45_p0 PARTITION OF part_random.t45 FOR VALUES IN (4, 7);
CREATE TABLE part_random.t45_p1 PARTITION OF part_random.t45 FOR VALUES IN (3, 2);
CREATE TABLE part_random.t45_p2 PARTITION OF part_random.t45 FOR VALUES IN (1);
CREATE TABLE part_random.t45_p3 PARTITION OF part_random.t45 FOR VALUES IN (5);
CREATE TABLE part_random.t45_p4 PARTITION OF part_random.t45 FOR VALUES IN (0);
CREATE TABLE part_random.t45_p5 PARTITION OF part_random.t45 FOR VALUES IN (8);
CREATE TABLE part_random.t45_p6 PARTITION OF part_random.t45 FOR VALUES IN (6);
CREATE TABLE part_random.t45_p7 PARTITION OF part_random.t45 FOR VALUES IN (9);

CREATE TABLE part_random.t46 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 date
    ,c4 time
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t46_p0 PARTITION OF part_random.t46 FOR VALUES IN (8, 5);
CREATE TABLE part_random.t46_p1 PARTITION OF part_random.t46 FOR VALUES IN (4);
CREATE TABLE part_random.t46_p2 PARTITION OF part_random.t46 FOR VALUES IN (7);
CREATE TABLE part_random.t46_p3 PARTITION OF part_random.t46 FOR VALUES IN (1);
CREATE TABLE part_random.t46_p4 PARTITION OF part_random.t46 FOR VALUES IN (9);
CREATE TABLE part_random.t46_p5 PARTITION OF part_random.t46 FOR VALUES IN (6);
CREATE TABLE part_random.t46_p6 PARTITION OF part_random.t46 FOR VALUES IN (0);
CREATE TABLE part_random.t46_p7 PARTITION OF part_random.t46 FOR VALUES IN (2);
CREATE TABLE part_random.t46_p8 PARTITION OF part_random.t46 FOR VALUES IN (3);

CREATE TABLE part_random.t47 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 jsonb
    ,c4 boolean
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t47_p0 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE part_random.t47_p1 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE part_random.t47_p2 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE part_random.t47_p3 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE part_random.t47_p4 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE part_random.t47_p5 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE part_random.t47_p6 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE part_random.t47_p7 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE part_random.t47_p8 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE part_random.t47_p9 PARTITION OF part_random.t47 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE part_random.t48 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(14)
    ,c3 text
    ,c4 numeric(5,3)
    ,c5 time
    ,c6 numeric(11,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t48_p0 PARTITION OF part_random.t48 FOR VALUES IN (0, 6, 3);
CREATE TABLE part_random.t48_p1 PARTITION OF part_random.t48 FOR VALUES IN (2, 1, 7);
CREATE TABLE part_random.t48_p2 PARTITION OF part_random.t48 FOR VALUES IN (4, 5);
CREATE TABLE part_random.t48_p3 PARTITION OF part_random.t48 FOR VALUES IN (9, 8);

CREATE TABLE part_random.t49 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 bytea
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t49_p0 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE part_random.t49_p1 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE part_random.t49_p2 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE part_random.t49_p3 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE part_random.t49_p4 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE part_random.t49_p5 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE part_random.t49_p6 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE part_random.t49_p7 PARTITION OF part_random.t49 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE part_random.t50 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(16)
    ,c3 text
    ,c4 char(3)
    ,c5 boolean
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t50_p0 PARTITION OF part_random.t50 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t50_p1 PARTITION OF part_random.t50 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t50_p2 PARTITION OF part_random.t50 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t50_p3 PARTITION OF part_random.t50 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t50_p4 PARTITION OF part_random.t50 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t50_p5 PARTITION OF part_random.t50 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t50_px PARTITION OF part_random.t50 FOR VALUES FROM (6000000) TO (2147483647);

CREATE TABLE part_random.t51 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 jsonb
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t51_p0 PARTITION OF part_random.t51 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t51_p1 PARTITION OF part_random.t51 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t51_p2 PARTITION OF part_random.t51 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t51_p3 PARTITION OF part_random.t51 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t51_px PARTITION OF part_random.t51 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t52 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 timestamp
    ,c4 time
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t52_p0 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE part_random.t52_p1 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE part_random.t52_p2 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE part_random.t52_p3 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE part_random.t52_p4 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE part_random.t52_p5 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE part_random.t52_p6 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE part_random.t52_p7 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE part_random.t52_p8 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE part_random.t52_p9 PARTITION OF part_random.t52 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE part_random.t53 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t53_p0 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE part_random.t53_p1 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE part_random.t53_p2 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE part_random.t53_p3 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE part_random.t53_p4 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE part_random.t53_p5 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE part_random.t53_p6 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE part_random.t53_p7 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE part_random.t53_p8 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE part_random.t53_p9 PARTITION OF part_random.t53 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE part_random.t54 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 uuid
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t54_p0 PARTITION OF part_random.t54 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t54_p1 PARTITION OF part_random.t54 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t54_p2 PARTITION OF part_random.t54 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t54_p3 PARTITION OF part_random.t54 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t54_p4 PARTITION OF part_random.t54 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t54_p5 PARTITION OF part_random.t54 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t54_p6 PARTITION OF part_random.t54 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t54_p7 PARTITION OF part_random.t54 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t54_p8 PARTITION OF part_random.t54 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t54_px PARTITION OF part_random.t54 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE part_random.t55 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t55_p0 PARTITION OF part_random.t55 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t55_p1 PARTITION OF part_random.t55 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t55_p2 PARTITION OF part_random.t55 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t55_p3 PARTITION OF part_random.t55 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t55_px PARTITION OF part_random.t55 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t56 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 timestamp
    ,c4 integer
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t56_p0 PARTITION OF part_random.t56 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t56_p1 PARTITION OF part_random.t56 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t56_p2 PARTITION OF part_random.t56 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t56_p3 PARTITION OF part_random.t56 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t56_px PARTITION OF part_random.t56 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t57 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 bytea
    ,c4 text
    ,c5 varchar(37)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t57_p0 PARTITION OF part_random.t57 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t57_p1 PARTITION OF part_random.t57 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t57_p2 PARTITION OF part_random.t57 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t57_p3 PARTITION OF part_random.t57 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t57_p4 PARTITION OF part_random.t57 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t57_p5 PARTITION OF part_random.t57 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t57_p6 PARTITION OF part_random.t57 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t57_p7 PARTITION OF part_random.t57 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t57_p8 PARTITION OF part_random.t57 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t57_px PARTITION OF part_random.t57 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE part_random.t58 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 smallint
    ,c4 timestamp
    ,c5 text
    ,c6 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t58_p0 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE part_random.t58_p1 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE part_random.t58_p2 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE part_random.t58_p3 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE part_random.t58_p4 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE part_random.t58_p5 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE part_random.t58_p6 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE part_random.t58_p7 PARTITION OF part_random.t58 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE part_random.t59 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 double precision
    ,c4 date
    ,c5 char(8)
    ,c6 char(7)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t59_p0 PARTITION OF part_random.t59 FOR VALUES IN (3, 6);
CREATE TABLE part_random.t59_p1 PARTITION OF part_random.t59 FOR VALUES IN (9, 5);
CREATE TABLE part_random.t59_p2 PARTITION OF part_random.t59 FOR VALUES IN (4);
CREATE TABLE part_random.t59_p3 PARTITION OF part_random.t59 FOR VALUES IN (0);
CREATE TABLE part_random.t59_p4 PARTITION OF part_random.t59 FOR VALUES IN (2);
CREATE TABLE part_random.t59_p5 PARTITION OF part_random.t59 FOR VALUES IN (1);
CREATE TABLE part_random.t59_p6 PARTITION OF part_random.t59 FOR VALUES IN (8);
CREATE TABLE part_random.t59_p7 PARTITION OF part_random.t59 FOR VALUES IN (7);

CREATE TABLE part_random.t60 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 text
    ,c4 uuid
    ,c5 varchar(41)
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t60_p0 PARTITION OF part_random.t60 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t60_p1 PARTITION OF part_random.t60 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t60_p2 PARTITION OF part_random.t60 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t60_px PARTITION OF part_random.t60 FOR VALUES FROM (3000000) TO (2147483647);

CREATE TABLE part_random.t61 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t61_p0 PARTITION OF part_random.t61 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t61_p1 PARTITION OF part_random.t61 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t61_p2 PARTITION OF part_random.t61 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t61_p3 PARTITION OF part_random.t61 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t61_p4 PARTITION OF part_random.t61 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t61_px PARTITION OF part_random.t61 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE part_random.t62 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 bytea
    ,c4 time
    ,c5 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t62_p0 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE part_random.t62_p1 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE part_random.t62_p2 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE part_random.t62_p3 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE part_random.t62_p4 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE part_random.t62_p5 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE part_random.t62_p6 PARTITION OF part_random.t62 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE part_random.t63 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 numeric(4,1)
    ,c4 bytea
    ,c5 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t63_p0 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t63_p1 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t63_p2 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t63_p3 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t63_p4 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t63_p5 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t63_p6 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t63_p7 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t63_p8 PARTITION OF part_random.t63 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t64 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t64_p0 PARTITION OF part_random.t64 FOR VALUES IN (1, 8);
CREATE TABLE part_random.t64_p1 PARTITION OF part_random.t64 FOR VALUES IN (0, 9);
CREATE TABLE part_random.t64_p2 PARTITION OF part_random.t64 FOR VALUES IN (7, 4);
CREATE TABLE part_random.t64_p3 PARTITION OF part_random.t64 FOR VALUES IN (3, 2);
CREATE TABLE part_random.t64_p4 PARTITION OF part_random.t64 FOR VALUES IN (6);
CREATE TABLE part_random.t64_p5 PARTITION OF part_random.t64 FOR VALUES IN (5);

CREATE TABLE part_random.t65 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 varchar(46)
    ,c5 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t65_p0 PARTITION OF part_random.t65 FOR VALUES IN (2);
CREATE TABLE part_random.t65_p1 PARTITION OF part_random.t65 FOR VALUES IN (1);
CREATE TABLE part_random.t65_p2 PARTITION OF part_random.t65 FOR VALUES IN (7);
CREATE TABLE part_random.t65_p3 PARTITION OF part_random.t65 FOR VALUES IN (9);
CREATE TABLE part_random.t65_p4 PARTITION OF part_random.t65 FOR VALUES IN (6);
CREATE TABLE part_random.t65_p5 PARTITION OF part_random.t65 FOR VALUES IN (3);
CREATE TABLE part_random.t65_p6 PARTITION OF part_random.t65 FOR VALUES IN (5);
CREATE TABLE part_random.t65_p7 PARTITION OF part_random.t65 FOR VALUES IN (8);
CREATE TABLE part_random.t65_p8 PARTITION OF part_random.t65 FOR VALUES IN (0);
CREATE TABLE part_random.t65_p9 PARTITION OF part_random.t65 FOR VALUES IN (4);

CREATE TABLE part_random.t66 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 uuid
    ,c4 double precision
    ,c5 date
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t66_p0 PARTITION OF part_random.t66 FOR VALUES IN (6, 9, 4, 7);
CREATE TABLE part_random.t66_p1 PARTITION OF part_random.t66 FOR VALUES IN (2, 8, 5);
CREATE TABLE part_random.t66_p2 PARTITION OF part_random.t66 FOR VALUES IN (0, 1, 3);

CREATE TABLE part_random.t67 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(37)
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t67_p0 PARTITION OF part_random.t67 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t67_p1 PARTITION OF part_random.t67 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t67_p2 PARTITION OF part_random.t67 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t67_p3 PARTITION OF part_random.t67 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t67_p4 PARTITION OF part_random.t67 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t67_p5 PARTITION OF part_random.t67 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t67_p6 PARTITION OF part_random.t67 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t67_p7 PARTITION OF part_random.t67 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t67_p8 PARTITION OF part_random.t67 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t67_p9 PARTITION OF part_random.t67 FOR VALUES FROM (9000000) TO (10000000);
CREATE TABLE part_random.t67_px PARTITION OF part_random.t67 FOR VALUES FROM (10000000) TO (2147483647);

CREATE TABLE part_random.t68 (
    id BIGSERIAL
    ,c1 date
    ,c2 text
    ,c3 time
    ,c4 numeric(4,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t68_p0 PARTITION OF part_random.t68 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t68_p1 PARTITION OF part_random.t68 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t68_p2 PARTITION OF part_random.t68 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t68_p3 PARTITION OF part_random.t68 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t68_px PARTITION OF part_random.t68 FOR VALUES FROM ('2010-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t69 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t69_p0 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t69_p1 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t69_p2 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t69_p3 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t69_p4 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t69_p5 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t69_p6 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t69_p7 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t69_p8 PARTITION OF part_random.t69 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t70 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 real
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t70_p0 PARTITION OF part_random.t70 FOR VALUES IN (2, 4);
CREATE TABLE part_random.t70_p1 PARTITION OF part_random.t70 FOR VALUES IN (3, 0);
CREATE TABLE part_random.t70_p2 PARTITION OF part_random.t70 FOR VALUES IN (9, 7);
CREATE TABLE part_random.t70_p3 PARTITION OF part_random.t70 FOR VALUES IN (5, 1);
CREATE TABLE part_random.t70_p4 PARTITION OF part_random.t70 FOR VALUES IN (8);
CREATE TABLE part_random.t70_p5 PARTITION OF part_random.t70 FOR VALUES IN (6);

CREATE TABLE part_random.t71 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 boolean
    ,c4 varchar(41)
    ,c5 integer
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t71_p0 PARTITION OF part_random.t71 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t71_p1 PARTITION OF part_random.t71 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t71_p2 PARTITION OF part_random.t71 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t71_p3 PARTITION OF part_random.t71 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t71_p4 PARTITION OF part_random.t71 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t71_p5 PARTITION OF part_random.t71 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t71_p6 PARTITION OF part_random.t71 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t71_p7 PARTITION OF part_random.t71 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t71_p8 PARTITION OF part_random.t71 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t71_px PARTITION OF part_random.t71 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE part_random.t72 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 uuid
    ,c4 char(8)
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t72_p0 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE part_random.t72_p1 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE part_random.t72_p2 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE part_random.t72_p3 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE part_random.t72_p4 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE part_random.t72_p5 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE part_random.t72_p6 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE part_random.t72_p7 PARTITION OF part_random.t72 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE part_random.t73 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(13)
    ,c3 boolean
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t73_p0 PARTITION OF part_random.t73 FOR VALUES IN (1, 2);
CREATE TABLE part_random.t73_p1 PARTITION OF part_random.t73 FOR VALUES IN (3, 6);
CREATE TABLE part_random.t73_p2 PARTITION OF part_random.t73 FOR VALUES IN (0);
CREATE TABLE part_random.t73_p3 PARTITION OF part_random.t73 FOR VALUES IN (7);
CREATE TABLE part_random.t73_p4 PARTITION OF part_random.t73 FOR VALUES IN (4);
CREATE TABLE part_random.t73_p5 PARTITION OF part_random.t73 FOR VALUES IN (8);
CREATE TABLE part_random.t73_p6 PARTITION OF part_random.t73 FOR VALUES IN (9);
CREATE TABLE part_random.t73_p7 PARTITION OF part_random.t73 FOR VALUES IN (5);

CREATE TABLE part_random.t74 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 varchar(18)
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t74_p0 PARTITION OF part_random.t74 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE part_random.t74_p1 PARTITION OF part_random.t74 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE part_random.t74_p2 PARTITION OF part_random.t74 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE part_random.t74_p3 PARTITION OF part_random.t74 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE part_random.t75 (
    id BIGSERIAL
    ,c1 date
    ,c2 bytea
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t75_p0 PARTITION OF part_random.t75 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t75_p1 PARTITION OF part_random.t75 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t75_p2 PARTITION OF part_random.t75 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t75_p3 PARTITION OF part_random.t75 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t75_p4 PARTITION OF part_random.t75 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t75_p5 PARTITION OF part_random.t75 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t75_p6 PARTITION OF part_random.t75 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t75_p7 PARTITION OF part_random.t75 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t75_px PARTITION OF part_random.t75 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t76 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 integer
    ,c4 time
    ,c5 double precision
    ,c6 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t76_p0 PARTITION OF part_random.t76 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t76_p1 PARTITION OF part_random.t76 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t76_p2 PARTITION OF part_random.t76 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t76_p3 PARTITION OF part_random.t76 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t76_p4 PARTITION OF part_random.t76 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t76_p5 PARTITION OF part_random.t76 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t76_p6 PARTITION OF part_random.t76 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t76_p7 PARTITION OF part_random.t76 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t76_px PARTITION OF part_random.t76 FOR VALUES FROM (8000000) TO (2147483647);

CREATE TABLE part_random.t77 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 bigint
    ,c4 jsonb
    ,c5 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t77_p0 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE part_random.t77_p1 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE part_random.t77_p2 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE part_random.t77_p3 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE part_random.t77_p4 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE part_random.t77_p5 PARTITION OF part_random.t77 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE part_random.t78 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(1)
    ,c3 text
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t78_p0 PARTITION OF part_random.t78 FOR VALUES IN (1);
CREATE TABLE part_random.t78_p1 PARTITION OF part_random.t78 FOR VALUES IN (0);
CREATE TABLE part_random.t78_p2 PARTITION OF part_random.t78 FOR VALUES IN (8);
CREATE TABLE part_random.t78_p3 PARTITION OF part_random.t78 FOR VALUES IN (3);
CREATE TABLE part_random.t78_p4 PARTITION OF part_random.t78 FOR VALUES IN (2);
CREATE TABLE part_random.t78_p5 PARTITION OF part_random.t78 FOR VALUES IN (9);
CREATE TABLE part_random.t78_p6 PARTITION OF part_random.t78 FOR VALUES IN (7);
CREATE TABLE part_random.t78_p7 PARTITION OF part_random.t78 FOR VALUES IN (5);
CREATE TABLE part_random.t78_p8 PARTITION OF part_random.t78 FOR VALUES IN (4);
CREATE TABLE part_random.t78_p9 PARTITION OF part_random.t78 FOR VALUES IN (6);

CREATE TABLE part_random.t79 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 real
    ,c4 numeric(11,3)
    ,c5 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t79_p0 PARTITION OF part_random.t79 FOR VALUES IN (3, 5);
CREATE TABLE part_random.t79_p1 PARTITION OF part_random.t79 FOR VALUES IN (0, 2);
CREATE TABLE part_random.t79_p2 PARTITION OF part_random.t79 FOR VALUES IN (4, 6);
CREATE TABLE part_random.t79_p3 PARTITION OF part_random.t79 FOR VALUES IN (8);
CREATE TABLE part_random.t79_p4 PARTITION OF part_random.t79 FOR VALUES IN (1);
CREATE TABLE part_random.t79_p5 PARTITION OF part_random.t79 FOR VALUES IN (9);
CREATE TABLE part_random.t79_p6 PARTITION OF part_random.t79 FOR VALUES IN (7);

CREATE TABLE part_random.t80 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 bytea
    ,c4 text
    ,c5 double precision
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t80_p0 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE part_random.t80_p1 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE part_random.t80_p2 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE part_random.t80_p3 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE part_random.t80_p4 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE part_random.t80_p5 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE part_random.t80_p6 PARTITION OF part_random.t80 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE part_random.t81 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t81_p0 PARTITION OF part_random.t81 FOR VALUES IN (8, 9, 2);
CREATE TABLE part_random.t81_p1 PARTITION OF part_random.t81 FOR VALUES IN (6, 5, 1);
CREATE TABLE part_random.t81_p2 PARTITION OF part_random.t81 FOR VALUES IN (3, 4);
CREATE TABLE part_random.t81_p3 PARTITION OF part_random.t81 FOR VALUES IN (0, 7);

CREATE TABLE part_random.t82 (
    id BIGSERIAL
    ,c1 integer
    ,c2 numeric(12,2)
    ,c3 varchar(20)
    ,c4 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t82_p0 PARTITION OF part_random.t82 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t82_p1 PARTITION OF part_random.t82 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t82_p2 PARTITION OF part_random.t82 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t82_p3 PARTITION OF part_random.t82 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t82_p4 PARTITION OF part_random.t82 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t82_p5 PARTITION OF part_random.t82 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t82_p6 PARTITION OF part_random.t82 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t82_p7 PARTITION OF part_random.t82 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t82_px PARTITION OF part_random.t82 FOR VALUES FROM (8000000) TO (2147483647);

CREATE TABLE part_random.t83 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 varchar(9)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t83_p0 PARTITION OF part_random.t83 FOR VALUES IN (8, 3);
CREATE TABLE part_random.t83_p1 PARTITION OF part_random.t83 FOR VALUES IN (9);
CREATE TABLE part_random.t83_p2 PARTITION OF part_random.t83 FOR VALUES IN (1);
CREATE TABLE part_random.t83_p3 PARTITION OF part_random.t83 FOR VALUES IN (6);
CREATE TABLE part_random.t83_p4 PARTITION OF part_random.t83 FOR VALUES IN (5);
CREATE TABLE part_random.t83_p5 PARTITION OF part_random.t83 FOR VALUES IN (4);
CREATE TABLE part_random.t83_p6 PARTITION OF part_random.t83 FOR VALUES IN (2);
CREATE TABLE part_random.t83_p7 PARTITION OF part_random.t83 FOR VALUES IN (0);
CREATE TABLE part_random.t83_p8 PARTITION OF part_random.t83 FOR VALUES IN (7);

CREATE TABLE part_random.t84 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 jsonb
    ,c4 smallint
    ,c5 jsonb
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t84_p0 PARTITION OF part_random.t84 FOR VALUES IN (9, 7, 1);
CREATE TABLE part_random.t84_p1 PARTITION OF part_random.t84 FOR VALUES IN (2, 8, 3);
CREATE TABLE part_random.t84_p2 PARTITION OF part_random.t84 FOR VALUES IN (6, 5);
CREATE TABLE part_random.t84_p3 PARTITION OF part_random.t84 FOR VALUES IN (4, 0);

CREATE TABLE part_random.t85 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 numeric(5,3)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t85_p0 PARTITION OF part_random.t85 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t85_p1 PARTITION OF part_random.t85 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t85_p2 PARTITION OF part_random.t85 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t85_p3 PARTITION OF part_random.t85 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t85_p4 PARTITION OF part_random.t85 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t85_p5 PARTITION OF part_random.t85 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t85_p6 PARTITION OF part_random.t85 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t85_p7 PARTITION OF part_random.t85 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t85_p8 PARTITION OF part_random.t85 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t85_px PARTITION OF part_random.t85 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE part_random.t86 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(49)
    ,c3 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t86_p0 PARTITION OF part_random.t86 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t86_p1 PARTITION OF part_random.t86 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t86_p2 PARTITION OF part_random.t86 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t86_p3 PARTITION OF part_random.t86 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t86_px PARTITION OF part_random.t86 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE part_random.t87 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 time
    ,c4 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t87_p0 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE part_random.t87_p1 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE part_random.t87_p2 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE part_random.t87_p3 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE part_random.t87_p4 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE part_random.t87_p5 PARTITION OF part_random.t87 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE part_random.t88 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 boolean
    ,c4 double precision
    ,c5 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t88_p0 PARTITION OF part_random.t88 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE part_random.t88_p1 PARTITION OF part_random.t88 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE part_random.t88_p2 PARTITION OF part_random.t88 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE part_random.t89 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 numeric(9,3)
    ,c4 char(14)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t89_p0 PARTITION OF part_random.t89 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE part_random.t89_p1 PARTITION OF part_random.t89 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE part_random.t89_p2 PARTITION OF part_random.t89 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE part_random.t90 (
    id BIGSERIAL
    ,c1 date
    ,c2 boolean
    ,c3 timestamp
    ,c4 integer
    ,c5 real
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t90_p0 PARTITION OF part_random.t90 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t90_p1 PARTITION OF part_random.t90 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t90_p2 PARTITION OF part_random.t90 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t90_p3 PARTITION OF part_random.t90 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t90_px PARTITION OF part_random.t90 FOR VALUES FROM ('2010-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t91 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 jsonb
    ,c4 timestamp
    ,c5 double precision
    ,c6 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t91_p0 PARTITION OF part_random.t91 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t91_p1 PARTITION OF part_random.t91 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t91_p2 PARTITION OF part_random.t91 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t91_p3 PARTITION OF part_random.t91 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t91_p4 PARTITION OF part_random.t91 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t91_p5 PARTITION OF part_random.t91 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t91_p6 PARTITION OF part_random.t91 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t91_px PARTITION OF part_random.t91 FOR VALUES FROM (7000000) TO (2147483647);

CREATE TABLE part_random.t92 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t92_p0 PARTITION OF part_random.t92 FOR VALUES IN (7, 9, 8);
CREATE TABLE part_random.t92_p1 PARTITION OF part_random.t92 FOR VALUES IN (4, 5, 6);
CREATE TABLE part_random.t92_p2 PARTITION OF part_random.t92 FOR VALUES IN (2, 3);
CREATE TABLE part_random.t92_p3 PARTITION OF part_random.t92 FOR VALUES IN (0, 1);

CREATE TABLE part_random.t93 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(13)
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t93_p0 PARTITION OF part_random.t93 FOR VALUES IN (5, 2);
CREATE TABLE part_random.t93_p1 PARTITION OF part_random.t93 FOR VALUES IN (4, 8);
CREATE TABLE part_random.t93_p2 PARTITION OF part_random.t93 FOR VALUES IN (6, 9);
CREATE TABLE part_random.t93_p3 PARTITION OF part_random.t93 FOR VALUES IN (7);
CREATE TABLE part_random.t93_p4 PARTITION OF part_random.t93 FOR VALUES IN (3);
CREATE TABLE part_random.t93_p5 PARTITION OF part_random.t93 FOR VALUES IN (0);
CREATE TABLE part_random.t93_p6 PARTITION OF part_random.t93 FOR VALUES IN (1);

CREATE TABLE part_random.t94 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 varchar(5)
    ,c4 numeric(8,3)
    ,c5 boolean
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t94_p0 PARTITION OF part_random.t94 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t94_p1 PARTITION OF part_random.t94 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t94_p2 PARTITION OF part_random.t94 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t94_p3 PARTITION OF part_random.t94 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t94_p4 PARTITION OF part_random.t94 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t94_px PARTITION OF part_random.t94 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE part_random.t95 (
    id BIGSERIAL
    ,c1 integer
    ,c2 numeric(6,1)
    ,c3 boolean
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t95_p0 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE part_random.t95_p1 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE part_random.t95_p2 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE part_random.t95_p3 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE part_random.t95_p4 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE part_random.t95_p5 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE part_random.t95_p6 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE part_random.t95_p7 PARTITION OF part_random.t95 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE part_random.t96 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 text
    ,c4 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t96_p0 PARTITION OF part_random.t96 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE part_random.t96_p1 PARTITION OF part_random.t96 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE part_random.t96_p2 PARTITION OF part_random.t96 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE part_random.t96_p3 PARTITION OF part_random.t96 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE part_random.t96_p4 PARTITION OF part_random.t96 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE part_random.t96_p5 PARTITION OF part_random.t96 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE part_random.t96_p6 PARTITION OF part_random.t96 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE part_random.t96_p7 PARTITION OF part_random.t96 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE part_random.t96_p8 PARTITION OF part_random.t96 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE part_random.t96_px PARTITION OF part_random.t96 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE part_random.t97 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE part_random.t97_p0 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE part_random.t97_p1 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE part_random.t97_p2 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE part_random.t97_p3 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE part_random.t97_p4 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE part_random.t97_p5 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE part_random.t97_p6 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE part_random.t97_p7 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE part_random.t97_p8 PARTITION OF part_random.t97 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE part_random.t98 (
    id BIGSERIAL
    ,c1 date
    ,c2 time
    ,c3 double precision
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE part_random.t98_p0 PARTITION OF part_random.t98 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE part_random.t98_p1 PARTITION OF part_random.t98 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE part_random.t98_p2 PARTITION OF part_random.t98 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE part_random.t98_p3 PARTITION OF part_random.t98 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE part_random.t98_p4 PARTITION OF part_random.t98 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE part_random.t98_p5 PARTITION OF part_random.t98 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE part_random.t98_p6 PARTITION OF part_random.t98 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE part_random.t98_p7 PARTITION OF part_random.t98 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE part_random.t98_px PARTITION OF part_random.t98 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');

CREATE TABLE part_random.t99 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(9,2)
    ,c3 varchar(8)
    ,c4 numeric(9,0)
    ,c5 char(7)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t99_p0 PARTITION OF part_random.t99 FOR VALUES IN (9, 4);
CREATE TABLE part_random.t99_p1 PARTITION OF part_random.t99 FOR VALUES IN (2);
CREATE TABLE part_random.t99_p2 PARTITION OF part_random.t99 FOR VALUES IN (8);
CREATE TABLE part_random.t99_p3 PARTITION OF part_random.t99 FOR VALUES IN (6);
CREATE TABLE part_random.t99_p4 PARTITION OF part_random.t99 FOR VALUES IN (7);
CREATE TABLE part_random.t99_p5 PARTITION OF part_random.t99 FOR VALUES IN (3);
CREATE TABLE part_random.t99_p6 PARTITION OF part_random.t99 FOR VALUES IN (1);
CREATE TABLE part_random.t99_p7 PARTITION OF part_random.t99 FOR VALUES IN (5);
CREATE TABLE part_random.t99_p8 PARTITION OF part_random.t99 FOR VALUES IN (0);

CREATE TABLE part_random.t100 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 char(13)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_random.t100_p0 PARTITION OF part_random.t100 FOR VALUES IN (1, 0, 7);
CREATE TABLE part_random.t100_p1 PARTITION OF part_random.t100 FOR VALUES IN (4, 5, 2);
CREATE TABLE part_random.t100_p2 PARTITION OF part_random.t100 FOR VALUES IN (3, 8);
CREATE TABLE part_random.t100_p3 PARTITION OF part_random.t100 FOR VALUES IN (6, 9);
