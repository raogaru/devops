INSERT INTO job1.t1 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 295);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    substr(md5(random()::text),1,15),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 282);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6)
SELECT
    substr(md5(random()::text),1,7),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,12)
FROM generate_series(1, 495);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,7),
    (random()*10000)::double precision,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 371);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,11),
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 444);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,9),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 201);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,11),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 287);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 500);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5,c6)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 381);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,12),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    (random()*(10^(9-0)-1))::numeric(9,0),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 319);
