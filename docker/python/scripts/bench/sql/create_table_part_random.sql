CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 boolean
    ,c4 varchar(21)
    ,c5 numeric(11,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES IN (4, 3);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES IN (5, 8);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES IN (1, 9);
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES IN (7, 0);
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES IN (6, 2);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 time
    ,c4 boolean
    ,c5 uuid
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_random2_p3 PARTITION OF bench.t_random2 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_random2_p4 PARTITION OF bench.t_random2 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(15)
    ,c3 jsonb
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
CREATE TABLE bench.t_random3_px PARTITION OF bench.t_random3 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');
