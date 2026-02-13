CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 date
    ,c2 double precision
    ,c3 date
    ,c4 numeric(4,1)
    ,c5 bigint
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random1_p5 PARTITION OF bench.t_random1 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_random1_p6 PARTITION OF bench.t_random1 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_random1_p7 PARTITION OF bench.t_random1 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_random1_p8 PARTITION OF bench.t_random1 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_random1_p9 PARTITION OF bench.t_random1 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE bench.t_random1_px PARTITION OF bench.t_random1 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 date
    ,c2 real
    ,c3 uuid
    ,c4 bytea
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random2_p3 PARTITION OF bench.t_random2 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random2_p4 PARTITION OF bench.t_random2 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random2_p5 PARTITION OF bench.t_random2 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_random2_p6 PARTITION OF bench.t_random2 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_random2_p7 PARTITION OF bench.t_random2 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_random2_p8 PARTITION OF bench.t_random2 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_random2_px PARTITION OF bench.t_random2 FOR VALUES FROM ('2060-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE bench.t_random3_p3 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE bench.t_random3_p4 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE bench.t_random3_p5 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE bench.t_random3_p6 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE bench.t_random3_p7 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE bench.t_random3_p8 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 9, REMAINDER 8);

CREATE TABLE bench.t_random4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 double precision
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random4_p0 PARTITION OF bench.t_random4 FOR VALUES IN (1);
CREATE TABLE bench.t_random4_p1 PARTITION OF bench.t_random4 FOR VALUES IN (7);
CREATE TABLE bench.t_random4_p2 PARTITION OF bench.t_random4 FOR VALUES IN (4);
CREATE TABLE bench.t_random4_p3 PARTITION OF bench.t_random4 FOR VALUES IN (9);
CREATE TABLE bench.t_random4_p4 PARTITION OF bench.t_random4 FOR VALUES IN (3);
CREATE TABLE bench.t_random4_p5 PARTITION OF bench.t_random4 FOR VALUES IN (6);
CREATE TABLE bench.t_random4_p6 PARTITION OF bench.t_random4 FOR VALUES IN (8);
CREATE TABLE bench.t_random4_p7 PARTITION OF bench.t_random4 FOR VALUES IN (2);
CREATE TABLE bench.t_random4_p8 PARTITION OF bench.t_random4 FOR VALUES IN (5);
CREATE TABLE bench.t_random4_p9 PARTITION OF bench.t_random4 FOR VALUES IN (0);

CREATE TABLE bench.t_random5 (
    id BIGSERIAL
    ,c1 date
    ,c2 char(1)
    ,c3 varchar(50)
    ,c4 time
    ,c5 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random5_p0 PARTITION OF bench.t_random5 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random5_p1 PARTITION OF bench.t_random5 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random5_p2 PARTITION OF bench.t_random5 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random5_p3 PARTITION OF bench.t_random5 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random5_p4 PARTITION OF bench.t_random5 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random5_p5 PARTITION OF bench.t_random5 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_random5_p6 PARTITION OF bench.t_random5 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_random5_px PARTITION OF bench.t_random5 FOR VALUES FROM ('2040-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 uuid
    ,c4 jsonb
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random6_p0 PARTITION OF bench.t_random6 FOR VALUES IN (8, 4);
CREATE TABLE bench.t_random6_p1 PARTITION OF bench.t_random6 FOR VALUES IN (9, 3);
CREATE TABLE bench.t_random6_p2 PARTITION OF bench.t_random6 FOR VALUES IN (7);
CREATE TABLE bench.t_random6_p3 PARTITION OF bench.t_random6 FOR VALUES IN (0);
CREATE TABLE bench.t_random6_p4 PARTITION OF bench.t_random6 FOR VALUES IN (1);
CREATE TABLE bench.t_random6_p5 PARTITION OF bench.t_random6 FOR VALUES IN (6);
CREATE TABLE bench.t_random6_p6 PARTITION OF bench.t_random6 FOR VALUES IN (2);
CREATE TABLE bench.t_random6_p7 PARTITION OF bench.t_random6 FOR VALUES IN (5);

CREATE TABLE bench.t_random7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 integer
    ,c4 numeric(5,0)
    ,c5 text
    ,c6 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random7_p0 PARTITION OF bench.t_random7 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_random7_p1 PARTITION OF bench.t_random7 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_random7_p2 PARTITION OF bench.t_random7 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_random7_p3 PARTITION OF bench.t_random7 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_random7_p4 PARTITION OF bench.t_random7 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_random8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 varchar(50)
    ,c4 bigint
    ,c5 smallint
    ,c6 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random8_p0 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_random8_p1 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_random8_p2 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_random8_p3 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_random8_p4 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_random8_p5 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_random8_p6 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_random8_p7 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE bench.t_random9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 varchar(8)
    ,c4 bigint
    ,c5 smallint
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random9_p0 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_random9_p1 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_random9_p2 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_random9_p3 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_random9_p4 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_random10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 numeric(12,3)
    ,c4 time
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random10_p0 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 0);
CREATE TABLE bench.t_random10_p1 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 1);
CREATE TABLE bench.t_random10_p2 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 2);
CREATE TABLE bench.t_random10_p3 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 3);
CREATE TABLE bench.t_random10_p4 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 4);
CREATE TABLE bench.t_random10_p5 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 5);
CREATE TABLE bench.t_random10_p6 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 6);
CREATE TABLE bench.t_random10_p7 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 7);
CREATE TABLE bench.t_random10_p8 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 9, REMAINDER 8);
