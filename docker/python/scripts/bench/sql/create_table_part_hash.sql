CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 bigint
    ,c4 integer
    ,c5 varchar(37)
    ,c6 numeric(8,0)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 varchar(30)
    ,c4 text
    ,c5 text
    ,c6 real
    ,c7 uuid
    ,c8 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_hash2_p3 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 time
    ,c4 smallint
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash3_p3 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash3_p4 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 5, REMAINDER 4);
