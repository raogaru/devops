CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 date
    ,c4 real
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_random1_p5 PARTITION OF bench.t_random1 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_random1_p6 PARTITION OF bench.t_random1 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE bench.t_random1_p7 PARTITION OF bench.t_random1 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE bench.t_random1_p8 PARTITION OF bench.t_random1 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE bench.t_random1_px PARTITION OF bench.t_random1 FOR VALUES FROM (9000000) TO (2147483647);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 double precision
    ,c4 time
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
CREATE TABLE bench.t_random2_p9 PARTITION OF bench.t_random2 FOR VALUES FROM (9000000) TO (10000000);
CREATE TABLE bench.t_random2_px PARTITION OF bench.t_random2 FOR VALUES FROM (10000000) TO (2147483647);

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(7)
    ,c3 integer
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_random3_px PARTITION OF bench.t_random3 FOR VALUES FROM (3000000) TO (2147483647);
