INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2937);

INSERT INTO bench.t_random2 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2731);

INSERT INTO bench.t_random3 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 2051);
