INSERT INTO bench.tsm1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5)
FROM generate_series(1, 4612);

INSERT INTO bench.tsm2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,12),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 2755);

INSERT INTO bench.tsm3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random() > 0.5),
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1558);

INSERT INTO bench.tsm4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random()*(10^(7-2)-1))::numeric(7,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    substr(md5(random()::text),1,30),
    (random()*(10^(4-0)-1))::numeric(4,0),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 2241);

INSERT INTO bench.tsm5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,19),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    (random()*10000)::real,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3925);

INSERT INTO bench.tsm6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(8-2)-1))::numeric(8,2),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 4831);

INSERT INTO bench.tsm7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 4950);

INSERT INTO bench.tsm8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-0)-1))::numeric(10,0),
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 2199);

INSERT INTO bench.tsm9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*(10^(4-2)-1))::numeric(4,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    (random()*(10^(6-1)-1))::numeric(6,1),
    substr(md5(random()::text),1,10),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3547);

INSERT INTO bench.tsm10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 3337);
