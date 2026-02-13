INSERT INTO bench.t_large1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 190495);

INSERT INTO bench.t_large2 (c1,c2,c3)
SELECT
    (random()*(10^(11-3)-1))::numeric(11,3),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*25)::int))
FROM generate_series(1, 176602);

INSERT INTO bench.t_large3 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 129986);

INSERT INTO bench.t_large4 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 124416);

INSERT INTO bench.t_large5 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 126100);

INSERT INTO bench.t_large6 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 166645);

INSERT INTO bench.t_large7 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,14),
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 175856);

INSERT INTO bench.t_large8 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 170232);

INSERT INTO bench.t_large9 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 135275);

INSERT INTO bench.t_large10 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 106649);
