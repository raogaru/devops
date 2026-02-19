INSERT INTO bench.t_range1 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 2548);

INSERT INTO bench.t_range2 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3229);

INSERT INTO bench.t_range3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2884);
