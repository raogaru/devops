INSERT INTO part_hash.t1 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*2147483647)::int
FROM generate_series(1, 2366);

INSERT INTO part_hash.t2 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*43)::int)), floor(random()*9223372036854775807)::bigint, (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2800);

INSERT INTO part_hash.t3 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 2809);

INSERT INTO part_hash.t4 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 1763);

INSERT INTO part_hash.t5 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4731);

INSERT INTO part_hash.t6 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*42)::int)), substr(md5(random()::text),1,(1+floor(random()*39)::int)), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*46)::int))
FROM generate_series(1, 2460);

INSERT INTO part_hash.t7 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,16), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2771);

INSERT INTO part_hash.t8 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4190);

INSERT INTO part_hash.t9 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*(10^(12-3)-1))::numeric(12,3), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3077);

INSERT INTO part_hash.t10 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,15)
FROM generate_series(1, 3923);

INSERT INTO part_hash.t11 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 1370);

INSERT INTO part_hash.t12 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2952);

INSERT INTO part_hash.t13 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*43)::int)), (random()*10000)::double precision, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, floor(random()*32767)::smallint
FROM generate_series(1, 4522);

INSERT INTO part_hash.t14 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(8-0)-1))::numeric(8,0), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1871);

INSERT INTO part_hash.t15 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random() > 0.5), floor(random()*2147483647)::int, (random()*(10^(4-3)-1))::numeric(4,3), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1500);

INSERT INTO part_hash.t16 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4893);

INSERT INTO part_hash.t17 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*(10^(6-0)-1))::numeric(6,0), gen_random_uuid(), floor(random()*32767)::smallint, substr(md5(random()::text),1,30)
FROM generate_series(1, 4569);

INSERT INTO part_hash.t18 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*2147483647)::int, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3066);

INSERT INTO part_hash.t19 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,18), substr(md5(random()::text),1,6), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1261);

INSERT INTO part_hash.t20 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), (random()*10000)::real
FROM generate_series(1, 1097);

INSERT INTO part_hash.t21 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1252);

INSERT INTO part_hash.t22 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 4263);

INSERT INTO part_hash.t23 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::double precision, gen_random_uuid(), (random() > 0.5)
FROM generate_series(1, 2775);

INSERT INTO part_hash.t24 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real
FROM generate_series(1, 2919);

INSERT INTO part_hash.t25 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*14)::int)), floor(random()*32767)::smallint
FROM generate_series(1, 3761);

INSERT INTO part_hash.t26 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*32767)::smallint, floor(random()*32767)::smallint
FROM generate_series(1, 3493);

INSERT INTO part_hash.t27 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::real, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4718);

INSERT INTO part_hash.t28 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*2)::int)), substr(md5(random()::text),1,16), (random()*10000)::real
FROM generate_series(1, 2908);

INSERT INTO part_hash.t29 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 3738);

INSERT INTO part_hash.t30 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4147);

INSERT INTO part_hash.t31 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3222);

INSERT INTO part_hash.t32 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), (random()*10000)::double precision
FROM generate_series(1, 3405);

INSERT INTO part_hash.t33 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*38)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(11-1)-1))::numeric(11,1), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2309);

INSERT INTO part_hash.t34 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3767);

INSERT INTO part_hash.t35 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 3910);

INSERT INTO part_hash.t36 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), gen_random_uuid()
FROM generate_series(1, 2610);

INSERT INTO part_hash.t37 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision
FROM generate_series(1, 2361);

INSERT INTO part_hash.t38 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 2542);

INSERT INTO part_hash.t39 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*32767)::smallint, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4981);

INSERT INTO part_hash.t40 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*20)::int)), substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 3313);

INSERT INTO part_hash.t41 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*(10^(4-3)-1))::numeric(4,3), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(10-3)-1))::numeric(10,3), floor(random()*2147483647)::int
FROM generate_series(1, 4846);

INSERT INTO part_hash.t42 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3237);

INSERT INTO part_hash.t43 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3429);

INSERT INTO part_hash.t44 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3504);

INSERT INTO part_hash.t45 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*(10^(5-1)-1))::numeric(5,1), substr(md5(random()::text),1,(1+floor(random()*29)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(4-3)-1))::numeric(4,3), substr(md5(random()::text),1,(1+floor(random()*31)::int))
FROM generate_series(1, 4986);

INSERT INTO part_hash.t46 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,10), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(11-3)-1))::numeric(11,3), (random()*10000)::real
FROM generate_series(1, 4032);

INSERT INTO part_hash.t47 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint, (random()*(10^(11-3)-1))::numeric(11,3), substr(md5(random()::text),1,(1+floor(random()*49)::int))
FROM generate_series(1, 1835);

INSERT INTO part_hash.t48 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3012);

