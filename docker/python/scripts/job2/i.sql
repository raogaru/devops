INSERT INTO job2.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,1),
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random()*(10^(5-2)-1))::numeric(5,2),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 34378);

INSERT INTO job2.t2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random()*(10^(10-1)-1))::numeric(10,1),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 43232);

INSERT INTO job2.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,18),
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,7),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random() > 0.5),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    gen_random_uuid(),
    (random()*(10^(10-3)-1))::numeric(10,3),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 37920);

INSERT INTO job2.t4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 37163);

INSERT INTO job2.t5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,12),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,5),
    (random() > 0.5)
FROM generate_series(1, 14763);

INSERT INTO job2.t6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(6-0)-1))::numeric(6,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*(10^(5-1)-1))::numeric(5,1),
    floor(random()*2147483647)::int
FROM generate_series(1, 39090);

INSERT INTO job2.t7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(10-2)-1))::numeric(10,2),
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(8-0)-1))::numeric(8,0),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 13485);

INSERT INTO job2.t8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid(),
    (random()*(10^(9-1)-1))::numeric(9,1),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 40777);

INSERT INTO job2.t9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*(10^(11-0)-1))::numeric(11,0),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,17),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random()*10000)::real
FROM generate_series(1, 37747);

INSERT INTO job2.t10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,13),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    substr(md5(random()::text),1,10),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::real,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 19953);

INSERT INTO job2.t11 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-0)-1))::numeric(9,0),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random()*(10^(6-3)-1))::numeric(6,3),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*7)::int))
FROM generate_series(1, 17569);

INSERT INTO job2.t12 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    gen_random_uuid(),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(12-3)-1))::numeric(12,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,9),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 34048);

INSERT INTO job2.t13 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 21563);

INSERT INTO job2.t14 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    (random()*(10^(4-1)-1))::numeric(4,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,15),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 35436);

INSERT INTO job2.t15 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    substr(md5(random()::text),1,17),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 22835);

INSERT INTO job2.t16 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-3)-1))::numeric(6,3),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*(10^(7-0)-1))::numeric(7,0)
FROM generate_series(1, 32017);

INSERT INTO job2.t17 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,1),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,10),
    (random() > 0.5),
    substr(md5(random()::text),1,14),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    gen_random_uuid()
FROM generate_series(1, 47483);

INSERT INTO job2.t18 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 27417);

INSERT INTO job2.t19 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,11),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    (random()*(10^(11-2)-1))::numeric(11,2),
    substr(md5(random()::text),1,(1+floor(random()*49)::int))
FROM generate_series(1, 20111);

INSERT INTO job2.t20 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 41861);

INSERT INTO job2.t21 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,12),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8)
FROM generate_series(1, 40720);

INSERT INTO job2.t22 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,11),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,15),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    substr(md5(random()::text),1,17),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-2)-1))::numeric(10,2),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*9)::int))
FROM generate_series(1, 40467);

INSERT INTO job2.t23 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,11),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,4),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random() > 0.5)
FROM generate_series(1, 11236);

INSERT INTO job2.t24 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::real,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*(10^(10-0)-1))::numeric(10,0),
    substr(md5(random()::text),1,(1+floor(random()*24)::int))
FROM generate_series(1, 14212);

INSERT INTO job2.t25 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(4-2)-1))::numeric(4,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-2)-1))::numeric(8,2),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 40519);

INSERT INTO job2.t26 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(7-3)-1))::numeric(7,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*(10^(6-2)-1))::numeric(6,2),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    substr(md5(random()::text),1,7),
    (random()*10000)::double precision
FROM generate_series(1, 20857);

INSERT INTO job2.t27 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    substr(md5(random()::text),1,1),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 23746);

INSERT INTO job2.t28 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*(10^(12-2)-1))::numeric(12,2),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 37128);

INSERT INTO job2.t29 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,10),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,19),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,7),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 48470);

INSERT INTO job2.t30 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 45023);

INSERT INTO job2.t31 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,1),
    (random()*10000)::real,
    substr(md5(random()::text),1,13),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 19622);

INSERT INTO job2.t32 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,18),
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    substr(md5(random()::text),1,12)
FROM generate_series(1, 29010);

INSERT INTO job2.t33 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    gen_random_uuid(),
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,30),
    (random()*(10^(4-3)-1))::numeric(4,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 42604);

INSERT INTO job2.t34 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    substr(md5(random()::text),1,10),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,17),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 43645);

INSERT INTO job2.t35 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(6-1)-1))::numeric(6,1),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 42302);

INSERT INTO job2.t36 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*(10^(5-2)-1))::numeric(5,2),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 29508);

INSERT INTO job2.t37 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 42078);

INSERT INTO job2.t38 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,15),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,12),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 32933);

INSERT INTO job2.t39 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*(10^(4-2)-1))::numeric(4,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*9)::int))
FROM generate_series(1, 30927);

INSERT INTO job2.t40 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 12405);

INSERT INTO job2.t41 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,3),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-1)-1))::numeric(10,1),
    substr(md5(random()::text),1,30),
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 47805);

INSERT INTO job2.t42 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,6),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 33594);

INSERT INTO job2.t43 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    (random()*(10^(12-2)-1))::numeric(12,2),
    substr(md5(random()::text),1,(1+floor(random()*21)::int))
FROM generate_series(1, 46224);

INSERT INTO job2.t44 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    substr(md5(random()::text),1,13),
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(4-1)-1))::numeric(4,1),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 47743);

INSERT INTO job2.t45 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-1)-1))::numeric(10,1),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 36081);

INSERT INTO job2.t46 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::real,
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 18737);

