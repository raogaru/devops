INSERT INTO part_range.t1 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2316);

INSERT INTO part_range.t2 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2939);

INSERT INTO part_range.t3 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 1274);

INSERT INTO part_range.t4 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 4330);

INSERT INTO part_range.t5 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(10-1)-1))::numeric(10,1),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 1941);

INSERT INTO part_range.t6 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2203);

INSERT INTO part_range.t7 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*(10^(6-1)-1))::numeric(6,1),
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,(1+floor(random()*27)::int))
FROM generate_series(1, 2807);

INSERT INTO part_range.t8 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,1),
    gen_random_uuid(),
    substr(md5(random()::text),1,19),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4365);

INSERT INTO part_range.t9 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,6),
    (random()*10000)::double precision
FROM generate_series(1, 4249);

INSERT INTO part_range.t10 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    substr(md5(random()::text),1,9)
FROM generate_series(1, 4290);

INSERT INTO part_range.t11 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1401);

INSERT INTO part_range.t12 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4931);

INSERT INTO part_range.t13 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 4377);

INSERT INTO part_range.t14 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 2703);

INSERT INTO part_range.t15 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,4)
FROM generate_series(1, 1314);

INSERT INTO part_range.t16 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    substr(md5(random()::text),1,13)
FROM generate_series(1, 1761);

INSERT INTO part_range.t17 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,8)
FROM generate_series(1, 3783);

INSERT INTO part_range.t18 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 1271);

INSERT INTO part_range.t19 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3224);

INSERT INTO part_range.t20 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,2),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 1263);

INSERT INTO part_range.t21 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3138);

INSERT INTO part_range.t22 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 4874);

INSERT INTO part_range.t23 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1758);

INSERT INTO part_range.t24 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4587);

INSERT INTO part_range.t25 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 2532);

INSERT INTO part_range.t26 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4029);

INSERT INTO part_range.t27 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(9-3)-1))::numeric(9,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3740);

INSERT INTO part_range.t28 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,9),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3093);

INSERT INTO part_range.t29 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 1900);

INSERT INTO part_range.t30 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 3877);

INSERT INTO part_range.t31 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 3893);

INSERT INTO part_range.t32 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3489);

INSERT INTO part_range.t33 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2446);

INSERT INTO part_range.t34 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4621);

INSERT INTO part_range.t35 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2394);

INSERT INTO part_range.t36 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 1353);

INSERT INTO part_range.t37 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    gen_random_uuid(),
    (random()*10000)::double precision
FROM generate_series(1, 1602);

INSERT INTO part_range.t38 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 1324);

INSERT INTO part_range.t39 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(12-3)-1))::numeric(12,3),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2145);

INSERT INTO part_range.t40 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4212);

INSERT INTO part_range.t41 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2058);

INSERT INTO part_range.t42 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-1)-1))::numeric(5,1),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4540);

INSERT INTO part_range.t43 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int
FROM generate_series(1, 4115);

INSERT INTO part_range.t44 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1968);

INSERT INTO part_range.t45 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(4-3)-1))::numeric(4,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 4938);

INSERT INTO part_range.t46 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(6-0)-1))::numeric(6,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1413);

INSERT INTO part_range.t47 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*49)::int))
FROM generate_series(1, 1204);

INSERT INTO part_range.t48 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2126);

INSERT INTO part_range.t49 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    (random()*10000)::real
FROM generate_series(1, 3404);

INSERT INTO part_range.t50 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(8-1)-1))::numeric(8,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    (random() > 0.5)
FROM generate_series(1, 3107);

INSERT INTO part_range.t51 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,6),
    gen_random_uuid()
FROM generate_series(1, 4779);

INSERT INTO part_range.t52 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3567);

INSERT INTO part_range.t53 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,1)
FROM generate_series(1, 2948);

INSERT INTO part_range.t54 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 1211);

INSERT INTO part_range.t55 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4525);

INSERT INTO part_range.t56 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 3255);

INSERT INTO part_range.t57 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 1415);

INSERT INTO part_range.t58 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 3887);

INSERT INTO part_range.t59 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*5)::int))
FROM generate_series(1, 3886);

INSERT INTO part_range.t60 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 3102);

INSERT INTO part_range.t61 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    (random()*(10^(11-1)-1))::numeric(11,1),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2878);

INSERT INTO part_range.t62 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,3),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4660);

INSERT INTO part_range.t63 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 3397);

INSERT INTO part_range.t64 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-2)-1))::numeric(9,2),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 4464);

INSERT INTO part_range.t65 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4607);

INSERT INTO part_range.t66 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4316);

INSERT INTO part_range.t67 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    (random()*10000)::real
FROM generate_series(1, 4382);

INSERT INTO part_range.t68 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,7)
FROM generate_series(1, 4380);

INSERT INTO part_range.t69 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 4190);

INSERT INTO part_range.t70 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4878);

INSERT INTO part_range.t71 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2714);

INSERT INTO part_range.t72 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*45)::int))
FROM generate_series(1, 2613);

INSERT INTO part_range.t73 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    gen_random_uuid(),
    (random()*10000)::double precision
FROM generate_series(1, 1331);

INSERT INTO part_range.t74 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,20)
FROM generate_series(1, 4326);

INSERT INTO part_range.t75 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    gen_random_uuid()
FROM generate_series(1, 4362);

INSERT INTO part_range.t76 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2292);

INSERT INTO part_range.t77 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1170);

INSERT INTO part_range.t78 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*(10^(11-0)-1))::numeric(11,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1231);

INSERT INTO part_range.t79 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2455);

INSERT INTO part_range.t80 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 4786);

INSERT INTO part_range.t81 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 4224);

INSERT INTO part_range.t82 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int
FROM generate_series(1, 1019);

INSERT INTO part_range.t83 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2528);

INSERT INTO part_range.t84 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2804);

INSERT INTO part_range.t85 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 4742);

INSERT INTO part_range.t86 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4102);

INSERT INTO part_range.t87 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 4799);

INSERT INTO part_range.t88 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 3460);

INSERT INTO part_range.t89 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1623);

INSERT INTO part_range.t90 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1698);

INSERT INTO part_range.t91 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(7-2)-1))::numeric(7,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3533);

INSERT INTO part_range.t92 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-1)-1))::numeric(5,1),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 1881);

INSERT INTO part_range.t93 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,7),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2653);

INSERT INTO part_range.t94 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    (random()*10000)::real
FROM generate_series(1, 1028);

INSERT INTO part_range.t95 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 2367);

INSERT INTO part_range.t96 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 1808);

INSERT INTO part_range.t97 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 1458);

INSERT INTO part_range.t98 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1105);

INSERT INTO part_range.t99 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 4780);

INSERT INTO part_range.t100 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-1)-1))::numeric(11,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 1435);
