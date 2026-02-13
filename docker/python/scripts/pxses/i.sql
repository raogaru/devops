INSERT INTO pxses.t1 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,19),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 194);

INSERT INTO pxses.t2 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 432);

INSERT INTO pxses.t3 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 125);

INSERT INTO pxses.t4 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 154);

INSERT INTO pxses.t5 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*(10^(10-2)-1))::numeric(10,2),
    floor(random()*32767)::smallint
FROM generate_series(1, 437);

INSERT INTO pxses.t6 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 406);

INSERT INTO pxses.t7 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,11),
    (random()*(10^(12-1)-1))::numeric(12,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 243);

INSERT INTO pxses.t8 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 428);

INSERT INTO pxses.t9 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 353);

INSERT INTO pxses.t10 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision
FROM generate_series(1, 184);

INSERT INTO pxses.t11 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 169);

INSERT INTO pxses.t12 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 208);

INSERT INTO pxses.t13 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 440);

INSERT INTO pxses.t14 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 364);

INSERT INTO pxses.t15 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*(10^(4-1)-1))::numeric(4,1),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16)
FROM generate_series(1, 270);

INSERT INTO pxses.t16 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 188);

INSERT INTO pxses.t17 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 192);

INSERT INTO pxses.t18 (c1,c2,c3)
SELECT
    (random()*(10^(8-2)-1))::numeric(8,2),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 323);

INSERT INTO pxses.t19 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 225);

INSERT INTO pxses.t20 (c1,c2,c3,c4)
SELECT
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random()*(10^(7-2)-1))::numeric(7,2),
    substr(md5(random()::text),1,10),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 247);

INSERT INTO pxses.t21 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 451);

INSERT INTO pxses.t22 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    (random() > 0.5)
FROM generate_series(1, 213);

INSERT INTO pxses.t23 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 452);

INSERT INTO pxses.t24 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 487);

INSERT INTO pxses.t25 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 213);

INSERT INTO pxses.t26 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 393);

INSERT INTO pxses.t27 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 240);

INSERT INTO pxses.t28 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 179);

INSERT INTO pxses.t29 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 265);

INSERT INTO pxses.t30 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 116);

INSERT INTO pxses.t31 (c1,c2,c3)
SELECT
    (random()*(10^(10-2)-1))::numeric(10,2),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 201);

INSERT INTO pxses.t32 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 270);

INSERT INTO pxses.t33 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 360);

INSERT INTO pxses.t34 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 346);

INSERT INTO pxses.t35 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(7-2)-1))::numeric(7,2),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 174);

INSERT INTO pxses.t36 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 469);

INSERT INTO pxses.t37 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 271);

INSERT INTO pxses.t38 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*(10^(10-0)-1))::numeric(10,0),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 297);

INSERT INTO pxses.t39 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,7),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 116);

INSERT INTO pxses.t40 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 410);

INSERT INTO pxses.t41 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 492);

INSERT INTO pxses.t42 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 313);

INSERT INTO pxses.t43 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,16),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 349);

INSERT INTO pxses.t44 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 374);

INSERT INTO pxses.t45 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 243);

INSERT INTO pxses.t46 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    (random()*(10^(9-0)-1))::numeric(9,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 407);

INSERT INTO pxses.t47 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 428);

INSERT INTO pxses.t48 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 194);

INSERT INTO pxses.t49 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,6),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,20),
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 293);

INSERT INTO pxses.t50 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,11),
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 238);

INSERT INTO pxses.t51 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-1)-1))::numeric(5,1)
FROM generate_series(1, 475);

INSERT INTO pxses.t52 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,13),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 254);

INSERT INTO pxses.t53 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 487);

INSERT INTO pxses.t54 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*(10^(11-1)-1))::numeric(11,1),
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 379);

INSERT INTO pxses.t55 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 282);

INSERT INTO pxses.t56 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    (random()*(10^(4-2)-1))::numeric(4,2),
    (random() > 0.5)
FROM generate_series(1, 212);

INSERT INTO pxses.t57 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 305);

INSERT INTO pxses.t58 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 482);

INSERT INTO pxses.t59 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*(10^(6-1)-1))::numeric(6,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 334);

INSERT INTO pxses.t60 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 436);

INSERT INTO pxses.t61 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 203);

INSERT INTO pxses.t62 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 275);

INSERT INTO pxses.t63 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-1)-1))::numeric(10,1),
    floor(random()*32767)::smallint
FROM generate_series(1, 402);

INSERT INTO pxses.t64 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 350);

INSERT INTO pxses.t65 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 275);

INSERT INTO pxses.t66 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 248);

INSERT INTO pxses.t67 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 441);

INSERT INTO pxses.t68 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 319);

INSERT INTO pxses.t69 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*3)::int))
FROM generate_series(1, 225);

INSERT INTO pxses.t70 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*43)::int))
FROM generate_series(1, 389);

INSERT INTO pxses.t71 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*30)::int))
FROM generate_series(1, 399);

INSERT INTO pxses.t72 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 463);

INSERT INTO pxses.t73 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 438);

INSERT INTO pxses.t74 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*8)::int))
FROM generate_series(1, 185);

INSERT INTO pxses.t75 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*24)::int))
FROM generate_series(1, 221);

INSERT INTO pxses.t76 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-1)-1))::numeric(11,1),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 393);

INSERT INTO pxses.t77 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 470);

INSERT INTO pxses.t78 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 359);

INSERT INTO pxses.t79 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 103);

INSERT INTO pxses.t80 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 381);

INSERT INTO pxses.t81 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 488);

INSERT INTO pxses.t82 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,19),
    (random()*10000)::real,
    substr(md5(random()::text),1,19),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 398);

INSERT INTO pxses.t83 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,3)
FROM generate_series(1, 403);

INSERT INTO pxses.t84 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 356);

INSERT INTO pxses.t85 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    substr(md5(random()::text),1,13),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 124);

INSERT INTO pxses.t86 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,11),
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 245);

INSERT INTO pxses.t87 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 371);

INSERT INTO pxses.t88 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 484);

INSERT INTO pxses.t89 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 373);

INSERT INTO pxses.t90 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 300);

INSERT INTO pxses.t91 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 280);

INSERT INTO pxses.t92 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-1)-1))::numeric(8,1),
    gen_random_uuid(),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 263);

INSERT INTO pxses.t93 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,2)
FROM generate_series(1, 258);

INSERT INTO pxses.t94 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 456);

INSERT INTO pxses.t95 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 451);

INSERT INTO pxses.t96 (c1,c2,c3)
SELECT
    (random()*(10^(6-0)-1))::numeric(6,0),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 466);

INSERT INTO pxses.t97 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,5),
    floor(random()*2147483647)::int,
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 201);

INSERT INTO pxses.t98 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 331);

INSERT INTO pxses.t99 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 333);

INSERT INTO pxses.t100 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 460);

INSERT INTO pxses.t101 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 133);

INSERT INTO pxses.t102 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 336);

INSERT INTO pxses.t103 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 168);

INSERT INTO pxses.t104 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,8)
FROM generate_series(1, 388);

INSERT INTO pxses.t105 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 246);

INSERT INTO pxses.t106 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 274);

INSERT INTO pxses.t107 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 310);

INSERT INTO pxses.t108 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(12-3)-1))::numeric(12,3),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 326);

INSERT INTO pxses.t109 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 322);

INSERT INTO pxses.t110 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 297);

INSERT INTO pxses.t111 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 213);

INSERT INTO pxses.t112 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 384);

INSERT INTO pxses.t113 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 248);

INSERT INTO pxses.t114 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,7),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 387);

INSERT INTO pxses.t115 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 438);

INSERT INTO pxses.t116 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 405);

INSERT INTO pxses.t117 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 122);

INSERT INTO pxses.t118 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 429);

INSERT INTO pxses.t119 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    gen_random_uuid()
FROM generate_series(1, 130);

INSERT INTO pxses.t120 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 486);

INSERT INTO pxses.t121 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,18),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 306);

INSERT INTO pxses.t122 (c1,c2,c3,c4)
SELECT
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random()*10000)::real,
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 106);

INSERT INTO pxses.t123 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 325);

INSERT INTO pxses.t124 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 245);

INSERT INTO pxses.t125 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 319);

INSERT INTO pxses.t126 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    substr(md5(random()::text),1,8),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 120);

INSERT INTO pxses.t127 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 496);

INSERT INTO pxses.t128 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 258);

INSERT INTO pxses.t129 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 241);

INSERT INTO pxses.t130 (c1,c2,c3)
SELECT
    (random()*(10^(9-1)-1))::numeric(9,1),
    gen_random_uuid(),
    floor(random()*2147483647)::int
FROM generate_series(1, 258);

