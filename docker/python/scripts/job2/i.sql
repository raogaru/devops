INSERT INTO job2.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-3)-1))::numeric(8,3),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 41954);

INSERT INTO job2.t2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(7-2)-1))::numeric(7,2),
    (random() > 0.5),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 36743);

INSERT INTO job2.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(9-1)-1))::numeric(9,1),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,9),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 17830);

INSERT INTO job2.t4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*(10^(9-2)-1))::numeric(9,2),
    (random() > 0.5),
    (random()*10000)::real,
    (random()*(10^(10-1)-1))::numeric(10,1)
FROM generate_series(1, 25265);

INSERT INTO job2.t5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,11),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-0)-1))::numeric(8,0),
    substr(md5(random()::text),1,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 11549);

INSERT INTO job2.t6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-3)-1))::numeric(9,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 48381);

INSERT INTO job2.t7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,9),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-0)-1))::numeric(10,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 12005);

INSERT INTO job2.t8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*(10^(4-0)-1))::numeric(4,0),
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 38196);

INSERT INTO job2.t9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,15),
    (random()*10000)::real,
    substr(md5(random()::text),1,16),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,14),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 38408);

INSERT INTO job2.t10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    (random()*(10^(4-0)-1))::numeric(4,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,10),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*18)::int))
FROM generate_series(1, 19132);

INSERT INTO job2.t11 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random()*(10^(12-1)-1))::numeric(12,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,3),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 40990);

INSERT INTO job2.t12 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    substr(md5(random()::text),1,12),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 27192);

INSERT INTO job2.t13 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    (random() > 0.5),
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 19834);

INSERT INTO job2.t14 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,9),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    gen_random_uuid(),
    (random()*(10^(10-0)-1))::numeric(10,0),
    gen_random_uuid()
FROM generate_series(1, 44687);

INSERT INTO job2.t15 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    substr(md5(random()::text),1,16),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,17),
    (random()*(10^(10-3)-1))::numeric(10,3),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*(10^(7-3)-1))::numeric(7,3),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 18217);

INSERT INTO job2.t16 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,9),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random()*(10^(12-1)-1))::numeric(12,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 23882);

INSERT INTO job2.t17 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    (random()*(10^(11-2)-1))::numeric(11,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 10714);

INSERT INTO job2.t18 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-3)-1))::numeric(11,3),
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 19270);

INSERT INTO job2.t19 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,17),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-3)-1))::numeric(10,3),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    substr(md5(random()::text),1,5),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 12674);

INSERT INTO job2.t20 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*10000)::real,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 47793);

INSERT INTO job2.t21 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,1),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 20050);

INSERT INTO job2.t22 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 43417);

INSERT INTO job2.t23 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,9),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    substr(md5(random()::text),1,20),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 49006);

INSERT INTO job2.t24 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(5-1)-1))::numeric(5,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 19582);

INSERT INTO job2.t25 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 19577);

INSERT INTO job2.t26 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    gen_random_uuid(),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 36508);

INSERT INTO job2.t27 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    (random()*10000)::real,
    substr(md5(random()::text),1,7),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 16670);

INSERT INTO job2.t28 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(6-2)-1))::numeric(6,2),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 36679);

INSERT INTO job2.t29 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,6),
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*29)::int))
FROM generate_series(1, 37044);

INSERT INTO job2.t30 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random()*(10^(4-1)-1))::numeric(4,1),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*(10^(11-1)-1))::numeric(11,1),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 17423);

INSERT INTO job2.t31 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*(10^(9-3)-1))::numeric(9,3),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,11),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 19144);

INSERT INTO job2.t32 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,9),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*(10^(4-2)-1))::numeric(4,2),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 15582);

INSERT INTO job2.t33 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,13),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    (random()*10000)::real,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 48442);

INSERT INTO job2.t34 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    (random() > 0.5),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    gen_random_uuid(),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(4-3)-1))::numeric(4,3),
    gen_random_uuid()
FROM generate_series(1, 27828);

INSERT INTO job2.t35 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(8-2)-1))::numeric(8,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 34083);

INSERT INTO job2.t36 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 42671);

INSERT INTO job2.t37 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(7-2)-1))::numeric(7,2),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 42924);

INSERT INTO job2.t38 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,11),
    (random()*10000)::real,
    substr(md5(random()::text),1,3),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 34152);

INSERT INTO job2.t39 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,19),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,15),
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*(10^(5-1)-1))::numeric(5,1),
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 18980);

INSERT INTO job2.t40 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random()*(10^(4-2)-1))::numeric(4,2),
    (random()*10000)::real,
    substr(md5(random()::text),1,12),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,4)
FROM generate_series(1, 25673);

INSERT INTO job2.t41 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    (random()*10000)::real,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random() > 0.5),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 14576);

INSERT INTO job2.t42 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 39676);

INSERT INTO job2.t43 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(11-2)-1))::numeric(11,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,17),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 45159);

INSERT INTO job2.t44 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*27)::int))
FROM generate_series(1, 38502);

INSERT INTO job2.t45 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-1)-1))::numeric(5,1),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random() > 0.5),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random() > 0.5)
FROM generate_series(1, 41839);

INSERT INTO job2.t46 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*(10^(12-2)-1))::numeric(12,2),
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,16),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 49334);

INSERT INTO job2.t47 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,15),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,19),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 42893);

INSERT INTO job2.t48 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,19),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-0)-1))::numeric(6,0),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(6-1)-1))::numeric(6,1),
    (random() > 0.5),
    substr(md5(random()::text),1,16),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 25093);

INSERT INTO job2.t49 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,6),
    (random()*(10^(6-1)-1))::numeric(6,1),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,11),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 31266);

