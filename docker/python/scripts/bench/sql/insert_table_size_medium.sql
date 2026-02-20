INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,17),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 2929);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random()*(10^(8-2)-1))::numeric(8,2),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random()*(10^(4-3)-1))::numeric(4,3),
    (random()*(10^(10-3)-1))::numeric(10,3)
FROM generate_series(1, 1464);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 1303);