INSERT INTO pxses.t131 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 494);

INSERT INTO pxses.t132 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*(10^(5-3)-1))::numeric(5,3),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 128);

INSERT INTO pxses.t133 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 301);

INSERT INTO pxses.t134 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(9-0)-1))::numeric(9,0),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    gen_random_uuid()
FROM generate_series(1, 252);

INSERT INTO pxses.t135 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 150);

INSERT INTO pxses.t136 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 262);

INSERT INTO pxses.t137 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 448);

INSERT INTO pxses.t138 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    (random()*(10^(11-2)-1))::numeric(11,2),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 389);

INSERT INTO pxses.t139 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 472);

INSERT INTO pxses.t140 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 476);

INSERT INTO pxses.t141 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(12-2)-1))::numeric(12,2),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 443);

INSERT INTO pxses.t142 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(12-1)-1))::numeric(12,1),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 112);

INSERT INTO pxses.t143 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,17),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 426);

INSERT INTO pxses.t144 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 132);

INSERT INTO pxses.t145 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,20),
    (random()*10000)::double precision
FROM generate_series(1, 291);

INSERT INTO pxses.t146 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 284);

INSERT INTO pxses.t147 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 101);

INSERT INTO pxses.t148 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(5-2)-1))::numeric(5,2),
    substr(md5(random()::text),1,20)
FROM generate_series(1, 481);

INSERT INTO pxses.t149 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 212);

INSERT INTO pxses.t150 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*(10^(5-1)-1))::numeric(5,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 334);

INSERT INTO pxses.t151 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint
FROM generate_series(1, 115);

INSERT INTO pxses.t152 (c1,c2,c3)
SELECT
    (random()*(10^(4-3)-1))::numeric(4,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,17)
FROM generate_series(1, 411);

INSERT INTO pxses.t153 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 164);

INSERT INTO pxses.t154 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 173);

INSERT INTO pxses.t155 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 153);

INSERT INTO pxses.t156 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random()*10000)::real
FROM generate_series(1, 270);

INSERT INTO pxses.t157 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 219);

INSERT INTO pxses.t158 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 184);

INSERT INTO pxses.t159 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 219);

INSERT INTO pxses.t160 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 399);

INSERT INTO pxses.t161 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 203);

INSERT INTO pxses.t162 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(12-3)-1))::numeric(12,3),
    floor(random()*32767)::smallint
FROM generate_series(1, 277);

INSERT INTO pxses.t163 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    substr(md5(random()::text),1,16),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 351);

INSERT INTO pxses.t164 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 132);

INSERT INTO pxses.t165 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*(10^(12-2)-1))::numeric(12,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 446);

INSERT INTO pxses.t166 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 264);

INSERT INTO pxses.t167 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 455);

INSERT INTO pxses.t168 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    (random()*(10^(11-1)-1))::numeric(11,1),
    floor(random()*2147483647)::int
FROM generate_series(1, 109);

INSERT INTO pxses.t169 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random()*(10^(7-1)-1))::numeric(7,1),
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 294);

INSERT INTO pxses.t170 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 359);

INSERT INTO pxses.t171 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 412);

INSERT INTO pxses.t172 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 367);

INSERT INTO pxses.t173 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,18),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 110);

INSERT INTO pxses.t174 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random()*10000)::real
FROM generate_series(1, 435);

INSERT INTO pxses.t175 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 487);

INSERT INTO pxses.t176 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 427);

INSERT INTO pxses.t177 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 391);

INSERT INTO pxses.t178 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 276);

INSERT INTO pxses.t179 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 123);

INSERT INTO pxses.t180 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 491);

INSERT INTO pxses.t181 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 474);

INSERT INTO pxses.t182 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(6-3)-1))::numeric(6,3),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 394);

INSERT INTO pxses.t183 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 476);

INSERT INTO pxses.t184 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 287);

INSERT INTO pxses.t185 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 436);

INSERT INTO pxses.t186 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 165);

INSERT INTO pxses.t187 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(11-3)-1))::numeric(11,3),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,(1+floor(random()*39)::int))
FROM generate_series(1, 235);

INSERT INTO pxses.t188 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*5)::int))
FROM generate_series(1, 181);

INSERT INTO pxses.t189 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 278);

INSERT INTO pxses.t190 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 308);

INSERT INTO pxses.t191 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 107);

INSERT INTO pxses.t192 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 170);

INSERT INTO pxses.t193 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 177);

INSERT INTO pxses.t194 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,16)
FROM generate_series(1, 191);

INSERT INTO pxses.t195 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    (random() > 0.5),
    (random()*(10^(8-0)-1))::numeric(8,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 337);

INSERT INTO pxses.t196 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,3),
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random()*10000)::real
FROM generate_series(1, 317);

INSERT INTO pxses.t197 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,8),
    (random()*10000)::real,
    (random()*(10^(11-0)-1))::numeric(11,0),
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    (random()*10000)::real
FROM generate_series(1, 301);

INSERT INTO pxses.t198 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-1)-1))::numeric(10,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 316);

INSERT INTO pxses.t199 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 101);

INSERT INTO pxses.t200 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 320);

INSERT INTO pxses.t201 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 378);

INSERT INTO pxses.t202 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 497);

INSERT INTO pxses.t203 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 161);

INSERT INTO pxses.t204 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 280);

INSERT INTO pxses.t205 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*3)::int))
FROM generate_series(1, 317);

INSERT INTO pxses.t206 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 147);

INSERT INTO pxses.t207 (c1,c2,c3,c4)
SELECT
    (random()*(10^(4-1)-1))::numeric(4,1),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 184);

INSERT INTO pxses.t208 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7)
FROM generate_series(1, 174);

INSERT INTO pxses.t209 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-0)-1))::numeric(11,0),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 433);

INSERT INTO pxses.t210 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 477);

INSERT INTO pxses.t211 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 492);

INSERT INTO pxses.t212 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*(10^(8-0)-1))::numeric(8,0),
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 253);

INSERT INTO pxses.t213 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,17)
FROM generate_series(1, 189);

INSERT INTO pxses.t214 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 238);

INSERT INTO pxses.t215 (c1,c2,c3,c4)
SELECT
    (random()*(10^(9-3)-1))::numeric(9,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 308);

INSERT INTO pxses.t216 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 228);

INSERT INTO pxses.t217 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*13)::int))
FROM generate_series(1, 441);

INSERT INTO pxses.t218 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 104);

INSERT INTO pxses.t219 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(4-3)-1))::numeric(4,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 479);

INSERT INTO pxses.t220 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,9),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 446);

INSERT INTO pxses.t221 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int))
FROM generate_series(1, 317);

INSERT INTO pxses.t222 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 498);

INSERT INTO pxses.t223 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 473);

INSERT INTO pxses.t224 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,1),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 161);

INSERT INTO pxses.t225 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 294);

INSERT INTO pxses.t226 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 212);

INSERT INTO pxses.t227 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 363);

INSERT INTO pxses.t228 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 276);

INSERT INTO pxses.t229 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 135);

INSERT INTO pxses.t230 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 337);

INSERT INTO pxses.t231 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    substr(md5(random()::text),1,20)
FROM generate_series(1, 281);

INSERT INTO pxses.t232 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 442);

INSERT INTO pxses.t233 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(4-0)-1))::numeric(4,0),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 278);

INSERT INTO pxses.t234 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,14)
FROM generate_series(1, 394);

INSERT INTO pxses.t235 (c1,c2,c3)
SELECT
    (random()*(10^(4-3)-1))::numeric(4,3),
    substr(md5(random()::text),1,4),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 297);

INSERT INTO pxses.t236 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,19),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 445);

INSERT INTO pxses.t237 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 493);

INSERT INTO pxses.t238 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 423);

INSERT INTO pxses.t239 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 139);

INSERT INTO pxses.t240 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 415);

INSERT INTO pxses.t241 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 281);

INSERT INTO pxses.t242 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-2)-1))::numeric(10,2),
    floor(random()*32767)::smallint
FROM generate_series(1, 478);

INSERT INTO pxses.t243 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(4-3)-1))::numeric(4,3),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 228);

INSERT INTO pxses.t244 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,11)
FROM generate_series(1, 218);

INSERT INTO pxses.t245 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 159);

INSERT INTO pxses.t246 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 305);

INSERT INTO pxses.t247 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 451);

INSERT INTO pxses.t248 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 122);

INSERT INTO pxses.t249 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 104);

INSERT INTO pxses.t250 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 468);

INSERT INTO pxses.t251 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 222);

INSERT INTO pxses.t252 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 456);

INSERT INTO pxses.t253 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,12),
    (random()*(10^(5-0)-1))::numeric(5,0),
    floor(random()*32767)::smallint
FROM generate_series(1, 171);

