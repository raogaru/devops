INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-1)-1))::numeric(7,1),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1563);

INSERT INTO bench.t_random2 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3126);

INSERT INTO bench.t_random3 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1510);

INSERT INTO bench.t_random4 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2146);

INSERT INTO bench.t_random5 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 2181);

INSERT INTO bench.t_random6 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 3548);

INSERT INTO bench.t_random7 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2955);

INSERT INTO bench.t_random8 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,7),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4068);

INSERT INTO bench.t_random9 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3566);

INSERT INTO bench.t_random10 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2609);
