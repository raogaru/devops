CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(2)
    ,c3 integer
    ,c4 numeric(12,0)
    ,c5 smallint
    ,c6 bytea
    ,c7 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE bench.t_hash1_p3 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE bench.t_hash1_p4 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE bench.t_hash1_p5 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE bench.t_hash1_p6 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(42)
    ,c3 date
    ,c4 char(13)
    ,c5 real
    ,c6 varchar(18)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 text
    ,c4 real
    ,c5 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 2);
