INSERT INTO bench.t_range1 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1333);

INSERT INTO bench.t_range2 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 2295);

INSERT INTO bench.t_range3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,11),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 1162);

INSERT INTO bench.t_range4 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 1206);

INSERT INTO bench.t_range5 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2870);

INSERT INTO bench.t_range6 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1334);

INSERT INTO bench.t_range7 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(12-1)-1))::numeric(12,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4598);

INSERT INTO bench.t_range8 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    substr(md5(random()::text),1,12),
    substr(md5(random()::text),1,8),
    (random()*10000)::real
FROM generate_series(1, 2596);

INSERT INTO bench.t_range9 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,10),
    (random()*10000)::real
FROM generate_series(1, 4060);

INSERT INTO bench.t_range10 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 4488);
