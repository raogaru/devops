INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    (random()*(10^(7-2)-1))::numeric(7,2),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1304);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    (random()*10000)::real,
    substr(md5(random()::text),1,18),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 2187);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    substr(md5(random()::text),1,20),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,2),
    gen_random_uuid(),
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,17),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,19),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1420);

INSERT INTO bench.t_medium4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random() > 0.5),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random() > 0.5),
    (random()*(10^(11-3)-1))::numeric(11,3)
FROM generate_series(1, 3993);

INSERT INTO bench.t_medium5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*10000)::real,
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4697);

INSERT INTO bench.t_medium6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,4),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,8),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1336);

INSERT INTO bench.t_medium7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(11-2)-1))::numeric(11,2),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,18),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1319);

INSERT INTO bench.t_medium8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    gen_random_uuid(),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,2),
    substr(md5(random()::text),1,(1+floor(random()*46)::int))
FROM generate_series(1, 1232);

INSERT INTO bench.t_medium9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*(10^(4-1)-1))::numeric(4,1),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 1654);

INSERT INTO bench.t_medium10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random() > 0.5),
    substr(md5(random()::text),1,15),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,17)
FROM generate_series(1, 2786);
