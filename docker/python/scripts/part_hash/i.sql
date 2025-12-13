INSERT INTO part_hash.t1 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3412);

INSERT INTO part_hash.t2 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 4698);

INSERT INTO part_hash.t3 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 1513);

INSERT INTO part_hash.t4 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3009);

INSERT INTO part_hash.t5 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4388);

INSERT INTO part_hash.t6 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3781);

INSERT INTO part_hash.t7 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,15),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 3376);

INSERT INTO part_hash.t8 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 2630);

INSERT INTO part_hash.t9 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 2421);

INSERT INTO part_hash.t10 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 3954);

INSERT INTO part_hash.t11 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,14)
FROM generate_series(1, 3079);

INSERT INTO part_hash.t12 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    substr(md5(random()::text),1,14)
FROM generate_series(1, 4424);

INSERT INTO part_hash.t13 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int
FROM generate_series(1, 4755);

INSERT INTO part_hash.t14 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4934);

INSERT INTO part_hash.t15 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 4397);

INSERT INTO part_hash.t16 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,20),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-2)-1))::numeric(6,2),
    (random() > 0.5)
FROM generate_series(1, 4361);

INSERT INTO part_hash.t17 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2917);

INSERT INTO part_hash.t18 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4539);

INSERT INTO part_hash.t19 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,(1+floor(random()*24)::int))
FROM generate_series(1, 3712);

INSERT INTO part_hash.t20 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1478);

INSERT INTO part_hash.t21 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3258);

INSERT INTO part_hash.t22 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1341);

INSERT INTO part_hash.t23 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,13)
FROM generate_series(1, 1358);

INSERT INTO part_hash.t24 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 2074);

INSERT INTO part_hash.t25 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4058);

INSERT INTO part_hash.t26 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 1358);

INSERT INTO part_hash.t27 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1667);

INSERT INTO part_hash.t28 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2250);

INSERT INTO part_hash.t29 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3286);

INSERT INTO part_hash.t30 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,17),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3521);

INSERT INTO part_hash.t31 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1564);

INSERT INTO part_hash.t32 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 1939);

INSERT INTO part_hash.t33 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 4372);

INSERT INTO part_hash.t34 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*29)::int))
FROM generate_series(1, 1838);

INSERT INTO part_hash.t35 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 3576);

INSERT INTO part_hash.t36 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,16)
FROM generate_series(1, 3582);

INSERT INTO part_hash.t37 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,13),
    (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 3569);

INSERT INTO part_hash.t38 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16)
FROM generate_series(1, 3718);

INSERT INTO part_hash.t39 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 3589);

INSERT INTO part_hash.t40 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1623);

INSERT INTO part_hash.t41 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 1928);

INSERT INTO part_hash.t42 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 3744);

INSERT INTO part_hash.t43 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 4953);

INSERT INTO part_hash.t44 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 3808);

INSERT INTO part_hash.t45 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(4-0)-1))::numeric(4,0)
FROM generate_series(1, 4772);

INSERT INTO part_hash.t46 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 4346);

INSERT INTO part_hash.t47 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 1673);

INSERT INTO part_hash.t48 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,2)
FROM generate_series(1, 3450);

INSERT INTO part_hash.t49 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 3391);

INSERT INTO part_hash.t50 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 4693);

INSERT INTO part_hash.t51 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 2306);

INSERT INTO part_hash.t52 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3136);

INSERT INTO part_hash.t53 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(5-2)-1))::numeric(5,2)
FROM generate_series(1, 2533);

INSERT INTO part_hash.t54 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1037);

INSERT INTO part_hash.t55 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 2084);

INSERT INTO part_hash.t56 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 3082);

INSERT INTO part_hash.t57 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 3073);

INSERT INTO part_hash.t58 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4961);

INSERT INTO part_hash.t59 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4428);

INSERT INTO part_hash.t60 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint
FROM generate_series(1, 1208);

INSERT INTO part_hash.t61 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random()*(10^(11-2)-1))::numeric(11,2)
FROM generate_series(1, 1252);

INSERT INTO part_hash.t62 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,18),
    (random() > 0.5),
    substr(md5(random()::text),1,17),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4892);

INSERT INTO part_hash.t63 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,13)
FROM generate_series(1, 3772);

INSERT INTO part_hash.t64 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1442);

INSERT INTO part_hash.t65 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(4-0)-1))::numeric(4,0),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3679);

INSERT INTO part_hash.t66 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    (random()*(10^(10-2)-1))::numeric(10,2)
FROM generate_series(1, 4133);

INSERT INTO part_hash.t67 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4324);

INSERT INTO part_hash.t68 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2126);

INSERT INTO part_hash.t69 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4300);

INSERT INTO part_hash.t70 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2779);

INSERT INTO part_hash.t71 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 4316);

INSERT INTO part_hash.t72 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 1313);

INSERT INTO part_hash.t73 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 3252);

INSERT INTO part_hash.t74 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 1492);

INSERT INTO part_hash.t75 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(5-1)-1))::numeric(5,1),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1651);

INSERT INTO part_hash.t76 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2300);

INSERT INTO part_hash.t77 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3341);

INSERT INTO part_hash.t78 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1277);

INSERT INTO part_hash.t79 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 2350);

INSERT INTO part_hash.t80 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1590);

INSERT INTO part_hash.t81 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 2763);

INSERT INTO part_hash.t82 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,15),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 3564);

INSERT INTO part_hash.t83 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,11)
FROM generate_series(1, 3146);

INSERT INTO part_hash.t84 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1568);

INSERT INTO part_hash.t85 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3615);

INSERT INTO part_hash.t86 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4460);

INSERT INTO part_hash.t87 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 4651);

INSERT INTO part_hash.t88 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4959);

INSERT INTO part_hash.t89 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(7-1)-1))::numeric(7,1),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 3117);

INSERT INTO part_hash.t90 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3152);

INSERT INTO part_hash.t91 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(4-3)-1))::numeric(4,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    gen_random_uuid(),
    (random()*(10^(4-0)-1))::numeric(4,0)
FROM generate_series(1, 2952);

INSERT INTO part_hash.t92 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*23)::int))
FROM generate_series(1, 4460);

INSERT INTO part_hash.t93 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*28)::int))
FROM generate_series(1, 3082);

INSERT INTO part_hash.t94 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1826);

INSERT INTO part_hash.t95 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    gen_random_uuid(),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random() > 0.5)
FROM generate_series(1, 3206);

INSERT INTO part_hash.t96 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,15),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 2495);

INSERT INTO part_hash.t97 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,5)
FROM generate_series(1, 2783);

INSERT INTO part_hash.t98 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1346);

INSERT INTO part_hash.t99 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*31)::int))
FROM generate_series(1, 1628);

INSERT INTO part_hash.t100 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 2134);
