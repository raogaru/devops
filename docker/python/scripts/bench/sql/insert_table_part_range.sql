INSERT INTO bench.t_range1 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1772);

INSERT INTO bench.t_range2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(5-3)-1))::numeric(5,3),
    (random()*10000)::real
FROM generate_series(1, 1024);

INSERT INTO bench.t_range3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 2552);

INSERT INTO bench.t_range4 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1915);

INSERT INTO bench.t_range5 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 2582);

INSERT INTO bench.t_range6 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 3783);

INSERT INTO bench.t_range7 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 1545);

INSERT INTO bench.t_range8 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2237);

INSERT INTO bench.t_range9 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 2594);

INSERT INTO bench.t_range10 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,6),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1748);
