INSERT INTO part_random.t1 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,3), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 155);

INSERT INTO part_random.t2 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random() > 0.5), floor(random()*32767)::smallint, gen_random_uuid()
FROM generate_series(1, 215);

INSERT INTO part_random.t3 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 120);

INSERT INTO part_random.t4 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 430);

INSERT INTO part_random.t5 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), (random()*10000)::double precision, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 322);

INSERT INTO part_random.t6 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 211);

INSERT INTO part_random.t7 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), substr(md5(random()::text),1,18)
FROM generate_series(1, 402);

INSERT INTO part_random.t8 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*35)::int)), floor(random()*2147483647)::int
FROM generate_series(1, 140);

INSERT INTO part_random.t9 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 238);

INSERT INTO part_random.t10 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 480);

INSERT INTO part_random.t11 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 363);

INSERT INTO part_random.t12 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, (random()*(10^(9-2)-1))::numeric(9,2), substr(md5(random()::text),1,16)
FROM generate_series(1, 169);

INSERT INTO part_random.t13 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random()*(10^(12-2)-1))::numeric(12,2), floor(random()*9223372036854775807)::bigint, (random() > 0.5)
FROM generate_series(1, 431);

INSERT INTO part_random.t14 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*50)::int)), substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*2147483647)::int
FROM generate_series(1, 204);

INSERT INTO part_random.t15 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(11-3)-1))::numeric(11,3), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 319);

INSERT INTO part_random.t16 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,1)
FROM generate_series(1, 435);

INSERT INTO part_random.t17 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 318);

INSERT INTO part_random.t18 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 324);

INSERT INTO part_random.t19 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 127);

INSERT INTO part_random.t20 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, (random()*(10^(12-1)-1))::numeric(12,1), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 322);

INSERT INTO part_random.t21 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 307);

INSERT INTO part_random.t22 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 110);

INSERT INTO part_random.t23 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint
FROM generate_series(1, 125);

INSERT INTO part_random.t24 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), substr(md5(random()::text),1,30)
FROM generate_series(1, 223);

INSERT INTO part_random.t25 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 208);

INSERT INTO part_random.t26 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*31)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 202);

INSERT INTO part_random.t27 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 181);

INSERT INTO part_random.t28 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, gen_random_uuid()
FROM generate_series(1, 407);

INSERT INTO part_random.t29 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(10-1)-1))::numeric(10,1)
FROM generate_series(1, 319);

INSERT INTO part_random.t30 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*18)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 473);

INSERT INTO part_random.t31 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*1)::int)), floor(random()*2147483647)::int
FROM generate_series(1, 419);

INSERT INTO part_random.t32 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 487);

INSERT INTO part_random.t33 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,10), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*25)::int)), substr(md5(random()::text),1,(1+floor(random()*17)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 478);

INSERT INTO part_random.t34 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision
FROM generate_series(1, 213);

INSERT INTO part_random.t35 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 278);

INSERT INTO part_random.t36 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, gen_random_uuid(), substr(md5(random()::text),1,20)
FROM generate_series(1, 181);

INSERT INTO part_random.t37 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,2), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 373);

INSERT INTO part_random.t38 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,5), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,6)
FROM generate_series(1, 203);

INSERT INTO part_random.t39 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 494);

INSERT INTO part_random.t40 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(6-3)-1))::numeric(6,3), substr(md5(random()::text),1,6), (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 320);

INSERT INTO part_random.t41 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::double precision, floor(random()*32767)::smallint, substr(md5(random()::text),1,30)
FROM generate_series(1, 128);

INSERT INTO part_random.t42 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,2), substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 287);

INSERT INTO part_random.t43 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*12)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 187);

INSERT INTO part_random.t44 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 465);

INSERT INTO part_random.t45 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 200);

INSERT INTO part_random.t46 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(5-0)-1))::numeric(5,0), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 437);

INSERT INTO part_random.t47 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), gen_random_uuid(), (random()*10000)::real
FROM generate_series(1, 413);

INSERT INTO part_random.t48 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 229);

INSERT INTO part_random.t49 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random() > 0.5), gen_random_uuid()
FROM generate_series(1, 123);

INSERT INTO part_random.t50 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*23)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 226);

