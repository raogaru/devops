CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(10,0)
    ,c3 text
    ,c4 char(14)
    ,c5 numeric(8,1)
    ,c6 varchar(22)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES IN (2, 3);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES IN (9, 8);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES IN (0, 6);
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES IN (4);
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES IN (5);
CREATE TABLE bench.t_random1_p5 PARTITION OF bench.t_random1 FOR VALUES IN (1);
CREATE TABLE bench.t_random1_p6 PARTITION OF bench.t_random1 FOR VALUES IN (7);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 uuid
    ,c4 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_random2_p3 PARTITION OF bench.t_random2 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_random2_p4 PARTITION OF bench.t_random2 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_random2_p5 PARTITION OF bench.t_random2 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_random2_p6 PARTITION OF bench.t_random2 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE bench.t_random2_p7 PARTITION OF bench.t_random2 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE bench.t_random2_p8 PARTITION OF bench.t_random2 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE bench.t_random2_px PARTITION OF bench.t_random2 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 text
    ,c4 bytea
    ,c5 char(19)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES WITH (MODULUS 3, REMAINDER 2);
