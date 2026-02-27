INSERT INTO bench.tsl1 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,19),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 13423);

INSERT INTO bench.tsl2 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,19),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 17412);

INSERT INTO bench.tsl3 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 16011);

INSERT INTO bench.tsl4 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 12447);

INSERT INTO bench.tsl5 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 17549);

INSERT INTO bench.tsl6 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 13589);

INSERT INTO bench.tsl7 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 19985);

INSERT INTO bench.tsl8 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 12000);

INSERT INTO bench.tsl9 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,1),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 15040);

INSERT INTO bench.tsl10 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 15509);