INSERT INTO pxses.t254 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 332);

INSERT INTO pxses.t255 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 119);

INSERT INTO pxses.t256 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 409);

INSERT INTO pxses.t257 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 285);

INSERT INTO pxses.t258 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 136);

INSERT INTO pxses.t259 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,9),
    (random() > 0.5)
FROM generate_series(1, 229);

INSERT INTO pxses.t260 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 488);

INSERT INTO pxses.t261 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 156);

INSERT INTO pxses.t262 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 448);

INSERT INTO pxses.t263 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(6-2)-1))::numeric(6,2),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,14),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 103);

INSERT INTO pxses.t264 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 229);

INSERT INTO pxses.t265 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 383);

INSERT INTO pxses.t266 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 404);

INSERT INTO pxses.t267 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 175);

INSERT INTO pxses.t268 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    (random()*(10^(9-0)-1))::numeric(9,0),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 271);

INSERT INTO pxses.t269 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 142);

INSERT INTO pxses.t270 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 483);

INSERT INTO pxses.t271 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 367);

INSERT INTO pxses.t272 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 326);

INSERT INTO pxses.t273 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 252);

INSERT INTO pxses.t274 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 383);

INSERT INTO pxses.t275 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 448);

INSERT INTO pxses.t276 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 466);

INSERT INTO pxses.t277 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 476);

INSERT INTO pxses.t278 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*2147483647)::int
FROM generate_series(1, 175);

INSERT INTO pxses.t279 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*32767)::smallint
FROM generate_series(1, 313);

INSERT INTO pxses.t280 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,20),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 350);

INSERT INTO pxses.t281 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 102);

INSERT INTO pxses.t282 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    (random()*(10^(8-0)-1))::numeric(8,0)
FROM generate_series(1, 223);

INSERT INTO pxses.t283 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 130);

INSERT INTO pxses.t284 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 156);

INSERT INTO pxses.t285 (c1,c2,c3)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,6),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 367);

INSERT INTO pxses.t286 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(10-3)-1))::numeric(10,3),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 331);

INSERT INTO pxses.t287 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,8)
FROM generate_series(1, 307);

INSERT INTO pxses.t288 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,8),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 476);

INSERT INTO pxses.t289 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,18),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,2),
    (random() > 0.5),
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 466);

INSERT INTO pxses.t290 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 184);

INSERT INTO pxses.t291 (c1,c2,c3)
SELECT
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 401);

INSERT INTO pxses.t292 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random()*(10^(4-3)-1))::numeric(4,3),
    (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 389);

INSERT INTO pxses.t293 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 324);

INSERT INTO pxses.t294 (c1,c2,c3)
SELECT
    (random()*(10^(5-3)-1))::numeric(5,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 412);

INSERT INTO pxses.t295 (c1,c2,c3)
SELECT
    (random()*(10^(12-2)-1))::numeric(12,2),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 403);

INSERT INTO pxses.t296 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 388);

INSERT INTO pxses.t297 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,15),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 207);

INSERT INTO pxses.t298 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 351);

INSERT INTO pxses.t299 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 329);

INSERT INTO pxses.t300 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 374);

INSERT INTO pxses.t301 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 256);

INSERT INTO pxses.t302 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 335);

INSERT INTO pxses.t303 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 484);

INSERT INTO pxses.t304 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 242);

INSERT INTO pxses.t305 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,12),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 119);

INSERT INTO pxses.t306 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 207);

INSERT INTO pxses.t307 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,18),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 197);

INSERT INTO pxses.t308 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 201);

INSERT INTO pxses.t309 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 474);

INSERT INTO pxses.t310 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 489);

INSERT INTO pxses.t311 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 270);

INSERT INTO pxses.t312 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 375);

INSERT INTO pxses.t313 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 131);

INSERT INTO pxses.t314 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 464);

INSERT INTO pxses.t315 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 326);

INSERT INTO pxses.t316 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 433);

INSERT INTO pxses.t317 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,12),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 415);

INSERT INTO pxses.t318 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 491);

INSERT INTO pxses.t319 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 281);

INSERT INTO pxses.t320 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,9),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 191);

INSERT INTO pxses.t321 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 342);

INSERT INTO pxses.t322 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 403);

INSERT INTO pxses.t323 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,15),
    (random()*(10^(4-0)-1))::numeric(4,0),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 434);

INSERT INTO pxses.t324 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(7-1)-1))::numeric(7,1),
    floor(random()*32767)::smallint
FROM generate_series(1, 136);

INSERT INTO pxses.t325 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 492);

INSERT INTO pxses.t326 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 263);

INSERT INTO pxses.t327 (c1,c2,c3)
SELECT
    (random()*(10^(8-3)-1))::numeric(8,3),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 497);

INSERT INTO pxses.t328 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 252);

INSERT INTO pxses.t329 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    (random() > 0.5)
FROM generate_series(1, 130);

INSERT INTO pxses.t330 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 333);

INSERT INTO pxses.t331 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random()*10000)::real
FROM generate_series(1, 377);

INSERT INTO pxses.t332 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 211);

INSERT INTO pxses.t333 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 135);

INSERT INTO pxses.t334 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 125);

INSERT INTO pxses.t335 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 258);

INSERT INTO pxses.t336 (c1,c2,c3)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 225);

INSERT INTO pxses.t337 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 148);

INSERT INTO pxses.t338 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 399);

INSERT INTO pxses.t339 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 126);

INSERT INTO pxses.t340 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 187);

INSERT INTO pxses.t341 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 252);

INSERT INTO pxses.t342 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 430);

INSERT INTO pxses.t343 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,11)
FROM generate_series(1, 386);

INSERT INTO pxses.t344 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 300);

INSERT INTO pxses.t345 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 497);

INSERT INTO pxses.t346 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 281);

INSERT INTO pxses.t347 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(8-2)-1))::numeric(8,2),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 294);

INSERT INTO pxses.t348 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,18)
FROM generate_series(1, 227);

INSERT INTO pxses.t349 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(7-0)-1))::numeric(7,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,19),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 355);

INSERT INTO pxses.t350 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 260);

INSERT INTO pxses.t351 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random()*(10^(5-2)-1))::numeric(5,2),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 106);

INSERT INTO pxses.t352 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 443);

INSERT INTO pxses.t353 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 378);

INSERT INTO pxses.t354 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 201);

INSERT INTO pxses.t355 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 200);

INSERT INTO pxses.t356 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 249);

INSERT INTO pxses.t357 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,6),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 490);

INSERT INTO pxses.t358 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 116);

INSERT INTO pxses.t359 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 234);

INSERT INTO pxses.t360 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,7),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 417);

INSERT INTO pxses.t361 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 111);

INSERT INTO pxses.t362 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*(10^(9-2)-1))::numeric(9,2),
    substr(md5(random()::text),1,3),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 305);

INSERT INTO pxses.t363 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 454);

INSERT INTO pxses.t364 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-1)-1))::numeric(11,1),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 215);

INSERT INTO pxses.t365 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*32767)::smallint
FROM generate_series(1, 449);

INSERT INTO pxses.t366 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-3)-1))::numeric(11,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 142);

INSERT INTO pxses.t367 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*8)::int))
FROM generate_series(1, 231);

INSERT INTO pxses.t368 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 340);

INSERT INTO pxses.t369 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 452);

INSERT INTO pxses.t370 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 437);

INSERT INTO pxses.t371 (c1,c2,c3)
SELECT
    (random()*(10^(12-3)-1))::numeric(12,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 364);

INSERT INTO pxses.t372 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 302);

INSERT INTO pxses.t373 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 366);

INSERT INTO pxses.t374 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 296);

INSERT INTO pxses.t375 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint
FROM generate_series(1, 496);

INSERT INTO pxses.t376 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 158);

INSERT INTO pxses.t377 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 164);

INSERT INTO pxses.t378 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-3)-1))::numeric(10,3)
FROM generate_series(1, 473);

INSERT INTO pxses.t379 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,12),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 378);

INSERT INTO pxses.t380 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*20)::int))
FROM generate_series(1, 203);

INSERT INTO pxses.t381 (c1,c2,c3)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 101);

INSERT INTO pxses.t382 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 237);

INSERT INTO pxses.t383 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,5)
FROM generate_series(1, 492);

INSERT INTO pxses.t384 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*1)::int))
FROM generate_series(1, 397);

INSERT INTO pxses.t385 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 382);

INSERT INTO pxses.t386 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    (random() > 0.5)
FROM generate_series(1, 163);

INSERT INTO pxses.t387 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 222);

INSERT INTO pxses.t388 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    substr(md5(random()::text),1,16)
FROM generate_series(1, 192);

INSERT INTO pxses.t389 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 120);