INSERT INTO part_random.t51 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), gen_random_uuid(), substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 362);

INSERT INTO part_random.t52 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 368);

INSERT INTO part_random.t53 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 314);

INSERT INTO part_random.t54 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 360);

INSERT INTO part_random.t55 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*30)::int)), floor(random()*32767)::smallint, (random() > 0.5), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 127);

INSERT INTO part_random.t56 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 129);

INSERT INTO part_random.t57 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 210);

INSERT INTO part_random.t58 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*31)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 392);

INSERT INTO part_random.t59 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,8)
FROM generate_series(1, 269);

INSERT INTO part_random.t60 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,16)
FROM generate_series(1, 427);

INSERT INTO part_random.t61 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,9), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 253);

INSERT INTO part_random.t62 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-1)-1))::numeric(6,1), floor(random()*32767)::smallint, (random()*10000)::double precision
FROM generate_series(1, 270);

INSERT INTO part_random.t63 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*2147483647)::int
FROM generate_series(1, 121);

INSERT INTO part_random.t64 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,11), substr(md5(random()::text),1,(1+floor(random()*50)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 223);

INSERT INTO part_random.t65 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid()
FROM generate_series(1, 343);

INSERT INTO part_random.t66 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,9)
FROM generate_series(1, 148);

INSERT INTO part_random.t67 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 321);

INSERT INTO part_random.t68 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, gen_random_uuid(), gen_random_uuid()
FROM generate_series(1, 217);

INSERT INTO part_random.t69 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,13), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 395);

INSERT INTO part_random.t70 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*48)::int)), (random()*10000)::real, (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 189);

INSERT INTO part_random.t71 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*18)::int)), substr(md5(random()::text),1,(1+floor(random()*21)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 311);

INSERT INTO part_random.t72 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*2)::int)), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 321);

INSERT INTO part_random.t73 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(9-1)-1))::numeric(9,1), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint
FROM generate_series(1, 284);

INSERT INTO part_random.t74 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 500);

INSERT INTO part_random.t75 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*(10^(5-2)-1))::numeric(5,2), substr(md5(random()::text),1,6), floor(random()*9223372036854775807)::bigint, (random() > 0.5)
FROM generate_series(1, 105);

INSERT INTO part_random.t76 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 138);

INSERT INTO part_random.t77 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 146);

INSERT INTO part_random.t78 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint
FROM generate_series(1, 491);

INSERT INTO part_random.t79 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real
FROM generate_series(1, 113);

INSERT INTO part_random.t80 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 354);

INSERT INTO part_random.t81 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision
FROM generate_series(1, 301);

INSERT INTO part_random.t82 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,15), (random()*(10^(12-1)-1))::numeric(12,1), (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 389);

INSERT INTO part_random.t83 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, (random()*10000)::real
FROM generate_series(1, 323);

INSERT INTO part_random.t84 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(7-1)-1))::numeric(7,1), gen_random_uuid(), substr(md5(random()::text),1,30)
FROM generate_series(1, 225);

INSERT INTO part_random.t85 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*31)::int))
FROM generate_series(1, 202);

INSERT INTO part_random.t86 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 147);

INSERT INTO part_random.t87 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision
FROM generate_series(1, 111);

INSERT INTO part_random.t88 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*9)::int)), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random()*10000)::real
FROM generate_series(1, 399);

INSERT INTO part_random.t89 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 312);

INSERT INTO part_random.t90 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, (random()*(10^(5-3)-1))::numeric(5,3), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*17)::int))
FROM generate_series(1, 362);

INSERT INTO part_random.t91 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 228);

INSERT INTO part_random.t92 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 341);

INSERT INTO part_random.t93 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 169);

INSERT INTO part_random.t94 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5)
FROM generate_series(1, 225);

INSERT INTO part_random.t95 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 271);

INSERT INTO part_random.t96 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 168);

INSERT INTO part_random.t97 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), (random() > 0.5), substr(md5(random()::text),1,7)
FROM generate_series(1, 143);

INSERT INTO part_random.t98 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(9-3)-1))::numeric(9,3), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 172);

INSERT INTO part_random.t99 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*47)::int)), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 147);

INSERT INTO part_random.t100 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, floor(random()*2147483647)::int
FROM generate_series(1, 313);
