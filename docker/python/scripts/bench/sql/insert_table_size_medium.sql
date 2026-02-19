INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,11),
    gen_random_uuid(),
    substr(md5(random()::text),1,12),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 1667);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random()*(10^(10-3)-1))::numeric(10,3),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,16),
    (random()*(10^(12-3)-1))::numeric(12,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random() > 0.5),
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 4814);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4313);
