INSERT INTO bench.t_range1 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 2977);

INSERT INTO bench.t_range2 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 4675);

INSERT INTO bench.t_range3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 4341);
