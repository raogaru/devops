INSERT INTO part_random.t1 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 316);

INSERT INTO part_random.t2 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 154);

INSERT INTO part_random.t3 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,2),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 407);

INSERT INTO part_random.t4 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 264);

INSERT INTO part_random.t5 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 189);

INSERT INTO part_random.t6 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*31)::int))
FROM generate_series(1, 485);

INSERT INTO part_random.t7 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 171);

INSERT INTO part_random.t8 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 489);

INSERT INTO part_random.t9 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 468);

INSERT INTO part_random.t10 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 380);

INSERT INTO part_random.t11 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 413);

INSERT INTO part_random.t12 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 384);

INSERT INTO part_random.t13 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(8-0)-1))::numeric(8,0),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 353);

INSERT INTO part_random.t14 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,15)
FROM generate_series(1, 130);

INSERT INTO part_random.t15 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 259);

INSERT INTO part_random.t16 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 238);

INSERT INTO part_random.t17 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 284);

INSERT INTO part_random.t18 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,12)
FROM generate_series(1, 222);

INSERT INTO part_random.t19 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 262);

INSERT INTO part_random.t20 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 100);

INSERT INTO part_random.t21 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(9-0)-1))::numeric(9,0),
    gen_random_uuid()
FROM generate_series(1, 237);

INSERT INTO part_random.t22 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    (random()*(10^(5-2)-1))::numeric(5,2),
    floor(random()*32767)::smallint
FROM generate_series(1, 372);

INSERT INTO part_random.t23 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 163);

INSERT INTO part_random.t24 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 290);

INSERT INTO part_random.t25 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 362);

INSERT INTO part_random.t26 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 483);

INSERT INTO part_random.t27 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(5-0)-1))::numeric(5,0),
    (random()*(10^(10-1)-1))::numeric(10,1),
    gen_random_uuid()
FROM generate_series(1, 478);

INSERT INTO part_random.t28 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 497);

INSERT INTO part_random.t29 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,12),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 331);

INSERT INTO part_random.t30 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 243);

INSERT INTO part_random.t31 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 317);

INSERT INTO part_random.t32 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 321);

INSERT INTO part_random.t33 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    (random() > 0.5)
FROM generate_series(1, 296);

INSERT INTO part_random.t34 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 348);

INSERT INTO part_random.t35 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 292);

INSERT INTO part_random.t36 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 137);

INSERT INTO part_random.t37 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 180);

INSERT INTO part_random.t38 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    (random() > 0.5)
FROM generate_series(1, 171);

INSERT INTO part_random.t39 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 218);

INSERT INTO part_random.t40 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 194);

INSERT INTO part_random.t41 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 480);

INSERT INTO part_random.t42 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    (random()*(10^(6-1)-1))::numeric(6,1),
    (random()*10000)::real,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 202);

INSERT INTO part_random.t43 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 450);

INSERT INTO part_random.t44 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 125);

INSERT INTO part_random.t45 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 210);

INSERT INTO part_random.t46 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 368);

INSERT INTO part_random.t47 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 450);

INSERT INTO part_random.t48 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30),
    (random()*(10^(5-3)-1))::numeric(5,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-2)-1))::numeric(11,2)
FROM generate_series(1, 285);

INSERT INTO part_random.t49 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 340);

INSERT INTO part_random.t50 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 258);

INSERT INTO part_random.t51 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 261);

INSERT INTO part_random.t52 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 291);

INSERT INTO part_random.t53 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 289);

INSERT INTO part_random.t54 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 305);

INSERT INTO part_random.t55 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 351);

INSERT INTO part_random.t56 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 266);

INSERT INTO part_random.t57 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*37)::int))
FROM generate_series(1, 242);

INSERT INTO part_random.t58 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 191);

INSERT INTO part_random.t59 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 199);

INSERT INTO part_random.t60 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 330);

INSERT INTO part_random.t61 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 197);

INSERT INTO part_random.t62 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 240);

INSERT INTO part_random.t63 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(4-1)-1))::numeric(4,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 257);

INSERT INTO part_random.t64 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 238);

INSERT INTO part_random.t65 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 379);

INSERT INTO part_random.t66 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 312);

INSERT INTO part_random.t67 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 222);

INSERT INTO part_random.t68 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 233);

INSERT INTO part_random.t69 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 265);

INSERT INTO part_random.t70 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 274);

INSERT INTO part_random.t71 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 400);

INSERT INTO part_random.t72 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,8),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 269);

INSERT INTO part_random.t73 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 433);

INSERT INTO part_random.t74 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    gen_random_uuid()
FROM generate_series(1, 492);

INSERT INTO part_random.t75 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 249);

INSERT INTO part_random.t76 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 264);

INSERT INTO part_random.t77 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 121);

INSERT INTO part_random.t78 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 133);

INSERT INTO part_random.t79 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    (random()*(10^(11-3)-1))::numeric(11,3),
    (random() > 0.5)
FROM generate_series(1, 286);

INSERT INTO part_random.t80 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 297);

INSERT INTO part_random.t81 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 481);

INSERT INTO part_random.t82 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(12-2)-1))::numeric(12,2),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 366);

INSERT INTO part_random.t83 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*9)::int))
FROM generate_series(1, 408);

INSERT INTO part_random.t84 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 289);

INSERT INTO part_random.t85 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 226);

INSERT INTO part_random.t86 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 185);

INSERT INTO part_random.t87 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 449);

INSERT INTO part_random.t88 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 272);

INSERT INTO part_random.t89 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random()*(10^(9-3)-1))::numeric(9,3),
    substr(md5(random()::text),1,14)
FROM generate_series(1, 314);

INSERT INTO part_random.t90 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 134);

INSERT INTO part_random.t91 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 388);

INSERT INTO part_random.t92 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 347);

INSERT INTO part_random.t93 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,13),
    floor(random()*32767)::smallint
FROM generate_series(1, 136);

INSERT INTO part_random.t94 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 106);

INSERT INTO part_random.t95 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(6-1)-1))::numeric(6,1),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 482);

INSERT INTO part_random.t96 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 210);

INSERT INTO part_random.t97 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 336);

INSERT INTO part_random.t98 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 182);

INSERT INTO part_random.t99 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(9-2)-1))::numeric(9,2),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 442);

INSERT INTO part_random.t100 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,13)
FROM generate_series(1, 122);
