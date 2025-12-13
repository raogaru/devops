INSERT INTO test.t1 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 393);

INSERT INTO test.t2 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 252);

INSERT INTO test.t3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 223);

INSERT INTO test.t4 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    (random()*10000)::real
FROM generate_series(1, 325);

INSERT INTO test.t5 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*32767)::smallint
FROM generate_series(1, 233);

INSERT INTO test.t6 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,10),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 431);

INSERT INTO test.t7 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 162);

INSERT INTO test.t8 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 460);

INSERT INTO test.t9 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 479);

INSERT INTO test.t10 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    gen_random_uuid()
FROM generate_series(1, 402);

INSERT INTO test.t11 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 466);

INSERT INTO test.t12 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(11-0)-1))::numeric(11,0),
    (random() > 0.5),
    substr(md5(random()::text),1,4),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 461);

INSERT INTO test.t13 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 346);

INSERT INTO test.t14 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,20),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 125);

INSERT INTO test.t15 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int
FROM generate_series(1, 344);

INSERT INTO test.t16 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 211);

INSERT INTO test.t17 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 261);

INSERT INTO test.t18 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 432);

INSERT INTO test.t19 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    (random()*(10^(11-3)-1))::numeric(11,3),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 421);

INSERT INTO test.t20 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 299);

INSERT INTO test.t21 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 411);

INSERT INTO test.t22 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 166);

INSERT INTO test.t23 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 400);

INSERT INTO test.t24 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*(10^(8-1)-1))::numeric(8,1),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 495);

INSERT INTO test.t25 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 330);

INSERT INTO test.t26 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 279);

INSERT INTO test.t27 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 229);

INSERT INTO test.t28 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 258);

INSERT INTO test.t29 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,14),
    (random()*10000)::double precision,
    gen_random_uuid()
FROM generate_series(1, 276);

INSERT INTO test.t30 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,16),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 336);

INSERT INTO test.t31 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 101);

INSERT INTO test.t32 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*(10^(5-0)-1))::numeric(5,0),
    floor(random()*32767)::smallint
FROM generate_series(1, 489);

INSERT INTO test.t33 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 368);

INSERT INTO test.t34 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 201);

INSERT INTO test.t35 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 349);

INSERT INTO test.t36 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 119);

INSERT INTO test.t37 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 196);

INSERT INTO test.t38 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 259);

INSERT INTO test.t39 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 343);

INSERT INTO test.t40 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*(10^(5-0)-1))::numeric(5,0),
    (random()*10000)::real
FROM generate_series(1, 428);

INSERT INTO test.t41 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 463);

INSERT INTO test.t42 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 292);

INSERT INTO test.t43 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,19),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 388);

INSERT INTO test.t44 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real
FROM generate_series(1, 300);

INSERT INTO test.t45 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 236);

INSERT INTO test.t46 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 215);

INSERT INTO test.t47 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    (random()*(10^(5-2)-1))::numeric(5,2)
FROM generate_series(1, 235);

INSERT INTO test.t48 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(8-2)-1))::numeric(8,2),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 353);

INSERT INTO test.t49 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,1),
    floor(random()*2147483647)::int
FROM generate_series(1, 163);

INSERT INTO test.t50 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(8-2)-1))::numeric(8,2),
    (random()*(10^(7-3)-1))::numeric(7,3)
FROM generate_series(1, 469);

INSERT INTO test.t51 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 323);

INSERT INTO test.t52 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 188);

INSERT INTO test.t53 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 195);

INSERT INTO test.t54 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 148);

INSERT INTO test.t55 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(8-2)-1))::numeric(8,2),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 308);

INSERT INTO test.t56 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*28)::int))
FROM generate_series(1, 281);

INSERT INTO test.t57 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 298);

INSERT INTO test.t58 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 153);

INSERT INTO test.t59 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 211);

INSERT INTO test.t60 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 120);

INSERT INTO test.t61 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 293);

INSERT INTO test.t62 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 446);

INSERT INTO test.t63 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 205);

INSERT INTO test.t64 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 337);

INSERT INTO test.t65 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,(1+floor(random()*25)::int)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 424);

INSERT INTO test.t66 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,12),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 473);

INSERT INTO test.t67 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 449);

INSERT INTO test.t68 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 414);

INSERT INTO test.t69 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,13),
    floor(random()*2147483647)::int
FROM generate_series(1, 192);

INSERT INTO test.t70 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    (random()*(10^(12-0)-1))::numeric(12,0),
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 372);

INSERT INTO test.t71 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*23)::int))
FROM generate_series(1, 107);

INSERT INTO test.t72 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 497);

INSERT INTO test.t73 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 475);

INSERT INTO test.t74 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint,
    (random()*(10^(8-2)-1))::numeric(8,2)
FROM generate_series(1, 215);

INSERT INTO test.t75 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint
FROM generate_series(1, 205);

INSERT INTO test.t76 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*5)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    substr(md5(random()::text),1,(1+floor(random()*46)::int))
FROM generate_series(1, 270);

INSERT INTO test.t77 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 228);

INSERT INTO test.t78 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,16),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 334);

INSERT INTO test.t79 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 402);

INSERT INTO test.t80 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 364);

INSERT INTO test.t81 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,18),
    (random()*10000)::real
FROM generate_series(1, 227);

INSERT INTO test.t82 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision
FROM generate_series(1, 400);

INSERT INTO test.t83 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 297);

INSERT INTO test.t84 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,7),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 105);

INSERT INTO test.t85 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random()*10000)::double precision
FROM generate_series(1, 343);

INSERT INTO test.t86 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 245);

INSERT INTO test.t87 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 334);

INSERT INTO test.t88 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(4-0)-1))::numeric(4,0),
    (random() > 0.5),
    floor(random()*32767)::smallint
FROM generate_series(1, 280);

INSERT INTO test.t89 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,2),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random() > 0.5),
    floor(random()*2147483647)::int
FROM generate_series(1, 221);

INSERT INTO test.t90 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 165);

INSERT INTO test.t91 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random() > 0.5)
FROM generate_series(1, 238);

INSERT INTO test.t92 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    (random()*10000)::real
FROM generate_series(1, 215);

INSERT INTO test.t93 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,5)
FROM generate_series(1, 212);

INSERT INTO test.t94 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(10-3)-1))::numeric(10,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 263);

INSERT INTO test.t95 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 124);

INSERT INTO test.t96 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 261);

INSERT INTO test.t97 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(6-1)-1))::numeric(6,1),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 496);

INSERT INTO test.t98 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,13)
FROM generate_series(1, 257);

INSERT INTO test.t99 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 374);

INSERT INTO test.t100 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*45)::int)),
    (random() > 0.5)
FROM generate_series(1, 353);