INSERT INTO job2.t47 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    (random()*(10^(11-0)-1))::numeric(11,0),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 28740);

INSERT INTO job2.t48 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,14),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*(10^(11-0)-1))::numeric(11,0),
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 16123);

INSERT INTO job2.t49 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,2),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,12),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 23591);

INSERT INTO job2.t50 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,9),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    gen_random_uuid(),
    (random()*10000)::double precision,
    (random()*(10^(12-3)-1))::numeric(12,3),
    substr(md5(random()::text),1,2),
    substr(md5(random()::text),1,15)
FROM generate_series(1, 18266);

INSERT INTO job2.t51 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,12),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 18159);

INSERT INTO job2.t52 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,10),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 12767);

INSERT INTO job2.t53 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,3),
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 48816);

INSERT INTO job2.t54 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 33476);

INSERT INTO job2.t55 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-0)-1))::numeric(6,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    substr(md5(random()::text),1,6),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 24607);

INSERT INTO job2.t56 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,9),
    substr(md5(random()::text),1,17),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*(10^(4-3)-1))::numeric(4,3)
FROM generate_series(1, 20634);

INSERT INTO job2.t57 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,10),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,4),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 17512);

INSERT INTO job2.t58 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(11-2)-1))::numeric(11,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,12)
FROM generate_series(1, 44941);

INSERT INTO job2.t59 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*10000)::double precision,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    (random()*10000)::double precision,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 24306);

INSERT INTO job2.t60 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 45149);

INSERT INTO job2.t61 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 10081);

INSERT INTO job2.t62 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(11-0)-1))::numeric(11,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    substr(md5(random()::text),1,1),
    floor(random()*2147483647)::int,
    (random()*(10^(4-2)-1))::numeric(4,2),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,7),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 43637);

INSERT INTO job2.t63 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    (random() > 0.5),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,4),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 38342);

INSERT INTO job2.t64 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,1)
FROM generate_series(1, 22233);

INSERT INTO job2.t65 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    (random()*10000)::real,
    (random()*(10^(6-1)-1))::numeric(6,1),
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 45482);

INSERT INTO job2.t66 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 18462);

INSERT INTO job2.t67 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,1),
    (random() > 0.5),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 45775);

INSERT INTO job2.t68 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,14),
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,14),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,20),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 30768);

INSERT INTO job2.t69 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(7-3)-1))::numeric(7,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 20651);

INSERT INTO job2.t70 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    substr(md5(random()::text),1,19),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,14),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 32517);

INSERT INTO job2.t71 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,17),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,18),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(7-1)-1))::numeric(7,1),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 38163);

INSERT INTO job2.t72 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(10-2)-1))::numeric(10,2),
    (random()*10000)::real,
    (random()*(10^(5-2)-1))::numeric(5,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,14)
FROM generate_series(1, 46905);

INSERT INTO job2.t73 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 11283);

INSERT INTO job2.t74 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 48755);

INSERT INTO job2.t75 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-0)-1))::numeric(11,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,3),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 11825);

INSERT INTO job2.t76 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-1)-1))::numeric(9,1),
    (random()*(10^(6-0)-1))::numeric(6,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,2),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 39640);

INSERT INTO job2.t77 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*(10^(4-0)-1))::numeric(4,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 18938);

INSERT INTO job2.t78 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 20022);

INSERT INTO job2.t79 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,12),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 49183);

INSERT INTO job2.t80 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 33726);

INSERT INTO job2.t81 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 11508);

INSERT INTO job2.t82 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*(10^(6-1)-1))::numeric(6,1),
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 12227);

INSERT INTO job2.t83 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random()*(10^(4-2)-1))::numeric(4,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-1)-1))::numeric(11,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,17),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,16),
    (random() > 0.5),
    (random()*10000)::real
FROM generate_series(1, 21890);

INSERT INTO job2.t84 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random() > 0.5)
FROM generate_series(1, 28953);

INSERT INTO job2.t85 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    (random()*(10^(11-0)-1))::numeric(11,0),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    (random()*(10^(8-2)-1))::numeric(8,2),
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 14227);

INSERT INTO job2.t86 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*47)::int))
FROM generate_series(1, 12824);

INSERT INTO job2.t87 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,8),
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 23077);

INSERT INTO job2.t88 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,6),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*2147483647)::int
FROM generate_series(1, 33360);

INSERT INTO job2.t89 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(10-0)-1))::numeric(10,0),
    (random() > 0.5),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 40393);

INSERT INTO job2.t90 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(4-0)-1))::numeric(4,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 24841);

INSERT INTO job2.t91 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    (random()*(10^(8-0)-1))::numeric(8,0),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,1),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 23576);

INSERT INTO job2.t92 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::real,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 24214);

INSERT INTO job2.t93 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random()*10000)::real,
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,9),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*20)::int))
FROM generate_series(1, 13654);

INSERT INTO job2.t94 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*(10^(6-0)-1))::numeric(6,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,2),
    (random()*(10^(10-2)-1))::numeric(10,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(7-2)-1))::numeric(7,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 34021);

INSERT INTO job2.t95 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,3),
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 32068);

INSERT INTO job2.t96 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*(10^(9-2)-1))::numeric(9,2),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,7),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(11-3)-1))::numeric(11,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 35404);

INSERT INTO job2.t97 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,20),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,7),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 20630);

INSERT INTO job2.t98 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 25581);

INSERT INTO job2.t99 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    (random()*(10^(11-3)-1))::numeric(11,3),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random()*(10^(10-1)-1))::numeric(10,1),
    substr(md5(random()::text),1,18),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 49496);

INSERT INTO job2.t100 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-1)-1))::numeric(9,1),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 10978);
