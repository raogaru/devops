INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 15);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 18);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,16),
    floor(random()*2147483647)::int
FROM generate_series(1, 19);
