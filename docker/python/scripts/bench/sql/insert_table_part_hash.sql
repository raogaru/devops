INSERT INTO bench.t_hash1 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3171);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 3075);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,2),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*47)::int))
FROM generate_series(1, 3837);
