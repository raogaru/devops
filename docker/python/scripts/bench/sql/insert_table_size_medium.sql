INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(4-1)-1))::numeric(4,1),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,20),
    (random() > 0.5)
FROM generate_series(1, 2089);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 3584);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,5),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,18),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    gen_random_uuid()
FROM generate_series(1, 2586);
