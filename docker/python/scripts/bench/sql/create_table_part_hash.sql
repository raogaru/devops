CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 char(6)
    ,c4 boolean
    ,c5 numeric(8,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_hash1_p3 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 varchar(38)
    ,c3 text
    ,c4 uuid
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash2_p3 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash2_p4 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bytea
    ,c3 integer
    ,c4 time
    ,c5 boolean
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 2);