INSERT INTO pxses.t390 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*7)::int))
FROM generate_series(1, 210);

INSERT INTO pxses.t391 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,16),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 238);

INSERT INTO pxses.t392 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    (random()*10000)::double precision,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 390);

INSERT INTO pxses.t393 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,18),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 139);

INSERT INTO pxses.t394 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 385);

INSERT INTO pxses.t395 (c1,c2,c3)
SELECT
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 364);

INSERT INTO pxses.t396 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 117);

INSERT INTO pxses.t397 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 121);

INSERT INTO pxses.t398 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 110);

INSERT INTO pxses.t399 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 137);

INSERT INTO pxses.t400 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 411);

INSERT INTO pxses.t401 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 142);

INSERT INTO pxses.t402 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 120);

INSERT INTO pxses.t403 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 487);

INSERT INTO pxses.t404 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*26)::int))
FROM generate_series(1, 437);

INSERT INTO pxses.t405 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*13)::int))
FROM generate_series(1, 145);

INSERT INTO pxses.t406 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,13),
    (random() > 0.5)
FROM generate_series(1, 130);

INSERT INTO pxses.t407 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,20),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 211);

INSERT INTO pxses.t408 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 425);

INSERT INTO pxses.t409 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 448);

INSERT INTO pxses.t410 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,7),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 273);

INSERT INTO pxses.t411 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 222);

INSERT INTO pxses.t412 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 247);

INSERT INTO pxses.t413 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 410);

INSERT INTO pxses.t414 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*46)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 177);

INSERT INTO pxses.t415 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 108);

INSERT INTO pxses.t416 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    (random()*10000)::double precision,
    (random()*(10^(4-0)-1))::numeric(4,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(11-3)-1))::numeric(11,3)
FROM generate_series(1, 308);

INSERT INTO pxses.t417 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 205);

INSERT INTO pxses.t418 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 182);

INSERT INTO pxses.t419 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 243);

INSERT INTO pxses.t420 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,6),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 286);

INSERT INTO pxses.t421 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 149);

INSERT INTO pxses.t422 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 121);

INSERT INTO pxses.t423 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 232);

INSERT INTO pxses.t424 (c1,c2,c3)
SELECT
    (random()*(10^(7-0)-1))::numeric(7,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 466);

INSERT INTO pxses.t425 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 231);

INSERT INTO pxses.t426 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 105);

INSERT INTO pxses.t427 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 478);

INSERT INTO pxses.t428 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 373);

INSERT INTO pxses.t429 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 454);

INSERT INTO pxses.t430 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 181);

INSERT INTO pxses.t431 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 368);

INSERT INTO pxses.t432 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 347);

INSERT INTO pxses.t433 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,12)
FROM generate_series(1, 369);

INSERT INTO pxses.t434 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(10-2)-1))::numeric(10,2),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*3)::int))
FROM generate_series(1, 194);

INSERT INTO pxses.t435 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(6-3)-1))::numeric(6,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 139);

INSERT INTO pxses.t436 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*(10^(10-2)-1))::numeric(10,2),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 143);

INSERT INTO pxses.t437 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,10)
FROM generate_series(1, 199);

INSERT INTO pxses.t438 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 243);

INSERT INTO pxses.t439 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    (random()*(10^(5-1)-1))::numeric(5,1)
FROM generate_series(1, 296);

INSERT INTO pxses.t440 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 357);

INSERT INTO pxses.t441 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 232);

INSERT INTO pxses.t442 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 312);

INSERT INTO pxses.t443 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 290);

INSERT INTO pxses.t444 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    gen_random_uuid()
FROM generate_series(1, 169);

INSERT INTO pxses.t445 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-1)-1))::numeric(6,1),
    floor(random()*32767)::smallint
FROM generate_series(1, 386);

INSERT INTO pxses.t446 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 132);

INSERT INTO pxses.t447 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 279);

INSERT INTO pxses.t448 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,18)
FROM generate_series(1, 112);

INSERT INTO pxses.t449 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,8),
    (random()*(10^(7-0)-1))::numeric(7,0),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 111);

INSERT INTO pxses.t450 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(12-0)-1))::numeric(12,0),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 394);

INSERT INTO pxses.t451 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 247);

INSERT INTO pxses.t452 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 213);

INSERT INTO pxses.t453 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,9)
FROM generate_series(1, 366);

INSERT INTO pxses.t454 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 458);

INSERT INTO pxses.t455 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 222);

INSERT INTO pxses.t456 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 175);

INSERT INTO pxses.t457 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 169);

INSERT INTO pxses.t458 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 182);

INSERT INTO pxses.t459 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 156);

INSERT INTO pxses.t460 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 219);

INSERT INTO pxses.t461 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 213);

INSERT INTO pxses.t462 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    substr(md5(random()::text),1,5),
    (random()*(10^(6-0)-1))::numeric(6,0),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 499);

INSERT INTO pxses.t463 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 183);

INSERT INTO pxses.t464 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 222);

INSERT INTO pxses.t465 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 380);

INSERT INTO pxses.t466 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 333);

INSERT INTO pxses.t467 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 207);

INSERT INTO pxses.t468 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 374);

INSERT INTO pxses.t469 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 157);

INSERT INTO pxses.t470 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 105);

INSERT INTO pxses.t471 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 175);

INSERT INTO pxses.t472 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 230);

INSERT INTO pxses.t473 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 385);

INSERT INTO pxses.t474 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 300);

INSERT INTO pxses.t475 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 318);

INSERT INTO pxses.t476 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,12),
    (random()*(10^(4-0)-1))::numeric(4,0),
    gen_random_uuid()
FROM generate_series(1, 357);

INSERT INTO pxses.t477 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(8-3)-1))::numeric(8,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 360);

INSERT INTO pxses.t478 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 232);

INSERT INTO pxses.t479 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 119);

INSERT INTO pxses.t480 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,18),
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 109);

INSERT INTO pxses.t481 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 368);

INSERT INTO pxses.t482 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 203);

INSERT INTO pxses.t483 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(11-3)-1))::numeric(11,3)
FROM generate_series(1, 267);

INSERT INTO pxses.t484 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 118);

INSERT INTO pxses.t485 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,14),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 272);

INSERT INTO pxses.t486 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(9-2)-1))::numeric(9,2),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,12),
    floor(random()*32767)::smallint
FROM generate_series(1, 372);

INSERT INTO pxses.t487 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 387);

INSERT INTO pxses.t488 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 433);

INSERT INTO pxses.t489 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 206);

INSERT INTO pxses.t490 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    (random()*10000)::real
FROM generate_series(1, 169);

INSERT INTO pxses.t491 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 103);

INSERT INTO pxses.t492 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 275);

INSERT INTO pxses.t493 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,20),
    (random()*(10^(8-3)-1))::numeric(8,3),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 109);

INSERT INTO pxses.t494 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 399);

INSERT INTO pxses.t495 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(12-3)-1))::numeric(12,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 166);

INSERT INTO pxses.t496 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    (random()*(10^(6-2)-1))::numeric(6,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 228);

INSERT INTO pxses.t497 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 447);

INSERT INTO pxses.t498 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 464);

INSERT INTO pxses.t499 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 275);

INSERT INTO pxses.t500 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 341);

INSERT INTO pxses.t501 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 400);

INSERT INTO pxses.t502 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    (random()*(10^(8-0)-1))::numeric(8,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 247);

INSERT INTO pxses.t503 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 426);

INSERT INTO pxses.t504 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 418);

INSERT INTO pxses.t505 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-3)-1))::numeric(8,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 372);

INSERT INTO pxses.t506 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 456);

INSERT INTO pxses.t507 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 205);

INSERT INTO pxses.t508 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 401);

INSERT INTO pxses.t509 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-0)-1))::numeric(8,0)
FROM generate_series(1, 451);

INSERT INTO pxses.t510 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 421);

INSERT INTO pxses.t511 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,7),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int
FROM generate_series(1, 334);

INSERT INTO pxses.t512 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*(10^(8-0)-1))::numeric(8,0),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 486);

INSERT INTO pxses.t513 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 469);

INSERT INTO pxses.t514 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 408);

INSERT INTO pxses.t515 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 260);

INSERT INTO pxses.t516 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 169);

INSERT INTO pxses.t517 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 356);

INSERT INTO pxses.t518 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 277);

INSERT INTO pxses.t519 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 198);

INSERT INTO pxses.t520 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,9),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 443);

INSERT INTO pxses.t521 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 295);

INSERT INTO pxses.t522 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 272);

INSERT INTO pxses.t523 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 260);

INSERT INTO pxses.t524 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 337);

INSERT INTO pxses.t525 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 307);

INSERT INTO pxses.t526 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,6)
FROM generate_series(1, 132);

