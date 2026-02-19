CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(5,0)
    ,c3 jsonb
    ,c4 bytea
    ,c5 double precision
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random1_p0 PARTITION OF bench.t_random1 FOR VALUES IN (2, 7);
CREATE TABLE bench.t_random1_p1 PARTITION OF bench.t_random1 FOR VALUES IN (4);
CREATE TABLE bench.t_random1_p2 PARTITION OF bench.t_random1 FOR VALUES IN (5);
CREATE TABLE bench.t_random1_p3 PARTITION OF bench.t_random1 FOR VALUES IN (0);
CREATE TABLE bench.t_random1_p4 PARTITION OF bench.t_random1 FOR VALUES IN (3);
CREATE TABLE bench.t_random1_p5 PARTITION OF bench.t_random1 FOR VALUES IN (9);
CREATE TABLE bench.t_random1_p6 PARTITION OF bench.t_random1 FOR VALUES IN (6);
CREATE TABLE bench.t_random1_p7 PARTITION OF bench.t_random1 FOR VALUES IN (8);
CREATE TABLE bench.t_random1_p8 PARTITION OF bench.t_random1 FOR VALUES IN (1);

CREATE TABLE bench.t_random2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random2_p0 PARTITION OF bench.t_random2 FOR VALUES IN (6);
CREATE TABLE bench.t_random2_p1 PARTITION OF bench.t_random2 FOR VALUES IN (3);
CREATE TABLE bench.t_random2_p2 PARTITION OF bench.t_random2 FOR VALUES IN (7);
CREATE TABLE bench.t_random2_p3 PARTITION OF bench.t_random2 FOR VALUES IN (0);
CREATE TABLE bench.t_random2_p4 PARTITION OF bench.t_random2 FOR VALUES IN (9);
CREATE TABLE bench.t_random2_p5 PARTITION OF bench.t_random2 FOR VALUES IN (5);
CREATE TABLE bench.t_random2_p6 PARTITION OF bench.t_random2 FOR VALUES IN (4);
CREATE TABLE bench.t_random2_p7 PARTITION OF bench.t_random2 FOR VALUES IN (1);
CREATE TABLE bench.t_random2_p8 PARTITION OF bench.t_random2 FOR VALUES IN (2);
CREATE TABLE bench.t_random2_p9 PARTITION OF bench.t_random2 FOR VALUES IN (8);

CREATE TABLE bench.t_random3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES IN (1, 8);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES IN (6);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES IN (4);
CREATE TABLE bench.t_random3_p3 PARTITION OF bench.t_random3 FOR VALUES IN (0);
CREATE TABLE bench.t_random3_p4 PARTITION OF bench.t_random3 FOR VALUES IN (2);
CREATE TABLE bench.t_random3_p5 PARTITION OF bench.t_random3 FOR VALUES IN (7);
CREATE TABLE bench.t_random3_p6 PARTITION OF bench.t_random3 FOR VALUES IN (9);
CREATE TABLE bench.t_random3_p7 PARTITION OF bench.t_random3 FOR VALUES IN (3);
CREATE TABLE bench.t_random3_p8 PARTITION OF bench.t_random3 FOR VALUES IN (5);