INSERT INTO job2.t50 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,8),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    floor(random()*32767)::smallint,
    (random()*(10^(8-3)-1))::numeric(8,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,5),
    (random() > 0.5)
FROM generate_series(1, 25095);

INSERT INTO job2.t51 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 47142);

INSERT INTO job2.t52 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    (random() > 0.5),
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*(10^(9-1)-1))::numeric(9,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 21039);

INSERT INTO job2.t53 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,20),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    substr(md5(random()::text),1,18),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random() > 0.5),
    substr(md5(random()::text),1,17),
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 11051);

INSERT INTO job2.t54 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,6),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 35029);

INSERT INTO job2.t55 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random()*10000)::real,
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 31709);

INSERT INTO job2.t56 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*(10^(12-0)-1))::numeric(12,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,5),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 30927);

INSERT INTO job2.t57 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,11),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,11),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 16874);

INSERT INTO job2.t58 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    (random()*10000)::double precision,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,6),
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 29325);

INSERT INTO job2.t59 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(7-2)-1))::numeric(7,2),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 49237);

INSERT INTO job2.t60 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,3),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(12-3)-1))::numeric(12,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 48228);

INSERT INTO job2.t61 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 20134);

INSERT INTO job2.t62 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    substr(md5(random()::text),1,18),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,20),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 42675);

INSERT INTO job2.t63 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-0)-1))::numeric(5,0),
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(11-3)-1))::numeric(11,3),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 20301);

INSERT INTO job2.t64 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*(10^(6-0)-1))::numeric(6,0),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(11-0)-1))::numeric(11,0),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 30511);

INSERT INTO job2.t65 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,4),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*10000)::double precision
FROM generate_series(1, 48531);

INSERT INTO job2.t66 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 16782);

INSERT INTO job2.t67 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,20),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 10256);

INSERT INTO job2.t68 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-3)-1))::numeric(5,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,8),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,19),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 43956);

INSERT INTO job2.t69 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(4-3)-1))::numeric(4,3),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 40987);

INSERT INTO job2.t70 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    (random() > 0.5),
    (random()*10000)::real
FROM generate_series(1, 43266);

INSERT INTO job2.t71 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    (random()*10000)::real,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 13684);

INSERT INTO job2.t72 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*(10^(8-0)-1))::numeric(8,0),
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*(10^(8-3)-1))::numeric(8,3),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 20825);

INSERT INTO job2.t73 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random()*(10^(9-1)-1))::numeric(9,1),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 28744);

INSERT INTO job2.t74 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random() > 0.5)
FROM generate_series(1, 48869);

INSERT INTO job2.t75 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 26006);

INSERT INTO job2.t76 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,8),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 42117);

INSERT INTO job2.t77 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*(10^(10-3)-1))::numeric(10,3),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 18587);

INSERT INTO job2.t78 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT
    gen_random_uuid(),
    (random()*(10^(4-2)-1))::numeric(4,2),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 24011);

INSERT INTO job2.t79 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,2),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 49642);

INSERT INTO job2.t80 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,7),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 42051);

INSERT INTO job2.t81 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random()*(10^(12-2)-1))::numeric(12,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 10774);

INSERT INTO job2.t82 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,16),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,2),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 26987);

INSERT INTO job2.t83 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    (random() > 0.5),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*(10^(9-2)-1))::numeric(9,2),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 40944);

INSERT INTO job2.t84 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,13),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 37253);

INSERT INTO job2.t85 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,10),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(5-0)-1))::numeric(5,0),
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 34227);

INSERT INTO job2.t86 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,12),
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random()*10000)::real,
    substr(md5(random()::text),1,17),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 41654);

INSERT INTO job2.t87 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    floor(random()*32767)::smallint,
    (random()*(10^(10-0)-1))::numeric(10,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    (random()*(10^(4-1)-1))::numeric(4,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*(10^(5-0)-1))::numeric(5,0),
    (random()*(10^(4-3)-1))::numeric(4,3),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 19892);

INSERT INTO job2.t88 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    substr(md5(random()::text),1,1),
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(7-1)-1))::numeric(7,1),
    substr(md5(random()::text),1,12),
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,15),
    (random() > 0.5)
FROM generate_series(1, 36646);

INSERT INTO job2.t89 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    substr(md5(random()::text),1,13),
    (random() > 0.5),
    substr(md5(random()::text),1,15),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 38921);

INSERT INTO job2.t90 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*(10^(10-2)-1))::numeric(10,2),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,17),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*(10^(10-3)-1))::numeric(10,3),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(7-2)-1))::numeric(7,2),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 42477);

INSERT INTO job2.t91 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,15),
    substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 36034);

INSERT INTO job2.t92 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,12),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 29139);

INSERT INTO job2.t93 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid(),
    substr(md5(random()::text),1,6),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*(10^(4-1)-1))::numeric(4,1),
    floor(random()*32767)::smallint
FROM generate_series(1, 37836);

INSERT INTO job2.t94 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random()*10000)::real,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*30)::int))
FROM generate_series(1, 16505);

INSERT INTO job2.t95 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 44047);

INSERT INTO job2.t96 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,12),
    substr(md5(random()::text),1,5),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 23987);

INSERT INTO job2.t97 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,18),
    (random()*10000)::real,
    (random()*(10^(8-2)-1))::numeric(8,2),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,(1+floor(random()*27)::int))
FROM generate_series(1, 28113);

INSERT INTO job2.t98 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 19065);

INSERT INTO job2.t99 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,16),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 29692);

INSERT INTO job2.t100 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random()*(10^(11-1)-1))::numeric(11,1),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 35244);
