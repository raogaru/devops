INSERT INTO part_range.t1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 1673);

INSERT INTO part_range.t2 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 2773);

INSERT INTO part_range.t3 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,7)
FROM generate_series(1, 4778);

INSERT INTO part_range.t4 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,6),
    floor(random()*2147483647)::int
FROM generate_series(1, 4087);

INSERT INTO part_range.t5 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,4),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3968);

INSERT INTO part_range.t6 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3544);

INSERT INTO part_range.t7 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    (random()*(10^(10-2)-1))::numeric(10,2),
    (random()*10000)::double precision
FROM generate_series(1, 1305);

INSERT INTO part_range.t8 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1405);

INSERT INTO part_range.t9 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1095);

INSERT INTO part_range.t10 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(11-3)-1))::numeric(11,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4219);

INSERT INTO part_range.t11 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4903);

INSERT INTO part_range.t12 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 3500);

INSERT INTO part_range.t13 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 3387);

INSERT INTO part_range.t14 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 2247);

INSERT INTO part_range.t15 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 2257);

INSERT INTO part_range.t16 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 4712);

INSERT INTO part_range.t17 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 2142);

INSERT INTO part_range.t18 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    (random()*10000)::real,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2154);

INSERT INTO part_range.t19 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 2039);

INSERT INTO part_range.t20 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1780);

INSERT INTO part_range.t21 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,12)
FROM generate_series(1, 4973);

INSERT INTO part_range.t22 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4422);

INSERT INTO part_range.t23 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 3393);

INSERT INTO part_range.t24 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 1361);

INSERT INTO part_range.t25 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,20),
    gen_random_uuid()
FROM generate_series(1, 2077);

INSERT INTO part_range.t26 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 2766);

INSERT INTO part_range.t27 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,18),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3665);

INSERT INTO part_range.t28 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1880);

INSERT INTO part_range.t29 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 4113);

INSERT INTO part_range.t30 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid(),
    substr(md5(random()::text),1,13),
    (random()*10000)::real
FROM generate_series(1, 2593);

INSERT INTO part_range.t31 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1313);

INSERT INTO part_range.t32 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,15),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 1510);

INSERT INTO part_range.t33 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,10)
FROM generate_series(1, 1899);

INSERT INTO part_range.t34 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*(10^(11-2)-1))::numeric(11,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1517);

INSERT INTO part_range.t35 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2968);

INSERT INTO part_range.t36 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 4115);

INSERT INTO part_range.t37 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 3615);

INSERT INTO part_range.t38 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*(10^(4-3)-1))::numeric(4,3),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 3946);

INSERT INTO part_range.t39 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 4903);

INSERT INTO part_range.t40 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4537);

INSERT INTO part_range.t41 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 1766);

INSERT INTO part_range.t42 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4101);

INSERT INTO part_range.t43 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-3)-1))::numeric(10,3),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(7-1)-1))::numeric(7,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3913);

INSERT INTO part_range.t44 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 3670);

INSERT INTO part_range.t45 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4733);

INSERT INTO part_range.t46 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 2209);

INSERT INTO part_range.t47 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4869);

INSERT INTO part_range.t48 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2699);

INSERT INTO part_range.t49 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3938);

INSERT INTO part_range.t50 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4977);

INSERT INTO part_range.t51 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*(10^(11-0)-1))::numeric(11,0)
FROM generate_series(1, 3825);

INSERT INTO part_range.t52 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(12-3)-1))::numeric(12,3),
    (random()*10000)::real
FROM generate_series(1, 2479);

INSERT INTO part_range.t53 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 4344);

INSERT INTO part_range.t54 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(5-3)-1))::numeric(5,3),
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 4468);

INSERT INTO part_range.t55 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 4754);

INSERT INTO part_range.t56 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(6-0)-1))::numeric(6,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 3175);

INSERT INTO part_range.t57 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1912);

INSERT INTO part_range.t58 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3236);

INSERT INTO part_range.t59 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,11)
FROM generate_series(1, 1268);

INSERT INTO part_range.t60 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 2573);

INSERT INTO part_range.t61 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,14),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3827);

INSERT INTO part_range.t62 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 2815);

INSERT INTO part_range.t63 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 3424);

INSERT INTO part_range.t64 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4727);

INSERT INTO part_range.t65 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    substr(md5(random()::text),1,9),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(4-3)-1))::numeric(4,3),
    (random() > 0.5)
FROM generate_series(1, 2555);

INSERT INTO part_range.t66 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 2328);

INSERT INTO part_range.t67 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*2147483647)::int
FROM generate_series(1, 2414);

INSERT INTO part_range.t68 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1842);

INSERT INTO part_range.t69 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 4851);

INSERT INTO part_range.t70 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(8-3)-1))::numeric(8,3),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    floor(random()*32767)::smallint,
    (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 1505);

INSERT INTO part_range.t71 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 1742);

INSERT INTO part_range.t72 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-3)-1))::numeric(11,3),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2714);

INSERT INTO part_range.t73 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 1572);

INSERT INTO part_range.t74 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,1),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 1168);

INSERT INTO part_range.t75 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1463);

INSERT INTO part_range.t76 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    (random() > 0.5)
FROM generate_series(1, 4451);

INSERT INTO part_range.t77 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,8),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4539);

INSERT INTO part_range.t78 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1617);

INSERT INTO part_range.t79 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 1715);

INSERT INTO part_range.t80 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(5-2)-1))::numeric(5,2),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 1175);

INSERT INTO part_range.t81 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2148);

INSERT INTO part_range.t82 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    (random() > 0.5),
    (random()*10000)::real
FROM generate_series(1, 2546);

INSERT INTO part_range.t83 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 4816);

INSERT INTO part_range.t84 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    substr(md5(random()::text),1,16),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3247);

INSERT INTO part_range.t85 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 3225);

INSERT INTO part_range.t86 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 1720);

INSERT INTO part_range.t87 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 2616);

INSERT INTO part_range.t88 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 4366);

INSERT INTO part_range.t89 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(10-2)-1))::numeric(10,2),
    gen_random_uuid(),
    (random()*10000)::real,
    (random() > 0.5)
FROM generate_series(1, 4576);

INSERT INTO part_range.t90 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 1790);

INSERT INTO part_range.t91 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 2193);

INSERT INTO part_range.t92 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 1900);

INSERT INTO part_range.t93 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 3968);

INSERT INTO part_range.t94 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,15),
    substr(md5(random()::text),1,(1+floor(random()*17)::int))
FROM generate_series(1, 2416);

INSERT INTO part_range.t95 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2176);

INSERT INTO part_range.t96 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 2271);

INSERT INTO part_range.t97 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    (random() > 0.5)
FROM generate_series(1, 3453);

INSERT INTO part_range.t98 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2044);

INSERT INTO part_range.t99 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    substr(md5(random()::text),1,(1+floor(random()*15)::int))
FROM generate_series(1, 2983);

INSERT INTO part_range.t100 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 2441);
