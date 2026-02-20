CREATE TABLE bench.t_range1 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 varchar(9)
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
    ,c2 jsonb
    ,c3 text
    ,c4 jsonb
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range2_p0 PARTITION OF bench.t_range2 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range2_p1 PARTITION OF bench.t_range2 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range2_p2 PARTITION OF bench.t_range2 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range2_p3 PARTITION OF bench.t_range2 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range2_p4 PARTITION OF bench.t_range2 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range2_p5 PARTITION OF bench.t_range2 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_range2_px PARTITION OF bench.t_range2 FOR VALUES FROM (6000000) TO (2147483647);

CREATE TABLE bench.t_range3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 double precision
    ,c4 uuid
    ,c5 text
    ,c6 numeric(9,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range3_p0 PARTITION OF bench.t_range3 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range3_p1 PARTITION OF bench.t_range3 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range3_p2 PARTITION OF bench.t_range3 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range3_p3 PARTITION OF bench.t_range3 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range3_p4 PARTITION OF bench.t_range3 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range3_p5 PARTITION OF bench.t_range3 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_range3_p6 PARTITION OF bench.t_range3 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE bench.t_range3_p7 PARTITION OF bench.t_range3 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE bench.t_range3_px PARTITION OF bench.t_range3 FOR VALUES FROM (8000000) TO (2147483647);