INSERT INTO part_hash.t49 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, gen_random_uuid()
FROM generate_series(1, 1550);

INSERT INTO part_hash.t50 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), (random()*(10^(4-0)-1))::numeric(4,0), substr(md5(random()::text),1,19)
FROM generate_series(1, 1695);

INSERT INTO part_hash.t51 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1366);

INSERT INTO part_hash.t52 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,2)
FROM generate_series(1, 1598);

INSERT INTO part_hash.t53 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, gen_random_uuid(), gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 2619);

INSERT INTO part_hash.t54 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,15)
FROM generate_series(1, 4245);

INSERT INTO part_hash.t55 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*46)::int))
FROM generate_series(1, 4720);

INSERT INTO part_hash.t56 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*34)::int))
FROM generate_series(1, 1259);

INSERT INTO part_hash.t57 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random() > 0.5)
FROM generate_series(1, 1181);

INSERT INTO part_hash.t58 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,9), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2743);

INSERT INTO part_hash.t59 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2877);

INSERT INTO part_hash.t60 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2258);

INSERT INTO part_hash.t61 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(5-1)-1))::numeric(5,1), substr(md5(random()::text),1,(1+floor(random()*24)::int))
FROM generate_series(1, 2363);

INSERT INTO part_hash.t62 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), (random()*(10^(12-0)-1))::numeric(12,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2538);

INSERT INTO part_hash.t63 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*26)::int)), substr(md5(random()::text),1,12), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4268);

INSERT INTO part_hash.t64 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3278);

INSERT INTO part_hash.t65 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,12)
FROM generate_series(1, 4147);

INSERT INTO part_hash.t66 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(8-3)-1))::numeric(8,3), substr(md5(random()::text),1,(1+floor(random()*9)::int)), (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 2603);

INSERT INTO part_hash.t67 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random() > 0.5), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*43)::int))
FROM generate_series(1, 2689);

INSERT INTO part_hash.t68 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3335);

INSERT INTO part_hash.t69 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, (random()*10000)::double precision, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2921);

INSERT INTO part_hash.t70 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*2)::int)), (random() > 0.5), gen_random_uuid(), substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 1590);

INSERT INTO part_hash.t71 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2965);

INSERT INTO part_hash.t72 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(10-2)-1))::numeric(10,2), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1280);

INSERT INTO part_hash.t73 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, gen_random_uuid(), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2388);

INSERT INTO part_hash.t74 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*32767)::smallint
FROM generate_series(1, 1343);

INSERT INTO part_hash.t75 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 3581);

INSERT INTO part_hash.t76 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 2828);

INSERT INTO part_hash.t77 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint
FROM generate_series(1, 1277);

INSERT INTO part_hash.t78 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,1), (random()*10000)::real
FROM generate_series(1, 3294);

INSERT INTO part_hash.t79 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::real
FROM generate_series(1, 3808);

INSERT INTO part_hash.t80 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1449);

INSERT INTO part_hash.t81 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,18), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1710);

INSERT INTO part_hash.t82 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, floor(random()*2147483647)::int
FROM generate_series(1, 4435);

INSERT INTO part_hash.t83 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,30)
FROM generate_series(1, 4693);

INSERT INTO part_hash.t84 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*(10^(11-1)-1))::numeric(11,1), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid()
FROM generate_series(1, 2072);

INSERT INTO part_hash.t85 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2847);

INSERT INTO part_hash.t86 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*32)::int)), substr(md5(random()::text),1,(1+floor(random()*1)::int))
FROM generate_series(1, 3558);

INSERT INTO part_hash.t87 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,4), substr(md5(random()::text),1,(1+floor(random()*5)::int)), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4005);

INSERT INTO part_hash.t88 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2141);

INSERT INTO part_hash.t89 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*(10^(8-0)-1))::numeric(8,0), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 2472);

INSERT INTO part_hash.t90 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(9-0)-1))::numeric(9,0), (random() > 0.5), floor(random()*2147483647)::int
FROM generate_series(1, 1573);

INSERT INTO part_hash.t91 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1746);

INSERT INTO part_hash.t92 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,6), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2014);

INSERT INTO part_hash.t93 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2684);

INSERT INTO part_hash.t94 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::double precision, floor(random()*2147483647)::int, floor(random()*32767)::smallint
FROM generate_series(1, 3280);

INSERT INTO part_hash.t95 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,16)
FROM generate_series(1, 4200);

INSERT INTO part_hash.t96 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real
FROM generate_series(1, 3673);

INSERT INTO part_hash.t97 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*28)::int)), substr(md5(random()::text),1,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1943);

INSERT INTO part_hash.t98 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, (random()*10000)::double precision
FROM generate_series(1, 4221);

INSERT INTO part_hash.t99 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3922);

INSERT INTO part_hash.t100 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 1499);
