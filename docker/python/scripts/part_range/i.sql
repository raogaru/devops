INSERT INTO part_range.t1 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(7-3)-1))::numeric(7,3), gen_random_uuid()
FROM generate_series(1, 3036);

INSERT INTO part_range.t2 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,1), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*13)::int)), (random()*10000)::double precision
FROM generate_series(1, 1267);

INSERT INTO part_range.t3 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3041);

INSERT INTO part_range.t4 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real, substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 4228);

INSERT INTO part_range.t5 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*(10^(4-3)-1))::numeric(4,3), substr(md5(random()::text),1,(1+floor(random()*3)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5)
FROM generate_series(1, 2128);

INSERT INTO part_range.t6 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4061);

INSERT INTO part_range.t7 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,17)
FROM generate_series(1, 4216);

INSERT INTO part_range.t8 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3077);

INSERT INTO part_range.t9 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), (random()*10000)::double precision, gen_random_uuid(), (random() > 0.5)
FROM generate_series(1, 2799);

INSERT INTO part_range.t10 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 4527);

INSERT INTO part_range.t11 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 1633);

INSERT INTO part_range.t12 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2432);

INSERT INTO part_range.t13 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 3010);

INSERT INTO part_range.t14 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*6)::int)), substr(md5(random()::text),1,(1+floor(random()*18)::int))
FROM generate_series(1, 2872);

INSERT INTO part_range.t15 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, gen_random_uuid(), (random()*(10^(11-2)-1))::numeric(11,2), (random() > 0.5)
FROM generate_series(1, 3068);

INSERT INTO part_range.t16 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*20)::int)), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 1980);

INSERT INTO part_range.t17 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5)
FROM generate_series(1, 1724);

INSERT INTO part_range.t18 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2989);

INSERT INTO part_range.t19 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 2067);

INSERT INTO part_range.t20 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 1434);

INSERT INTO part_range.t21 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, (random() > 0.5), (random()*(10^(10-0)-1))::numeric(10,0), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2116);

INSERT INTO part_range.t22 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3127);

INSERT INTO part_range.t23 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, gen_random_uuid(), floor(random()*2147483647)::int, substr(md5(random()::text),1,2)
FROM generate_series(1, 2851);

INSERT INTO part_range.t24 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1295);

INSERT INTO part_range.t25 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(8-0)-1))::numeric(8,0), substr(md5(random()::text),1,9)
FROM generate_series(1, 3240);

INSERT INTO part_range.t26 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-0)-1))::numeric(6,0), (random()*10000)::real, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4590);

INSERT INTO part_range.t27 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::real
FROM generate_series(1, 1990);

INSERT INTO part_range.t28 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4154);

INSERT INTO part_range.t29 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*(10^(4-1)-1))::numeric(4,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4585);

INSERT INTO part_range.t30 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1384);

INSERT INTO part_range.t31 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), (random() > 0.5), gen_random_uuid()
FROM generate_series(1, 1841);

INSERT INTO part_range.t32 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,8), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3069);

INSERT INTO part_range.t33 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision
FROM generate_series(1, 1417);

INSERT INTO part_range.t34 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::real, (random()*(10^(9-2)-1))::numeric(9,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3377);

INSERT INTO part_range.t35 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*36)::int)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*19)::int)), (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 4846);

INSERT INTO part_range.t36 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, substr(md5(random()::text),1,3)
FROM generate_series(1, 1785);

INSERT INTO part_range.t37 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3314);

INSERT INTO part_range.t38 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(4-2)-1))::numeric(4,2), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1366);

INSERT INTO part_range.t39 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::double precision, substr(md5(random()::text),1,30)
FROM generate_series(1, 3043);

INSERT INTO part_range.t40 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(11-2)-1))::numeric(11,2), floor(random()*2147483647)::int
FROM generate_series(1, 2957);

INSERT INTO part_range.t41 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-3)-1))::numeric(7,3), (random()*10000)::double precision, (random() > 0.5), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4866);

INSERT INTO part_range.t42 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*6)::int)), substr(md5(random()::text),1,(1+floor(random()*27)::int)), floor(random()*2147483647)::int, (random()*(10^(10-2)-1))::numeric(10,2)
FROM generate_series(1, 3118);

INSERT INTO part_range.t43 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,13), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 2321);

INSERT INTO part_range.t44 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1967);

INSERT INTO part_range.t45 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(5-0)-1))::numeric(5,0), (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 3270);

INSERT INTO part_range.t46 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3467);

INSERT INTO part_range.t47 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3245);

INSERT INTO part_range.t48 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3352);

INSERT INTO part_range.t49 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,20)
FROM generate_series(1, 4373);

INSERT INTO part_range.t50 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*8)::int)), (random() > 0.5)
FROM generate_series(1, 2581);

