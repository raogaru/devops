INSERT INTO part_hash.t1 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4197);

INSERT INTO part_hash.t2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(7-1)-1))::numeric(7,1),
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3287);

INSERT INTO part_hash.t3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 2406);

INSERT INTO part_hash.t4 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2580);

INSERT INTO part_hash.t5 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,3),
    (random()*10000)::real
FROM generate_series(1, 1503);

INSERT INTO part_hash.t6 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4999);

INSERT INTO part_hash.t7 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    (random()*10000)::real,
    substr(md5(random()::text),1,12),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4543);

INSERT INTO part_hash.t8 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    gen_random_uuid()
FROM generate_series(1, 1834);

INSERT INTO part_hash.t9 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 2935);

INSERT INTO part_hash.t10 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 2418);

INSERT INTO part_hash.t11 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1716);

INSERT INTO part_hash.t12 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4351);

INSERT INTO part_hash.t13 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 2867);

INSERT INTO part_hash.t14 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(5-1)-1))::numeric(5,1),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 2057);

INSERT INTO part_hash.t15 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4027);

INSERT INTO part_hash.t16 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,17),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2883);

INSERT INTO part_hash.t17 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4434);

INSERT INTO part_hash.t18 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 1811);

INSERT INTO part_hash.t19 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int))
FROM generate_series(1, 4271);

INSERT INTO part_hash.t20 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1938);

INSERT INTO part_hash.t21 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(10-1)-1))::numeric(10,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*39)::int))
FROM generate_series(1, 4163);

INSERT INTO part_hash.t22 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2501);

INSERT INTO part_hash.t23 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 3302);

INSERT INTO part_hash.t24 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(4-3)-1))::numeric(4,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 4720);

INSERT INTO part_hash.t25 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 2773);

INSERT INTO part_hash.t26 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4838);

INSERT INTO part_hash.t27 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 4156);

INSERT INTO part_hash.t28 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 3424);

INSERT INTO part_hash.t29 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 1168);

INSERT INTO part_hash.t30 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(10-3)-1))::numeric(10,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 2029);

INSERT INTO part_hash.t31 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 4959);

INSERT INTO part_hash.t32 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 3766);

INSERT INTO part_hash.t33 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,8)
FROM generate_series(1, 1228);

INSERT INTO part_hash.t34 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 2393);

INSERT INTO part_hash.t35 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(6-2)-1))::numeric(6,2),
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,20)
FROM generate_series(1, 4759);

INSERT INTO part_hash.t36 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 2817);

INSERT INTO part_hash.t37 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 4312);

INSERT INTO part_hash.t38 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1882);

INSERT INTO part_hash.t39 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,20),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 1044);

INSERT INTO part_hash.t40 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4412);

INSERT INTO part_hash.t41 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,10),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 2008);

INSERT INTO part_hash.t42 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1434);

INSERT INTO part_hash.t43 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 1645);

INSERT INTO part_hash.t44 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(8-0)-1))::numeric(8,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3831);

INSERT INTO part_hash.t45 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2780);

INSERT INTO part_hash.t46 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1570);

INSERT INTO part_hash.t47 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    (random()*10000)::real
FROM generate_series(1, 2062);

INSERT INTO part_hash.t48 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,9),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 1112);

INSERT INTO part_hash.t49 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*(10^(5-2)-1))::numeric(5,2)
FROM generate_series(1, 4516);

INSERT INTO part_hash.t50 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    (random()*(10^(5-1)-1))::numeric(5,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2439);

INSERT INTO part_hash.t51 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4268);

INSERT INTO part_hash.t52 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(7-2)-1))::numeric(7,2),
    gen_random_uuid(),
    (random() > 0.5),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 1829);

INSERT INTO part_hash.t53 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3150);

INSERT INTO part_hash.t54 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,15),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3229);

INSERT INTO part_hash.t55 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2430);

INSERT INTO part_hash.t56 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*(10^(12-2)-1))::numeric(12,2),
    substr(md5(random()::text),1,(1+floor(random()*23)::int))
FROM generate_series(1, 1236);

INSERT INTO part_hash.t57 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3954);

INSERT INTO part_hash.t58 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4304);

INSERT INTO part_hash.t59 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 3287);

INSERT INTO part_hash.t60 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*1)::int))
FROM generate_series(1, 1518);

INSERT INTO part_hash.t61 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4697);

INSERT INTO part_hash.t62 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 3003);

INSERT INTO part_hash.t63 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random()*10000)::real
FROM generate_series(1, 2136);

INSERT INTO part_hash.t64 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 2213);

INSERT INTO part_hash.t65 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 4694);

INSERT INTO part_hash.t66 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*47)::int))
FROM generate_series(1, 4274);

INSERT INTO part_hash.t67 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3831);

INSERT INTO part_hash.t68 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,17),
    (random()*10000)::real
FROM generate_series(1, 4716);

INSERT INTO part_hash.t69 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-0)-1))::numeric(5,0),
    substr(md5(random()::text),1,16),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3829);

INSERT INTO part_hash.t70 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 4566);

INSERT INTO part_hash.t71 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,19),
    (random()*10000)::double precision
FROM generate_series(1, 4915);

INSERT INTO part_hash.t72 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3174);

INSERT INTO part_hash.t73 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4303);

INSERT INTO part_hash.t74 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 2772);

INSERT INTO part_hash.t75 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-1)-1))::numeric(6,1),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*28)::int))
FROM generate_series(1, 4812);

INSERT INTO part_hash.t76 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2033);

INSERT INTO part_hash.t77 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 2622);

INSERT INTO part_hash.t78 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,13),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4573);

INSERT INTO part_hash.t79 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2606);

INSERT INTO part_hash.t80 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 1753);

INSERT INTO part_hash.t81 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,12),
    (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 4294);

INSERT INTO part_hash.t82 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 2918);

INSERT INTO part_hash.t83 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,3)
FROM generate_series(1, 3254);

INSERT INTO part_hash.t84 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 3988);

INSERT INTO part_hash.t85 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4308);

INSERT INTO part_hash.t86 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 3600);

INSERT INTO part_hash.t87 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,12),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4542);

INSERT INTO part_hash.t88 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 4165);

INSERT INTO part_hash.t89 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1291);

INSERT INTO part_hash.t90 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 1070);

INSERT INTO part_hash.t91 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 1782);

INSERT INTO part_hash.t92 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3895);

INSERT INTO part_hash.t93 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 4692);

INSERT INTO part_hash.t94 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,19),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,11),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4619);

INSERT INTO part_hash.t95 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 2250);

INSERT INTO part_hash.t96 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 4940);

INSERT INTO part_hash.t97 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 3233);

INSERT INTO part_hash.t98 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 3420);

INSERT INTO part_hash.t99 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2836);

INSERT INTO part_hash.t100 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,(1+floor(random()*21)::int))
FROM generate_series(1, 3847);
