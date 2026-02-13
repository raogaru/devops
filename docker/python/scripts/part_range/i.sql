INSERT INTO part_range.t1 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 3687);

INSERT INTO part_range.t2 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 1548);

INSERT INTO part_range.t3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1516);

INSERT INTO part_range.t4 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2787);

INSERT INTO part_range.t5 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4307);

INSERT INTO part_range.t6 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4251);

INSERT INTO part_range.t7 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1737);

INSERT INTO part_range.t8 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4373);

INSERT INTO part_range.t9 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1644);

INSERT INTO part_range.t10 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 2872);

INSERT INTO part_range.t11 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(11-0)-1))::numeric(11,0),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,12),
    floor(random()*2147483647)::int
FROM generate_series(1, 2402);

INSERT INTO part_range.t12 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 3741);

INSERT INTO part_range.t13 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-3)-1))::numeric(5,3),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3931);

INSERT INTO part_range.t14 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 2208);

INSERT INTO part_range.t15 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    substr(md5(random()::text),1,6),
    (random()*10000)::real
FROM generate_series(1, 1182);

INSERT INTO part_range.t16 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3857);

INSERT INTO part_range.t17 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1711);

INSERT INTO part_range.t18 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1000);

INSERT INTO part_range.t19 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4263);

INSERT INTO part_range.t20 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 3944);

INSERT INTO part_range.t21 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 2181);

INSERT INTO part_range.t22 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 2323);

INSERT INTO part_range.t23 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3237);

INSERT INTO part_range.t24 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(12-3)-1))::numeric(12,3),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4614);

INSERT INTO part_range.t25 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 1008);

INSERT INTO part_range.t26 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3341);

INSERT INTO part_range.t27 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2836);

INSERT INTO part_range.t28 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 1219);

INSERT INTO part_range.t29 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1263);

INSERT INTO part_range.t30 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 3642);

INSERT INTO part_range.t31 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 3063);

INSERT INTO part_range.t32 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3401);

INSERT INTO part_range.t33 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1814);

INSERT INTO part_range.t34 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3070);

INSERT INTO part_range.t35 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 3577);

INSERT INTO part_range.t36 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*2147483647)::int
FROM generate_series(1, 2966);

INSERT INTO part_range.t37 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 4443);

INSERT INTO part_range.t38 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1465);

INSERT INTO part_range.t39 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 2738);

INSERT INTO part_range.t40 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 3771);

INSERT INTO part_range.t41 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 4012);

INSERT INTO part_range.t42 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 4461);

INSERT INTO part_range.t43 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 4286);

INSERT INTO part_range.t44 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(12-2)-1))::numeric(12,2),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 3529);

INSERT INTO part_range.t45 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 3137);

INSERT INTO part_range.t46 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,6),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3967);

INSERT INTO part_range.t47 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,19),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3843);

INSERT INTO part_range.t48 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*23)::int))
FROM generate_series(1, 2616);

INSERT INTO part_range.t49 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-1)-1))::numeric(10,1),
    gen_random_uuid(),
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3743);

INSERT INTO part_range.t50 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(11-2)-1))::numeric(11,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4099);

INSERT INTO part_range.t51 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 1615);

INSERT INTO part_range.t52 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2885);

INSERT INTO part_range.t53 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*(10^(12-3)-1))::numeric(12,3),
    floor(random()*2147483647)::int
FROM generate_series(1, 3324);

INSERT INTO part_range.t54 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1008);

INSERT INTO part_range.t55 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 3354);

INSERT INTO part_range.t56 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random() > 0.5),
    (random()*10000)::real
FROM generate_series(1, 1640);

INSERT INTO part_range.t57 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4371);

INSERT INTO part_range.t58 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 1933);

INSERT INTO part_range.t59 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4003);

INSERT INTO part_range.t60 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 1297);

INSERT INTO part_range.t61 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random()*(10^(8-2)-1))::numeric(8,2),
    substr(md5(random()::text),1,11)
FROM generate_series(1, 2763);

INSERT INTO part_range.t62 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(5-1)-1))::numeric(5,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2701);

INSERT INTO part_range.t63 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,17),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 2485);

INSERT INTO part_range.t64 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 3737);

INSERT INTO part_range.t65 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 1761);

INSERT INTO part_range.t66 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 3635);

INSERT INTO part_range.t67 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 4348);

INSERT INTO part_range.t68 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-3)-1))::numeric(5,3),
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3098);

INSERT INTO part_range.t69 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 1403);

INSERT INTO part_range.t70 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4476);

INSERT INTO part_range.t71 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 3639);

INSERT INTO part_range.t72 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3565);

INSERT INTO part_range.t73 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    (random()*(10^(7-3)-1))::numeric(7,3),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1265);

INSERT INTO part_range.t74 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 3447);

INSERT INTO part_range.t75 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 1357);

INSERT INTO part_range.t76 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1926);

INSERT INTO part_range.t77 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    gen_random_uuid()
FROM generate_series(1, 4040);

INSERT INTO part_range.t78 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 2909);

INSERT INTO part_range.t79 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 4677);

INSERT INTO part_range.t80 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 4708);

INSERT INTO part_range.t81 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,4)
FROM generate_series(1, 2093);

INSERT INTO part_range.t82 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4508);

INSERT INTO part_range.t83 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2699);

INSERT INTO part_range.t84 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 4424);

INSERT INTO part_range.t85 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 2128);

INSERT INTO part_range.t86 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 2636);

INSERT INTO part_range.t87 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2582);

INSERT INTO part_range.t88 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1642);

INSERT INTO part_range.t89 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1762);

INSERT INTO part_range.t90 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3749);

INSERT INTO part_range.t91 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    substr(md5(random()::text),1,3),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 4181);

INSERT INTO part_range.t92 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1652);

INSERT INTO part_range.t93 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,12),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 2821);

INSERT INTO part_range.t94 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1934);

INSERT INTO part_range.t95 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3562);

INSERT INTO part_range.t96 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 3480);

INSERT INTO part_range.t97 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 2595);

INSERT INTO part_range.t98 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,2),
    (random()*(10^(7-0)-1))::numeric(7,0)
FROM generate_series(1, 4442);

INSERT INTO part_range.t99 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2641);

INSERT INTO part_range.t100 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 2977);
