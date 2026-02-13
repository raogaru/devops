INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 18);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 19);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,8),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    (random()*10000)::real
FROM generate_series(1, 17);

INSERT INTO bench.t_small4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*(10^(6-1)-1))::numeric(6,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 15);

INSERT INTO bench.t_small5 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,17),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 14);

INSERT INTO bench.t_small6 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,20),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 12);

INSERT INTO bench.t_small7 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 15);

INSERT INTO bench.t_small8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    substr(md5(random()::text),1,2),
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 18);

INSERT INTO bench.t_small9 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(9-3)-1))::numeric(9,3),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 12);

INSERT INTO bench.t_small10 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-3)-1))::numeric(10,3),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,7)
FROM generate_series(1, 15);