INSERT INTO pxses.t527 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 337);

INSERT INTO pxses.t528 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 328);

INSERT INTO pxses.t529 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 328);

INSERT INTO pxses.t530 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 197);

INSERT INTO pxses.t531 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(11-2)-1))::numeric(11,2),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 136);

INSERT INTO pxses.t532 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::real
FROM generate_series(1, 125);

INSERT INTO pxses.t533 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,(1+floor(random()*17)::int))
FROM generate_series(1, 221);

INSERT INTO pxses.t534 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 321);

INSERT INTO pxses.t535 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 332);

INSERT INTO pxses.t536 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 405);

INSERT INTO pxses.t537 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 191);

INSERT INTO pxses.t538 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,5),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 177);

INSERT INTO pxses.t539 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 418);

INSERT INTO pxses.t540 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 449);

INSERT INTO pxses.t541 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 365);

INSERT INTO pxses.t542 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,1),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 359);

INSERT INTO pxses.t543 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*(10^(5-0)-1))::numeric(5,0),
    floor(random()*32767)::smallint
FROM generate_series(1, 128);

INSERT INTO pxses.t544 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 297);

INSERT INTO pxses.t545 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    (random()*10000)::double precision
FROM generate_series(1, 444);

INSERT INTO pxses.t546 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 396);

INSERT INTO pxses.t547 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random()*10000)::real
FROM generate_series(1, 298);

INSERT INTO pxses.t548 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 236);

INSERT INTO pxses.t549 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 363);

INSERT INTO pxses.t550 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    (random()*(10^(12-0)-1))::numeric(12,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 161);

INSERT INTO pxses.t551 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,10),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 484);

INSERT INTO pxses.t552 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,12),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 186);

INSERT INTO pxses.t553 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 385);

INSERT INTO pxses.t554 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,11),
    (random()*10000)::real
FROM generate_series(1, 216);

INSERT INTO pxses.t555 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 415);

INSERT INTO pxses.t556 (c1,c2,c3,c4)
SELECT
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 254);

INSERT INTO pxses.t557 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(4-0)-1))::numeric(4,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,9)
FROM generate_series(1, 201);

INSERT INTO pxses.t558 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 202);

INSERT INTO pxses.t559 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 222);

INSERT INTO pxses.t560 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    (random()*10000)::double precision,
    (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 376);

INSERT INTO pxses.t561 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 104);

INSERT INTO pxses.t562 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 130);

INSERT INTO pxses.t563 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 316);

INSERT INTO pxses.t564 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 385);

INSERT INTO pxses.t565 (c1,c2,c3)
SELECT
    (random()*(10^(4-2)-1))::numeric(4,2),
    (random()*10000)::real,
    (random() > 0.5)
FROM generate_series(1, 209);

INSERT INTO pxses.t566 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 342);

INSERT INTO pxses.t567 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 257);

INSERT INTO pxses.t568 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 156);

INSERT INTO pxses.t569 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 486);

INSERT INTO pxses.t570 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 107);

INSERT INTO pxses.t571 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 435);

INSERT INTO pxses.t572 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 145);

INSERT INTO pxses.t573 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,13),
    gen_random_uuid(),
    (random()*(10^(6-3)-1))::numeric(6,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 329);

INSERT INTO pxses.t574 (c1,c2,c3)
SELECT
    (random()*(10^(11-0)-1))::numeric(11,0),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    (random() > 0.5)
FROM generate_series(1, 444);

INSERT INTO pxses.t575 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 194);

INSERT INTO pxses.t576 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 344);

INSERT INTO pxses.t577 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 159);

INSERT INTO pxses.t578 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 474);

INSERT INTO pxses.t579 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13)
FROM generate_series(1, 492);

INSERT INTO pxses.t580 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    substr(md5(random()::text),1,14),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 255);

INSERT INTO pxses.t581 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(12-2)-1))::numeric(12,2),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 418);

INSERT INTO pxses.t582 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 414);

INSERT INTO pxses.t583 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(9-3)-1))::numeric(9,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 353);

INSERT INTO pxses.t584 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 369);

INSERT INTO pxses.t585 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    (random()*(10^(11-0)-1))::numeric(11,0)
FROM generate_series(1, 208);

INSERT INTO pxses.t586 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 432);

INSERT INTO pxses.t587 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 408);

INSERT INTO pxses.t588 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    substr(md5(random()::text),1,15)
FROM generate_series(1, 381);

INSERT INTO pxses.t589 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 179);

INSERT INTO pxses.t590 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 248);

INSERT INTO pxses.t591 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 487);

INSERT INTO pxses.t592 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*6)::int))
FROM generate_series(1, 128);

INSERT INTO pxses.t593 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid()
FROM generate_series(1, 455);

INSERT INTO pxses.t594 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 399);

INSERT INTO pxses.t595 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random()*10000)::double precision
FROM generate_series(1, 214);

INSERT INTO pxses.t596 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(12-3)-1))::numeric(12,3),
    (random()*(10^(9-2)-1))::numeric(9,2),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 284);

INSERT INTO pxses.t597 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*27)::int)),
    (random()*(10^(4-2)-1))::numeric(4,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 468);

INSERT INTO pxses.t598 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,13),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*8)::int))
FROM generate_series(1, 366);

INSERT INTO pxses.t599 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 474);

INSERT INTO pxses.t600 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 113);

INSERT INTO pxses.t601 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    substr(md5(random()::text),1,13)
FROM generate_series(1, 390);

INSERT INTO pxses.t602 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,9),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 241);

INSERT INTO pxses.t603 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(8-3)-1))::numeric(8,3),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 305);

INSERT INTO pxses.t604 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 284);

INSERT INTO pxses.t605 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 352);

INSERT INTO pxses.t606 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(4-3)-1))::numeric(4,3),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 424);

INSERT INTO pxses.t607 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 136);

INSERT INTO pxses.t608 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,17),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 459);

INSERT INTO pxses.t609 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 329);

INSERT INTO pxses.t610 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(6-2)-1))::numeric(6,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 200);

INSERT INTO pxses.t611 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*(10^(6-0)-1))::numeric(6,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 227);

INSERT INTO pxses.t612 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    gen_random_uuid()
FROM generate_series(1, 110);

INSERT INTO pxses.t613 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(10-3)-1))::numeric(10,3),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 443);

INSERT INTO pxses.t614 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 273);

INSERT INTO pxses.t615 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,13),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 309);

INSERT INTO pxses.t616 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*18)::int)),
    substr(md5(random()::text),1,18),
    (random()*(10^(12-3)-1))::numeric(12,3),
    (random()*10000)::real
FROM generate_series(1, 173);

INSERT INTO pxses.t617 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 165);

INSERT INTO pxses.t618 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*(10^(4-3)-1))::numeric(4,3)
FROM generate_series(1, 383);

INSERT INTO pxses.t619 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,10),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 139);

INSERT INTO pxses.t620 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 266);

INSERT INTO pxses.t621 (c1,c2,c3)
SELECT
    (random()*(10^(8-2)-1))::numeric(8,2),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,5)
FROM generate_series(1, 455);

INSERT INTO pxses.t622 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 337);

INSERT INTO pxses.t623 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,(1+floor(random()*26)::int))
FROM generate_series(1, 224);

INSERT INTO pxses.t624 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 320);

INSERT INTO pxses.t625 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,8),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 221);

INSERT INTO pxses.t626 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 350);

INSERT INTO pxses.t627 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    substr(md5(random()::text),1,12)
FROM generate_series(1, 338);

INSERT INTO pxses.t628 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,2),
    (random()*(10^(5-0)-1))::numeric(5,0),
    gen_random_uuid()
FROM generate_series(1, 106);

INSERT INTO pxses.t629 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,2),
    (random()*(10^(8-1)-1))::numeric(8,1),
    (random()*10000)::double precision
FROM generate_series(1, 153);

INSERT INTO pxses.t630 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 127);

INSERT INTO pxses.t631 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,12),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*21)::int))
FROM generate_series(1, 118);

INSERT INTO pxses.t632 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,2),
    (random()*(10^(8-3)-1))::numeric(8,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 112);

INSERT INTO pxses.t633 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random() > 0.5),
    substr(md5(random()::text),1,8),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 303);

INSERT INTO pxses.t634 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 156);

INSERT INTO pxses.t635 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 432);

INSERT INTO pxses.t636 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 166);

INSERT INTO pxses.t637 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(7-0)-1))::numeric(7,0),
    gen_random_uuid()
FROM generate_series(1, 389);

INSERT INTO pxses.t638 (c1,c2,c3)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 463);

INSERT INTO pxses.t639 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 293);

INSERT INTO pxses.t640 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 459);

INSERT INTO pxses.t641 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    substr(md5(random()::text),1,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 106);

