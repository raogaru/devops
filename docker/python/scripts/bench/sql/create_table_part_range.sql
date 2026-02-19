CREATE TABLE bench.t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 bigint
    ,c3 integer
    ,c4 uuid
    ,c5 boolean
    ,c6 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range1_p0 PARTITION OF bench.t_range1 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range1_p1 PARTITION OF bench.t_range1 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range1_p2 PARTITION OF bench.t_range1 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range1_p3 PARTITION OF bench.t_range1 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range1_p4 PARTITION OF bench.t_range1 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range1_p5 PARTITION OF bench.t_range1 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range1_p6 PARTITION OF bench.t_range1 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range1_px PARTITION OF bench.t_range1 FOR VALUES FROM ('2040-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(16)
    ,c3 double precision
    ,c4 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range2_p0 PARTITION OF bench.t_range2 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range2_p1 PARTITION OF bench.t_range2 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range2_p2 PARTITION OF bench.t_range2 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range2_p3 PARTITION OF bench.t_range2 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range2_p4 PARTITION OF bench.t_range2 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range2_px PARTITION OF bench.t_range2 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE bench.t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 timestamp
    ,c3 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range3_p0 PARTITION OF bench.t_range3 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range3_p1 PARTITION OF bench.t_range3 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range3_p2 PARTITION OF bench.t_range3 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range3_p3 PARTITION OF bench.t_range3 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range3_p4 PARTITION OF bench.t_range3 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range3_p5 PARTITION OF bench.t_range3 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range3_p6 PARTITION OF bench.t_range3 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range3_p7 PARTITION OF bench.t_range3 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_range3_px PARTITION OF bench.t_range3 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');
