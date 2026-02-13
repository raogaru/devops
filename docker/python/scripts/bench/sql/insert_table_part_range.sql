INSERT INTO bench.t_range1 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    (random() > 0.5)
FROM generate_series(1, 3045);

INSERT INTO bench.t_range2 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 1966);

INSERT INTO bench.t_range3 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,10),
    (random()*(10^(7-3)-1))::numeric(7,3),
    (random()*10000)::real
FROM generate_series(1, 1796);

INSERT INTO bench.t_range4 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1309);

INSERT INTO bench.t_range5 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1093);

INSERT INTO bench.t_range6 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4916);

INSERT INTO bench.t_range7 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1708);

INSERT INTO bench.t_range8 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1420);

INSERT INTO bench.t_range9 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 3345);

INSERT INTO bench.t_range10 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 3688);