INSERT INTO pxses.t642 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,11),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 475);

INSERT INTO pxses.t643 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 149);

INSERT INTO pxses.t644 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(7-2)-1))::numeric(7,2),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 299);

INSERT INTO pxses.t645 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 361);

INSERT INTO pxses.t646 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 125);

INSERT INTO pxses.t647 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 127);

INSERT INTO pxses.t648 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(5-3)-1))::numeric(5,3),
    substr(md5(random()::text),1,4)
FROM generate_series(1, 238);

INSERT INTO pxses.t649 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,15)
FROM generate_series(1, 244);

INSERT INTO pxses.t650 (c1,c2,c3)
SELECT
    (random()*(10^(7-2)-1))::numeric(7,2),
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,(1+floor(random()*36)::int))
FROM generate_series(1, 456);

INSERT INTO pxses.t651 (c1,c2,c3,c4)
SELECT
    (random()*(10^(7-2)-1))::numeric(7,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 211);

INSERT INTO pxses.t652 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,15),
    (random()*10000)::double precision
FROM generate_series(1, 241);

INSERT INTO pxses.t653 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    (random()*10000)::real
FROM generate_series(1, 254);

INSERT INTO pxses.t654 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(5-1)-1))::numeric(5,1),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 135);

INSERT INTO pxses.t655 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 184);

INSERT INTO pxses.t656 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 428);

INSERT INTO pxses.t657 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real
FROM generate_series(1, 450);

INSERT INTO pxses.t658 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid()
FROM generate_series(1, 370);

INSERT INTO pxses.t659 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 238);

INSERT INTO pxses.t660 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 244);

INSERT INTO pxses.t661 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    (random() > 0.5),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 369);

INSERT INTO pxses.t662 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 217);

INSERT INTO pxses.t663 (c1,c2,c3)
SELECT
    (random()*(10^(6-2)-1))::numeric(6,2),
    substr(md5(random()::text),1,30),
    (random()*(10^(5-2)-1))::numeric(5,2)
FROM generate_series(1, 450);

INSERT INTO pxses.t664 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,9),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 340);

INSERT INTO pxses.t665 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 307);

INSERT INTO pxses.t666 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 492);

INSERT INTO pxses.t667 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 278);

INSERT INTO pxses.t668 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 269);

INSERT INTO pxses.t669 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 115);

INSERT INTO pxses.t670 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 331);

INSERT INTO pxses.t671 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 361);

INSERT INTO pxses.t672 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 152);

INSERT INTO pxses.t673 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 331);

INSERT INTO pxses.t674 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 220);

INSERT INTO pxses.t675 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    (random()*(10^(6-0)-1))::numeric(6,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 119);

INSERT INTO pxses.t676 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 251);

INSERT INTO pxses.t677 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 125);

INSERT INTO pxses.t678 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,16),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 252);

INSERT INTO pxses.t679 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 256);

INSERT INTO pxses.t680 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(11-3)-1))::numeric(11,3),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*22)::int))
FROM generate_series(1, 105);

INSERT INTO pxses.t681 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,3),
    (random()*(10^(10-2)-1))::numeric(10,2),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*10000)::real
FROM generate_series(1, 218);

INSERT INTO pxses.t682 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 245);

INSERT INTO pxses.t683 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 463);

INSERT INTO pxses.t684 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 187);

INSERT INTO pxses.t685 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,18)
FROM generate_series(1, 266);

INSERT INTO pxses.t686 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,20),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 121);

INSERT INTO pxses.t687 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 348);

INSERT INTO pxses.t688 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 229);

INSERT INTO pxses.t689 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 209);

INSERT INTO pxses.t690 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 258);

INSERT INTO pxses.t691 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,16),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 254);

INSERT INTO pxses.t692 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(7-2)-1))::numeric(7,2),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 355);

INSERT INTO pxses.t693 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 415);

INSERT INTO pxses.t694 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 189);

INSERT INTO pxses.t695 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 225);

INSERT INTO pxses.t696 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,15)
FROM generate_series(1, 435);

INSERT INTO pxses.t697 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 116);

INSERT INTO pxses.t698 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 245);

INSERT INTO pxses.t699 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 226);

INSERT INTO pxses.t700 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 461);

INSERT INTO pxses.t701 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 452);

INSERT INTO pxses.t702 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 289);

INSERT INTO pxses.t703 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 279);

INSERT INTO pxses.t704 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 236);

INSERT INTO pxses.t705 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(11-2)-1))::numeric(11,2),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 134);

INSERT INTO pxses.t706 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,16),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 253);

INSERT INTO pxses.t707 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 132);

INSERT INTO pxses.t708 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 252);

INSERT INTO pxses.t709 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,10),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 177);

INSERT INTO pxses.t710 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,9),
    substr(md5(random()::text),1,(1+floor(random()*40)::int)),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 199);

INSERT INTO pxses.t711 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 211);

INSERT INTO pxses.t712 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 439);

INSERT INTO pxses.t713 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 107);

INSERT INTO pxses.t714 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,12),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 236);

INSERT INTO pxses.t715 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(4-3)-1))::numeric(4,3)
FROM generate_series(1, 128);

INSERT INTO pxses.t716 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,2)
FROM generate_series(1, 147);

INSERT INTO pxses.t717 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 128);

INSERT INTO pxses.t718 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,19)
FROM generate_series(1, 482);

INSERT INTO pxses.t719 (c1,c2,c3)
SELECT
    (random()*(10^(10-0)-1))::numeric(10,0),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 258);

INSERT INTO pxses.t720 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 136);

INSERT INTO pxses.t721 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,6),
    (random() > 0.5)
FROM generate_series(1, 457);

INSERT INTO pxses.t722 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 317);

INSERT INTO pxses.t723 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 467);

INSERT INTO pxses.t724 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,19),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,15)
FROM generate_series(1, 129);

INSERT INTO pxses.t725 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 286);

INSERT INTO pxses.t726 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 192);

INSERT INTO pxses.t727 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 477);

INSERT INTO pxses.t728 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 399);

INSERT INTO pxses.t729 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,20),
    substr(md5(random()::text),1,12),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 107);

INSERT INTO pxses.t730 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 177);

INSERT INTO pxses.t731 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 270);

INSERT INTO pxses.t732 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 171);

INSERT INTO pxses.t733 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*(10^(10-0)-1))::numeric(10,0),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 263);

INSERT INTO pxses.t734 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 351);

INSERT INTO pxses.t735 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 168);

INSERT INTO pxses.t736 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 433);

INSERT INTO pxses.t737 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 388);

INSERT INTO pxses.t738 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*(10^(11-3)-1))::numeric(11,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 166);

INSERT INTO pxses.t739 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 276);

INSERT INTO pxses.t740 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 489);

INSERT INTO pxses.t741 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 500);

INSERT INTO pxses.t742 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(4-0)-1))::numeric(4,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 322);

INSERT INTO pxses.t743 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 459);

INSERT INTO pxses.t744 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 498);

INSERT INTO pxses.t745 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    (random()*(10^(7-0)-1))::numeric(7,0)
FROM generate_series(1, 330);

INSERT INTO pxses.t746 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 235);

INSERT INTO pxses.t747 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 234);

INSERT INTO pxses.t748 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,6)
FROM generate_series(1, 273);

INSERT INTO pxses.t749 (c1,c2,c3)
SELECT
    (random()*(10^(5-0)-1))::numeric(5,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 196);

INSERT INTO pxses.t750 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,3),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 384);

INSERT INTO pxses.t751 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,6),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 500);

INSERT INTO pxses.t752 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,11),
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,3)
FROM generate_series(1, 484);

INSERT INTO pxses.t753 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 352);

INSERT INTO pxses.t754 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    (random()*(10^(8-0)-1))::numeric(8,0),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 435);

INSERT INTO pxses.t755 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 481);

INSERT INTO pxses.t756 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,16),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,9)
FROM generate_series(1, 138);

INSERT INTO pxses.t757 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 482);

INSERT INTO pxses.t758 (c1,c2,c3)
SELECT
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 228);

INSERT INTO pxses.t759 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    (random()*10000)::real
FROM generate_series(1, 465);

INSERT INTO pxses.t760 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 236);

INSERT INTO pxses.t761 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 191);

INSERT INTO pxses.t762 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 203);

INSERT INTO pxses.t763 (c1,c2,c3,c4)
SELECT
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 265);

INSERT INTO pxses.t764 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 271);

INSERT INTO pxses.t765 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*44)::int))
FROM generate_series(1, 316);

INSERT INTO pxses.t766 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 355);

INSERT INTO pxses.t767 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    (random() > 0.5)
FROM generate_series(1, 493);

