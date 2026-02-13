CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 timestamp
    ,c4 numeric(7,1)
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_random2_p3 PARTITION OF bench.t_random2 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_random2_px PARTITION OF bench.t_random2 FOR VALUES FROM (4000000) TO (2147483647);

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 jsonb
    ,c4 bytea
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES IN (6, 3);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES IN (2, 1);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES IN (7, 9);
CREATE TABLE bench.t_random3_p3 PARTITION OF bench.t_random3 FOR VALUES IN (8, 0);
CREATE TABLE bench.t_random3_p4 PARTITION OF bench.t_random3 FOR VALUES IN (4);
CREATE TABLE bench.t_random3_p5 PARTITION OF bench.t_random3 FOR VALUES IN (5);

CREATE TABLE bench.t_random4 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 uuid
    ,c4 integer
    ,c5 uuid
    ,c6 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random4_p0 PARTITION OF bench.t_random4 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random4_p1 PARTITION OF bench.t_random4 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random4_p2 PARTITION OF bench.t_random4 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random4_p3 PARTITION OF bench.t_random4 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random4_p4 PARTITION OF bench.t_random4 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random4_px PARTITION OF bench.t_random4 FOR VALUES FROM ('2020-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 uuid
    ,c4 boolean
    ,c5 date
    ,c6 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random5_p0 PARTITION OF bench.t_random5 FOR VALUES IN (0, 1);
CREATE TABLE bench.t_random5_p1 PARTITION OF bench.t_random5 FOR VALUES IN (9, 6);
CREATE TABLE bench.t_random5_p2 PARTITION OF bench.t_random5 FOR VALUES IN (7);
CREATE TABLE bench.t_random5_p3 PARTITION OF bench.t_random5 FOR VALUES IN (2);
CREATE TABLE bench.t_random5_p4 PARTITION OF bench.t_random5 FOR VALUES IN (3);
CREATE TABLE bench.t_random5_p5 PARTITION OF bench.t_random5 FOR VALUES IN (8);
CREATE TABLE bench.t_random5_p6 PARTITION OF bench.t_random5 FOR VALUES IN (4);
CREATE TABLE bench.t_random5_p7 PARTITION OF bench.t_random5 FOR VALUES IN (5);

CREATE TABLE bench.t_random6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 uuid
    ,c4 text
    ,c5 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random6_p0 PARTITION OF bench.t_random6 FOR VALUES IN (4, 9);
CREATE TABLE bench.t_random6_p1 PARTITION OF bench.t_random6 FOR VALUES IN (8, 2);
CREATE TABLE bench.t_random6_p2 PARTITION OF bench.t_random6 FOR VALUES IN (0, 6);
CREATE TABLE bench.t_random6_p3 PARTITION OF bench.t_random6 FOR VALUES IN (5);
CREATE TABLE bench.t_random6_p4 PARTITION OF bench.t_random6 FOR VALUES IN (1);
CREATE TABLE bench.t_random6_p5 PARTITION OF bench.t_random6 FOR VALUES IN (7);
CREATE TABLE bench.t_random6_p6 PARTITION OF bench.t_random6 FOR VALUES IN (3);

CREATE TABLE bench.t_random7 (
    id BIGSERIAL
    ,c1 date
    ,c2 real
    ,c3 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random7_p0 PARTITION OF bench.t_random7 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random7_p1 PARTITION OF bench.t_random7 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random7_p2 PARTITION OF bench.t_random7 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random7_p3 PARTITION OF bench.t_random7 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random7_p4 PARTITION OF bench.t_random7 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random7_p5 PARTITION OF bench.t_random7 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_random7_p6 PARTITION OF bench.t_random7 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_random7_p7 PARTITION OF bench.t_random7 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_random7_px PARTITION OF bench.t_random7 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 double precision
    ,c4 date
    ,c5 char(7)
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random8_p0 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_random8_p1 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_random8_p2 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_random8_p3 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_random8_p4 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_random8_p5 PARTITION OF bench.t_random8 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_random9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 date
    ,c4 jsonb
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random9_p0 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE bench.t_random9_p1 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 1);
CREATE TABLE bench.t_random9_p2 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 2);
CREATE TABLE bench.t_random9_p3 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE bench.t_random9_p4 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 4);
CREATE TABLE bench.t_random9_p5 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 5);
CREATE TABLE bench.t_random9_p6 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 6);
CREATE TABLE bench.t_random9_p7 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 7);
CREATE TABLE bench.t_random9_p8 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 8);
CREATE TABLE bench.t_random9_p9 PARTITION OF bench.t_random9 FOR VALUES WITH (MODULUS 10, REMAINDER 9);

CREATE TABLE bench.t_random10 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random10_p0 PARTITION OF bench.t_random10 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random10_p1 PARTITION OF bench.t_random10 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random10_p2 PARTITION OF bench.t_random10 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random10_px PARTITION OF bench.t_random10 FOR VALUES FROM ('2000-01-01') TO ('9999-01-01');
