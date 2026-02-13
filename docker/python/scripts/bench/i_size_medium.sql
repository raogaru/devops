INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*(10^(5-3)-1))::numeric(5,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 47205);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,10),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*(10^(5-1)-1))::numeric(5,1)
FROM generate_series(1, 40065);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 31706);

INSERT INTO bench.t_medium4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random() > 0.5),
    (random()*(10^(9-3)-1))::numeric(9,3),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 43825);

INSERT INTO bench.t_medium5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    gen_random_uuid(),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*(10^(7-3)-1))::numeric(7,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,4),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*36)::int))
FROM generate_series(1, 43962);

INSERT INTO bench.t_medium6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,10),
    (random() > 0.5),
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,17)
FROM generate_series(1, 29159);

INSERT INTO bench.t_medium7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(6-2)-1))::numeric(6,2),
    (random()*(10^(7-0)-1))::numeric(7,0),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-3)-1))::numeric(10,3),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 18407);

INSERT INTO bench.t_medium8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 24713);

INSERT INTO bench.t_medium9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*(10^(8-3)-1))::numeric(8,3),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-0)-1))::numeric(5,0),
    gen_random_uuid(),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*(10^(11-2)-1))::numeric(11,2),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    (random() > 0.5),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 15755);

INSERT INTO bench.t_medium10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random() > 0.5),
    gen_random_uuid(),
    (random()*(10^(6-2)-1))::numeric(6,2),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    (random()*(10^(6-0)-1))::numeric(6,0),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 29231);