INSERT INTO pxses.t768 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(7-2)-1))::numeric(7,2),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3)
FROM generate_series(1, 243);

INSERT INTO pxses.t769 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 246);

INSERT INTO pxses.t770 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 393);

INSERT INTO pxses.t771 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,10),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 163);

INSERT INTO pxses.t772 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 243);

INSERT INTO pxses.t773 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 246);

INSERT INTO pxses.t774 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,17),
    (random()*10000)::double precision,
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 432);

INSERT INTO pxses.t775 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 312);

INSERT INTO pxses.t776 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 114);

INSERT INTO pxses.t777 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 201);

INSERT INTO pxses.t778 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 360);

INSERT INTO pxses.t779 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(6-2)-1))::numeric(6,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 195);

INSERT INTO pxses.t780 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,6),
    (random()*(10^(5-3)-1))::numeric(5,3),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 192);

INSERT INTO pxses.t781 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 475);

INSERT INTO pxses.t782 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 100);

INSERT INTO pxses.t783 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    gen_random_uuid()
FROM generate_series(1, 125);

INSERT INTO pxses.t784 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 344);

INSERT INTO pxses.t785 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(5-0)-1))::numeric(5,0)
FROM generate_series(1, 330);

INSERT INTO pxses.t786 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 333);

INSERT INTO pxses.t787 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 474);

INSERT INTO pxses.t788 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random()*(10^(11-1)-1))::numeric(11,1),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 485);

INSERT INTO pxses.t789 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 354);

INSERT INTO pxses.t790 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 309);

INSERT INTO pxses.t791 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 127);

INSERT INTO pxses.t792 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    substr(md5(random()::text),1,14),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 163);

INSERT INTO pxses.t793 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 216);

INSERT INTO pxses.t794 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 369);

INSERT INTO pxses.t795 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 114);

INSERT INTO pxses.t796 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random()*(10^(10-3)-1))::numeric(10,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 409);

INSERT INTO pxses.t797 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    gen_random_uuid(),
    floor(random()*2147483647)::int
FROM generate_series(1, 306);

INSERT INTO pxses.t798 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(4-1)-1))::numeric(4,1),
    gen_random_uuid()
FROM generate_series(1, 207);

INSERT INTO pxses.t799 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    gen_random_uuid(),
    (random()*10000)::real
FROM generate_series(1, 298);

INSERT INTO pxses.t800 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(4-0)-1))::numeric(4,0)
FROM generate_series(1, 420);

INSERT INTO pxses.t801 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    (random()*(10^(10-1)-1))::numeric(10,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 169);

INSERT INTO pxses.t802 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 453);

INSERT INTO pxses.t803 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 132);

INSERT INTO pxses.t804 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 409);

INSERT INTO pxses.t805 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*26)::int))
FROM generate_series(1, 480);

INSERT INTO pxses.t806 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*46)::int))
FROM generate_series(1, 412);

INSERT INTO pxses.t807 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 299);

INSERT INTO pxses.t808 (c1,c2,c3,c4)
SELECT
    (random()*(10^(11-2)-1))::numeric(11,2),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 479);

INSERT INTO pxses.t809 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-1)-1))::numeric(10,1)
FROM generate_series(1, 369);

INSERT INTO pxses.t810 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 143);

INSERT INTO pxses.t811 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*29)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 202);

INSERT INTO pxses.t812 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 427);

INSERT INTO pxses.t813 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 290);

INSERT INTO pxses.t814 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 348);

INSERT INTO pxses.t815 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 325);

INSERT INTO pxses.t816 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 410);

INSERT INTO pxses.t817 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(4-3)-1))::numeric(4,3),
    (random() > 0.5),
    substr(md5(random()::text),1,10),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 372);

INSERT INTO pxses.t818 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 345);

INSERT INTO pxses.t819 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 170);

INSERT INTO pxses.t820 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5)
FROM generate_series(1, 425);

INSERT INTO pxses.t821 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 360);

INSERT INTO pxses.t822 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 181);

INSERT INTO pxses.t823 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 421);

INSERT INTO pxses.t824 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*10000)::double precision,
    (random()*(10^(8-1)-1))::numeric(8,1),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 419);

INSERT INTO pxses.t825 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,11)
FROM generate_series(1, 215);

INSERT INTO pxses.t826 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 239);

INSERT INTO pxses.t827 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,2)
FROM generate_series(1, 206);

INSERT INTO pxses.t828 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-1)-1))::numeric(9,1),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 306);

INSERT INTO pxses.t829 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int
FROM generate_series(1, 130);

INSERT INTO pxses.t830 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 173);

INSERT INTO pxses.t831 (c1,c2,c3)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 211);

INSERT INTO pxses.t832 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    substr(md5(random()::text),1,7),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 204);

INSERT INTO pxses.t833 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 135);

INSERT INTO pxses.t834 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,1),
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 203);

INSERT INTO pxses.t835 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 427);

INSERT INTO pxses.t836 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 134);

INSERT INTO pxses.t837 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(5-0)-1))::numeric(5,0),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 500);

INSERT INTO pxses.t838 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 296);

INSERT INTO pxses.t839 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 389);

INSERT INTO pxses.t840 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 205);

INSERT INTO pxses.t841 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 122);

INSERT INTO pxses.t842 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 357);

INSERT INTO pxses.t843 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 199);

INSERT INTO pxses.t844 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 404);

INSERT INTO pxses.t845 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 421);

INSERT INTO pxses.t846 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 457);

INSERT INTO pxses.t847 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*10000)::double precision,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 113);

INSERT INTO pxses.t848 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 404);

INSERT INTO pxses.t849 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-2)-1))::numeric(10,2)
FROM generate_series(1, 419);

INSERT INTO pxses.t850 (c1,c2,c3,c4)
SELECT
    (random()*(10^(11-1)-1))::numeric(11,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 431);

INSERT INTO pxses.t851 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,11),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 281);

INSERT INTO pxses.t852 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,10),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 203);

INSERT INTO pxses.t853 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 226);

INSERT INTO pxses.t854 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,19),
    gen_random_uuid(),
    (random() > 0.5),
    substr(md5(random()::text),1,7)
FROM generate_series(1, 223);

INSERT INTO pxses.t855 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(5-0)-1))::numeric(5,0),
    floor(random()*2147483647)::int
FROM generate_series(1, 275);

INSERT INTO pxses.t856 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 495);

INSERT INTO pxses.t857 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 308);

INSERT INTO pxses.t858 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,2),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 264);

INSERT INTO pxses.t859 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 142);

INSERT INTO pxses.t860 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 441);

INSERT INTO pxses.t861 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,1),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 227);

INSERT INTO pxses.t862 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*6)::int)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 242);

INSERT INTO pxses.t863 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-1)-1))::numeric(9,1),
    gen_random_uuid()
FROM generate_series(1, 137);

INSERT INTO pxses.t864 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 315);

INSERT INTO pxses.t865 (c1,c2,c3)
SELECT
    (random() > 0.5),
    (random()*10000)::real,
    (random()*10000)::real
FROM generate_series(1, 262);

INSERT INTO pxses.t866 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 129);

INSERT INTO pxses.t867 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*41)::int))
FROM generate_series(1, 457);

INSERT INTO pxses.t868 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(10-0)-1))::numeric(10,0),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 354);

INSERT INTO pxses.t869 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 426);

INSERT INTO pxses.t870 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(9-1)-1))::numeric(9,1),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,13)
FROM generate_series(1, 314);

INSERT INTO pxses.t871 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 228);

INSERT INTO pxses.t872 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 141);

INSERT INTO pxses.t873 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*(10^(7-3)-1))::numeric(7,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5)
FROM generate_series(1, 388);

INSERT INTO pxses.t874 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,5),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int
FROM generate_series(1, 411);

INSERT INTO pxses.t875 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,2),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision
FROM generate_series(1, 193);

INSERT INTO pxses.t876 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 314);

INSERT INTO pxses.t877 (c1,c2,c3)
SELECT
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 387);

INSERT INTO pxses.t878 (c1,c2,c3)
SELECT
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 186);

INSERT INTO pxses.t879 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 168);

INSERT INTO pxses.t880 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 394);

INSERT INTO pxses.t881 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*28)::int))
FROM generate_series(1, 240);

INSERT INTO pxses.t882 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 102);

INSERT INTO pxses.t883 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 371);

INSERT INTO pxses.t884 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 315);

INSERT INTO pxses.t885 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int
FROM generate_series(1, 244);

INSERT INTO pxses.t886 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*38)::int))
FROM generate_series(1, 183);

INSERT INTO pxses.t887 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 116);

INSERT INTO pxses.t888 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    (random()*(10^(9-2)-1))::numeric(9,2),
    (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 169);