INSERT INTO part_range.t51 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*34)::int)), substr(md5(random()::text),1,(1+floor(random()*26)::int))
FROM generate_series(1, 2384);

INSERT INTO part_range.t52 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real
FROM generate_series(1, 3528);

INSERT INTO part_range.t53 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3109);

INSERT INTO part_range.t54 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*32767)::smallint, floor(random()*32767)::smallint, substr(md5(random()::text),1,30)
FROM generate_series(1, 2540);

INSERT INTO part_range.t55 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,7), floor(random()*2147483647)::int, floor(random()*2147483647)::int, (random() > 0.5)
FROM generate_series(1, 1041);

INSERT INTO part_range.t56 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,19), (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 1034);

INSERT INTO part_range.t57 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,12), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 1824);

INSERT INTO part_range.t58 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid()
FROM generate_series(1, 1348);

INSERT INTO part_range.t59 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 4368);

INSERT INTO part_range.t60 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1132);

INSERT INTO part_range.t61 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, (random()*(10^(9-0)-1))::numeric(9,0), gen_random_uuid()
FROM generate_series(1, 4305);

INSERT INTO part_range.t62 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*15)::int))
FROM generate_series(1, 2706);

INSERT INTO part_range.t63 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(11-1)-1))::numeric(11,1), (random()*10000)::double precision
FROM generate_series(1, 1644);

INSERT INTO part_range.t64 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*3)::int)), (random()*10000)::real, (random()*10000)::double precision, (random()*(10^(11-0)-1))::numeric(11,0)
FROM generate_series(1, 2414);

INSERT INTO part_range.t65 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*(10^(8-1)-1))::numeric(8,1), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3950);

INSERT INTO part_range.t66 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*47)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real
FROM generate_series(1, 3621);

INSERT INTO part_range.t67 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*32)::int)), (random()*10000)::double precision
FROM generate_series(1, 2715);

INSERT INTO part_range.t68 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 3819);

INSERT INTO part_range.t69 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*15)::int)), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), (random()*(10^(6-1)-1))::numeric(6,1)
FROM generate_series(1, 4258);

INSERT INTO part_range.t70 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, (random()*(10^(7-0)-1))::numeric(7,0)
FROM generate_series(1, 2501);

INSERT INTO part_range.t71 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3405);

INSERT INTO part_range.t72 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4997);

INSERT INTO part_range.t73 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::double precision, gen_random_uuid(), (random()*10000)::double precision, floor(random()*2147483647)::int
FROM generate_series(1, 1692);

INSERT INTO part_range.t74 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(6-2)-1))::numeric(6,2), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1482);

INSERT INTO part_range.t75 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*32767)::smallint
FROM generate_series(1, 3345);

INSERT INTO part_range.t76 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3056);

INSERT INTO part_range.t77 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 4524);

INSERT INTO part_range.t78 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(8-2)-1))::numeric(8,2), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*15)::int)), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3746);

INSERT INTO part_range.t79 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,4)
FROM generate_series(1, 4833);

INSERT INTO part_range.t80 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,1)
FROM generate_series(1, 1876);

INSERT INTO part_range.t81 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,3), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1195);

INSERT INTO part_range.t82 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid()
FROM generate_series(1, 4328);

INSERT INTO part_range.t83 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30)
FROM generate_series(1, 1796);

INSERT INTO part_range.t84 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2776);

INSERT INTO part_range.t85 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*10)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3983);

INSERT INTO part_range.t86 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*2147483647)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,30)
FROM generate_series(1, 1205);

INSERT INTO part_range.t87 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*42)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4149);

INSERT INTO part_range.t88 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), floor(random()*32767)::smallint, (random() > 0.5), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2792);

INSERT INTO part_range.t89 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,18), (random()*(10^(6-2)-1))::numeric(6,2), floor(random()*32767)::smallint
FROM generate_series(1, 3902);

INSERT INTO part_range.t90 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*1)::int)), (random()*10000)::real
FROM generate_series(1, 1518);

INSERT INTO part_range.t91 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), (random() > 0.5)
FROM generate_series(1, 4260);

INSERT INTO part_range.t92 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 1880);

INSERT INTO part_range.t93 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*17)::int)), (random()*(10^(4-1)-1))::numeric(4,1), substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 2571);

INSERT INTO part_range.t94 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(9-2)-1))::numeric(9,2), (random()*10000)::real, (random() > 0.5)
FROM generate_series(1, 4591);

INSERT INTO part_range.t95 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2416);

INSERT INTO part_range.t96 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-2)-1))::numeric(6,2), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3869);

INSERT INTO part_range.t97 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4688);

INSERT INTO part_range.t98 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 2789);

INSERT INTO part_range.t99 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, gen_random_uuid(), floor(random()*32767)::smallint
FROM generate_series(1, 2787);

INSERT INTO part_range.t100 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1934);
