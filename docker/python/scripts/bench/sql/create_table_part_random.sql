CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 integer
    ,c4 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_random1_px PARTITION OF bench.t_random1 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 date
    ,c2 uuid
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random2_px PARTITION OF bench.t_random2 FOR VALUES FROM ('2000-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(4)
    ,c3 integer
    ,c4 date
    ,c5 boolean
    ,c6 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_random3_p3 PARTITION OF bench.t_random3 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_random3_p4 PARTITION OF bench.t_random3 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_random3_p5 PARTITION OF bench.t_random3 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_random3_p6 PARTITION OF bench.t_random3 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_random3_p7 PARTITION OF bench.t_random3 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_random3_p8 PARTITION OF bench.t_random3 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_random3_p9 PARTITION OF bench.t_random3 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE bench.t_random3_px PARTITION OF bench.t_random3 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_random4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 bytea
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random4_p0 PARTITION OF bench.t_random4 FOR VALUES IN (7, 0, 2, 1);
CREATE TABLE bench.t_random4_p1 PARTITION OF bench.t_random4 FOR VALUES IN (4, 9, 5);
CREATE TABLE bench.t_random4_p2 PARTITION OF bench.t_random4 FOR VALUES IN (3, 6, 8);

CREATE TABLE bench.t_random5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random5_p0 PARTITION OF bench.t_random5 FOR VALUES IN (2, 7);
CREATE TABLE bench.t_random5_p1 PARTITION OF bench.t_random5 FOR VALUES IN (9, 6);
CREATE TABLE bench.t_random5_p2 PARTITION OF bench.t_random5 FOR VALUES IN (5, 8);
CREATE TABLE bench.t_random5_p3 PARTITION OF bench.t_random5 FOR VALUES IN (1, 4);
CREATE TABLE bench.t_random5_p4 PARTITION OF bench.t_random5 FOR VALUES IN (0, 3);

CREATE TABLE bench.t_random6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 boolean
    ,c4 varchar(17)
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random6_p0 PARTITION OF bench.t_random6 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_random6_p1 PARTITION OF bench.t_random6 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_random6_p2 PARTITION OF bench.t_random6 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_random6_p3 PARTITION OF bench.t_random6 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_random7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 double precision
    ,c4 varchar(32)
    ,c5 time
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random7_p0 PARTITION OF bench.t_random7 FOR VALUES IN (8, 9);
CREATE TABLE bench.t_random7_p1 PARTITION OF bench.t_random7 FOR VALUES IN (1, 5);
CREATE TABLE bench.t_random7_p2 PARTITION OF bench.t_random7 FOR VALUES IN (3, 7);
CREATE TABLE bench.t_random7_p3 PARTITION OF bench.t_random7 FOR VALUES IN (6, 2);
CREATE TABLE bench.t_random7_p4 PARTITION OF bench.t_random7 FOR VALUES IN (4, 0);

CREATE TABLE bench.t_random8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(8,0)
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random8_p0 PARTITION OF bench.t_random8 FOR VALUES IN (6, 4, 2, 7);
CREATE TABLE bench.t_random8_p1 PARTITION OF bench.t_random8 FOR VALUES IN (1, 0, 8);
CREATE TABLE bench.t_random8_p2 PARTITION OF bench.t_random8 FOR VALUES IN (5, 9, 3);

CREATE TABLE bench.t_random9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random9_p0 PARTITION OF bench.t_random9 FOR VALUES IN (7, 6, 3, 5);
CREATE TABLE bench.t_random9_p1 PARTITION OF bench.t_random9 FOR VALUES IN (0, 2, 1);
CREATE TABLE bench.t_random9_p2 PARTITION OF bench.t_random9 FOR VALUES IN (9, 4, 8);

CREATE TABLE bench.t_random10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(34)
    ,c3 integer
    ,c4 bigint
    ,c5 char(4)
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random10_p0 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE bench.t_random10_p1 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE bench.t_random10_p2 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE bench.t_random10_p3 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE bench.t_random10_p4 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE bench.t_random10_p5 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE bench.t_random10_p6 PARTITION OF bench.t_random10 FOR VALUES WITH (MODULUS 7, REMAINDER 6);
