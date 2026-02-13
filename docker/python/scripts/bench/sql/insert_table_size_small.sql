INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random()*(10^(11-0)-1))::numeric(11,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(4-2)-1))::numeric(4,2),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 13);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,19),
    gen_random_uuid(),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint
FROM generate_series(1, 18);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(11-3)-1))::numeric(11,3),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,2)
FROM generate_series(1, 19);

INSERT INTO bench.t_small4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*10000)::real,
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 20);

INSERT INTO bench.t_small5 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random()*10000)::real,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 10);

INSERT INTO bench.t_small6 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 16);

INSERT INTO bench.t_small7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 15);

INSERT INTO bench.t_small8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 19);

INSERT INTO bench.t_small9 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(8-2)-1))::numeric(8,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 17);

INSERT INTO bench.t_small10 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 19);
