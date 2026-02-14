CREATE TABLE bench.t_random1 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(49)
    ,c3 jsonb
    ,c4 smallint
    ,c5 jsonb
    ,c6 real
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
    ,c1 integer
    ,c2 time
    ,c3 char(14)
    ,c4 char(9)
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
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 numeric(6,2)
    ,c4 date
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_random3_p0 PARTITION OF bench.t_random3 FOR VALUES IN (9, 4);
CREATE TABLE bench.t_random3_p1 PARTITION OF bench.t_random3 FOR VALUES IN (2);
CREATE TABLE bench.t_random3_p2 PARTITION OF bench.t_random3 FOR VALUES IN (3);
CREATE TABLE bench.t_random3_p3 PARTITION OF bench.t_random3 FOR VALUES IN (6);
CREATE TABLE bench.t_random3_p4 PARTITION OF bench.t_random3 FOR VALUES IN (1);
CREATE TABLE bench.t_random3_p5 PARTITION OF bench.t_random3 FOR VALUES IN (7);
CREATE TABLE bench.t_random3_p6 PARTITION OF bench.t_random3 FOR VALUES IN (5);
CREATE TABLE bench.t_random3_p7 PARTITION OF bench.t_random3 FOR VALUES IN (0);
CREATE TABLE bench.t_random3_p8 PARTITION OF bench.t_random3 FOR VALUES IN (8);
