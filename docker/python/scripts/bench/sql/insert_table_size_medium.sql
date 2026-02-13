INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    (random()*10000)::double precision,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2199);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    gen_random_uuid(),
    (random()*(10^(8-2)-1))::numeric(8,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,11),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3647);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    substr(md5(random()::text),1,17),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1182);

INSERT INTO bench.t_medium4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(5-2)-1))::numeric(5,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,20),
    substr(md5(random()::text),1,20),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1533);

INSERT INTO bench.t_medium5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random() > 0.5),
    substr(md5(random()::text),1,8),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*(10^(10-2)-1))::numeric(10,2),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4992);

INSERT INTO bench.t_medium6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    substr(md5(random()::text),1,17),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(4-2)-1))::numeric(4,2),
    floor(random()*2147483647)::int,
    (random()*(10^(7-1)-1))::numeric(7,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1859);

INSERT INTO bench.t_medium7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*10000)::real,
    (random()*(10^(4-3)-1))::numeric(4,3),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,6),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2865);

INSERT INTO bench.t_medium8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 2978);

INSERT INTO bench.t_medium9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*27)::int))
FROM generate_series(1, 4693);

INSERT INTO bench.t_medium10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*(10^(6-1)-1))::numeric(6,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3193);
