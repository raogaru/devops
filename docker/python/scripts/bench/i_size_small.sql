INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 16);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 16);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(11-1)-1))::numeric(11,1),
    substr(md5(random()::text),1,4),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,17),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 18);

INSERT INTO bench.t_small4 (c1,c2,c3,c4,c5,c6)
SELECT
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 11);

INSERT INTO bench.t_small5 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-0)-1))::numeric(9,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 19);

INSERT INTO bench.t_small6 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    (random()*(10^(11-3)-1))::numeric(11,3),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 11);

INSERT INTO bench.t_small7 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 20);

INSERT INTO bench.t_small8 (c1,c2,c3,c4,c5,c6)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    (random()*(10^(6-1)-1))::numeric(6,1),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 17);

INSERT INTO bench.t_small9 (c1,c2,c3,c4,c5,c6)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,4),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,6),
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 10);

INSERT INTO bench.t_small10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 18);
