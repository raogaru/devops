CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 real
    ,c4 real
    ,c5 date
    ,c6 time
    ,c7 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_hash1_p3 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_hash1_p4 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_hash1_p5 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_hash1_p6 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_hash1_p7 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 time
    ,c4 char(5)
    ,c5 smallint
    ,c6 real
    ,c7 bytea
    ,c8 numeric(6,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash2_p3 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash2_p4 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash2_p5 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 char(2)
    ,c4 uuid
    ,c5 time
    ,c6 varchar(47)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 2);