INSERT INTO pxses.t889 (c1,c2,c3)
SELECT
    (random()*(10^(10-3)-1))::numeric(10,3),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real
FROM generate_series(1, 221);

INSERT INTO pxses.t890 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 478);

INSERT INTO pxses.t891 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 313);

INSERT INTO pxses.t892 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,6),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 241);

INSERT INTO pxses.t893 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 377);

INSERT INTO pxses.t894 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 215);

INSERT INTO pxses.t895 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    substr(md5(random()::text),1,10)
FROM generate_series(1, 456);

INSERT INTO pxses.t896 (c1,c2,c3)
SELECT
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 302);

INSERT INTO pxses.t897 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 212);

INSERT INTO pxses.t898 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 108);

INSERT INTO pxses.t899 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 497);

INSERT INTO pxses.t900 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,16),
    (random() > 0.5)
FROM generate_series(1, 191);

INSERT INTO pxses.t901 (c1,c2,c3,c4)
SELECT
    (random()*(10^(4-2)-1))::numeric(4,2),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 150);

INSERT INTO pxses.t902 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 123);

INSERT INTO pxses.t903 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 209);

INSERT INTO pxses.t904 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 176);

INSERT INTO pxses.t905 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    gen_random_uuid()
FROM generate_series(1, 378);

INSERT INTO pxses.t906 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 175);

INSERT INTO pxses.t907 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 248);

INSERT INTO pxses.t908 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(7-3)-1))::numeric(7,3),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint
FROM generate_series(1, 239);

INSERT INTO pxses.t909 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 178);

INSERT INTO pxses.t910 (c1,c2,c3,c4)
SELECT
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,(1+floor(random()*35)::int)),
    floor(random()*32767)::smallint
FROM generate_series(1, 374);

INSERT INTO pxses.t911 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,4),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 296);

INSERT INTO pxses.t912 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 259);

INSERT INTO pxses.t913 (c1,c2,c3,c4,c5)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 214);

INSERT INTO pxses.t914 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 179);

INSERT INTO pxses.t915 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 369);

INSERT INTO pxses.t916 (c1,c2,c3)
SELECT
    (random()*(10^(12-1)-1))::numeric(12,1),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 451);

INSERT INTO pxses.t917 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 341);

INSERT INTO pxses.t918 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 103);

INSERT INTO pxses.t919 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 246);

INSERT INTO pxses.t920 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 371);

INSERT INTO pxses.t921 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5)
FROM generate_series(1, 269);

INSERT INTO pxses.t922 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 329);

INSERT INTO pxses.t923 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 333);

INSERT INTO pxses.t924 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,4),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 141);

INSERT INTO pxses.t925 (c1,c2,c3)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 416);

INSERT INTO pxses.t926 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,20),
    floor(random()*32767)::smallint,
    gen_random_uuid()
FROM generate_series(1, 290);

INSERT INTO pxses.t927 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*37)::int))
FROM generate_series(1, 151);

INSERT INTO pxses.t928 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision
FROM generate_series(1, 192);

INSERT INTO pxses.t929 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 449);

INSERT INTO pxses.t930 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision
FROM generate_series(1, 387);

INSERT INTO pxses.t931 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    (random() > 0.5)
FROM generate_series(1, 238);

INSERT INTO pxses.t932 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 337);

INSERT INTO pxses.t933 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 137);

INSERT INTO pxses.t934 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    (random() > 0.5)
FROM generate_series(1, 259);

INSERT INTO pxses.t935 (c1,c2,c3)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*6)::int))
FROM generate_series(1, 355);

INSERT INTO pxses.t936 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 123);

INSERT INTO pxses.t937 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 299);

INSERT INTO pxses.t938 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-3)-1))::numeric(9,3),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 214);

INSERT INTO pxses.t939 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 468);

INSERT INTO pxses.t940 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 102);

INSERT INTO pxses.t941 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    gen_random_uuid(),
    floor(random()*2147483647)::int
FROM generate_series(1, 218);

INSERT INTO pxses.t942 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(12-0)-1))::numeric(12,0),
    substr(md5(random()::text),1,19),
    substr(md5(random()::text),1,3),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 354);

INSERT INTO pxses.t943 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 395);

INSERT INTO pxses.t944 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,18),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 445);

INSERT INTO pxses.t945 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 354);

INSERT INTO pxses.t946 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 258);

INSERT INTO pxses.t947 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    (random()*(10^(11-3)-1))::numeric(11,3),
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 140);

INSERT INTO pxses.t948 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,8),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 262);

INSERT INTO pxses.t949 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 188);

INSERT INTO pxses.t950 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    substr(md5(random()::text),1,13)
FROM generate_series(1, 480);

INSERT INTO pxses.t951 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,20),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,16),
    gen_random_uuid()
FROM generate_series(1, 112);

INSERT INTO pxses.t952 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(7-3)-1))::numeric(7,3),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 395);

INSERT INTO pxses.t953 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    gen_random_uuid(),
    floor(random()*32767)::smallint
FROM generate_series(1, 474);

INSERT INTO pxses.t954 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 109);

INSERT INTO pxses.t955 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 328);

INSERT INTO pxses.t956 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(10-1)-1))::numeric(10,1),
    (random()*10000)::real
FROM generate_series(1, 400);

INSERT INTO pxses.t957 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 370);

INSERT INTO pxses.t958 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 284);

INSERT INTO pxses.t959 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 189);

INSERT INTO pxses.t960 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 478);

INSERT INTO pxses.t961 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    (random()*10000)::double precision,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 119);

INSERT INTO pxses.t962 (c1,c2,c3)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 443);

INSERT INTO pxses.t963 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 416);

INSERT INTO pxses.t964 (c1,c2,c3,c4,c5)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    (random() > 0.5),
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 359);

INSERT INTO pxses.t965 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 274);

INSERT INTO pxses.t966 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(7-0)-1))::numeric(7,0),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-1)-1))::numeric(9,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 469);

INSERT INTO pxses.t967 (c1,c2,c3)
SELECT
    (random()*(10^(5-3)-1))::numeric(5,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid()
FROM generate_series(1, 270);

INSERT INTO pxses.t968 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*22)::int))
FROM generate_series(1, 416);

INSERT INTO pxses.t969 (c1,c2,c3,c4)
SELECT
    (random()*(10^(4-2)-1))::numeric(4,2),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 266);

INSERT INTO pxses.t970 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 461);

INSERT INTO pxses.t971 (c1,c2,c3)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random() > 0.5)
FROM generate_series(1, 388);

INSERT INTO pxses.t972 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 404);

INSERT INTO pxses.t973 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 401);

INSERT INTO pxses.t974 (c1,c2,c3,c4)
SELECT
    (random()*(10^(12-1)-1))::numeric(12,1),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 197);

INSERT INTO pxses.t975 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 275);

INSERT INTO pxses.t976 (c1,c2,c3,c4)
SELECT
    (random()*(10^(4-1)-1))::numeric(4,1),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 370);

INSERT INTO pxses.t977 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 204);

INSERT INTO pxses.t978 (c1,c2,c3,c4)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*(10^(4-2)-1))::numeric(4,2),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 389);

INSERT INTO pxses.t979 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 310);

INSERT INTO pxses.t980 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 484);

INSERT INTO pxses.t981 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 275);

INSERT INTO pxses.t982 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 365);

INSERT INTO pxses.t983 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 346);

INSERT INTO pxses.t984 (c1,c2,c3)
SELECT
    (random()*(10^(7-0)-1))::numeric(7,0),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 164);

INSERT INTO pxses.t985 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 246);

INSERT INTO pxses.t986 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,9),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 361);

INSERT INTO pxses.t987 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 492);

INSERT INTO pxses.t988 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int
FROM generate_series(1, 324);

INSERT INTO pxses.t989 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 260);

INSERT INTO pxses.t990 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 348);

INSERT INTO pxses.t991 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,16),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 391);

INSERT INTO pxses.t992 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(10-3)-1))::numeric(10,3)
FROM generate_series(1, 423);

INSERT INTO pxses.t993 (c1,c2,c3)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 259);

INSERT INTO pxses.t994 (c1,c2,c3,c4)
SELECT
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 141);

INSERT INTO pxses.t995 (c1,c2,c3,c4)
SELECT
    (random()*(10^(9-1)-1))::numeric(9,1),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 496);

INSERT INTO pxses.t996 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,11),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 306);

INSERT INTO pxses.t997 (c1,c2,c3)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    (random()*10000)::real
FROM generate_series(1, 178);

INSERT INTO pxses.t998 (c1,c2,c3,c4,c5)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 297);

INSERT INTO pxses.t999 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,9),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 201);

INSERT INTO pxses.t1000 (c1,c2,c3,c4,c5)
SELECT
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 367);
