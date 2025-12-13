INSERT INTO part_list.t1 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*6)::int)), (random()*10000)::real
FROM generate_series(1, 1738);

INSERT INTO part_list.t2 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(9-0)-1))::numeric(9,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2016);

INSERT INTO part_list.t3 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(11-3)-1))::numeric(11,3)
FROM generate_series(1, 4410);

INSERT INTO part_list.t4 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3007);

INSERT INTO part_list.t5 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1635);

INSERT INTO part_list.t6 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, (random() > 0.5), (random()*10000)::double precision, (random()*10000)::real
FROM generate_series(1, 1048);

INSERT INTO part_list.t7 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*6)::int)), (random()*10000)::double precision, substr(md5(random()::text),1,3), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 4401);

INSERT INTO part_list.t8 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1702);

INSERT INTO part_list.t9 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*24)::int))
FROM generate_series(1, 1367);

INSERT INTO part_list.t10 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4021);

INSERT INTO part_list.t11 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 3121);

INSERT INTO part_list.t12 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2416);

INSERT INTO part_list.t13 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2897);

INSERT INTO part_list.t14 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3977);

INSERT INTO part_list.t15 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), gen_random_uuid(), (random()*10000)::real
FROM generate_series(1, 4251);

INSERT INTO part_list.t16 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(8-2)-1))::numeric(8,2)
FROM generate_series(1, 1878);

INSERT INTO part_list.t17 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random()*10000)::real, (random()*10000)::real
FROM generate_series(1, 4709);

INSERT INTO part_list.t18 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1459);

INSERT INTO part_list.t19 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, (random()*(10^(5-2)-1))::numeric(5,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, (random()*10000)::double precision
FROM generate_series(1, 2394);

INSERT INTO part_list.t20 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision
FROM generate_series(1, 4653);

INSERT INTO part_list.t21 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, (random()*10000)::real
FROM generate_series(1, 1968);

INSERT INTO part_list.t22 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 1023);

INSERT INTO part_list.t23 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*15)::int))
FROM generate_series(1, 2072);

INSERT INTO part_list.t24 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(10-1)-1))::numeric(10,1), floor(random()*32767)::smallint, gen_random_uuid(), (random() > 0.5)
FROM generate_series(1, 2066);

INSERT INTO part_list.t25 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, substr(md5(random()::text),1,15)
FROM generate_series(1, 3958);

INSERT INTO part_list.t26 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,2), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2981);

INSERT INTO part_list.t27 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,14)
FROM generate_series(1, 3398);

INSERT INTO part_list.t28 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*18)::int)), floor(random()*2147483647)::int
FROM generate_series(1, 4753);

INSERT INTO part_list.t29 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(6-3)-1))::numeric(6,3), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4291);

INSERT INTO part_list.t30 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2727);

INSERT INTO part_list.t31 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 1395);

INSERT INTO part_list.t32 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), (random()*(10^(11-2)-1))::numeric(11,2), substr(md5(random()::text),1,4)
FROM generate_series(1, 2674);

INSERT INTO part_list.t33 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*2)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3164);

INSERT INTO part_list.t34 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*38)::int)), floor(random()*32767)::smallint
FROM generate_series(1, 3600);

INSERT INTO part_list.t35 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,14), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1560);

INSERT INTO part_list.t36 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), (random() > 0.5), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3618);

INSERT INTO part_list.t37 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3538);

INSERT INTO part_list.t38 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2505);

INSERT INTO part_list.t39 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint
FROM generate_series(1, 4063);

INSERT INTO part_list.t40 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4796);

INSERT INTO part_list.t41 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 2560);

INSERT INTO part_list.t42 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(4-1)-1))::numeric(4,1), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*48)::int))
FROM generate_series(1, 2896);

INSERT INTO part_list.t43 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random() > 0.5)
FROM generate_series(1, 3874);

INSERT INTO part_list.t44 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3340);

INSERT INTO part_list.t45 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(7-1)-1))::numeric(7,1), gen_random_uuid(), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4172);

INSERT INTO part_list.t46 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real
FROM generate_series(1, 1254);

INSERT INTO part_list.t47 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 3477);

INSERT INTO part_list.t48 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*10)::int))
FROM generate_series(1, 3810);

INSERT INTO part_list.t49 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2535);

INSERT INTO part_list.t50 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, (random()*(10^(6-1)-1))::numeric(6,1), (random()*10000)::real, floor(random()*32767)::smallint, floor(random()*32767)::smallint
FROM generate_series(1, 4248);

INSERT INTO part_list.t51 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), floor(random()*2147483647)::int, substr(md5(random()::text),1,6)
FROM generate_series(1, 4939);

INSERT INTO part_list.t52 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,13), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3907);

INSERT INTO part_list.t53 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 1121);

INSERT INTO part_list.t54 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1398);

INSERT INTO part_list.t55 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(7-3)-1))::numeric(7,3), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1329);

INSERT INTO part_list.t56 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), (random()*10000)::double precision
FROM generate_series(1, 3926);

INSERT INTO part_list.t57 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,20)
FROM generate_series(1, 1367);

INSERT INTO part_list.t58 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2267);

INSERT INTO part_list.t59 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3175);

INSERT INTO part_list.t60 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(12-0)-1))::numeric(12,0), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 2601);

INSERT INTO part_list.t61 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(8-0)-1))::numeric(8,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2463);

INSERT INTO part_list.t62 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,9)
FROM generate_series(1, 1654);

INSERT INTO part_list.t63 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2231);

INSERT INTO part_list.t64 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30)
FROM generate_series(1, 2640);

INSERT INTO part_list.t65 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, floor(random()*32767)::smallint
FROM generate_series(1, 1433);

INSERT INTO part_list.t66 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,30)
FROM generate_series(1, 2078);

INSERT INTO part_list.t67 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), (random()*10000)::double precision, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2111);

INSERT INTO part_list.t68 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), (random()*(10^(7-0)-1))::numeric(7,0)
FROM generate_series(1, 4697);

INSERT INTO part_list.t69 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,14)
FROM generate_series(1, 4084);

INSERT INTO part_list.t70 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(7-1)-1))::numeric(7,1), substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 4131);

INSERT INTO part_list.t71 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*39)::int)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3168);

INSERT INTO part_list.t72 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,10), substr(md5(random()::text),1,8), (random() > 0.5), substr(md5(random()::text),1,7), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1826);

INSERT INTO part_list.t73 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,7)
FROM generate_series(1, 4138);

INSERT INTO part_list.t74 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4126);

INSERT INTO part_list.t75 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,8), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5)
FROM generate_series(1, 1715);

INSERT INTO part_list.t76 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real
FROM generate_series(1, 4368);

INSERT INTO part_list.t77 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,13), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,4)
FROM generate_series(1, 3674);

INSERT INTO part_list.t78 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3442);

INSERT INTO part_list.t79 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real
FROM generate_series(1, 3002);

INSERT INTO part_list.t80 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 4903);

INSERT INTO part_list.t81 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), substr(md5(random()::text),1,30), floor(random()*32767)::smallint
FROM generate_series(1, 1544);

INSERT INTO part_list.t82 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 4495);

INSERT INTO part_list.t83 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), substr(md5(random()::text),1,30), substr(md5(random()::text),1,7)
FROM generate_series(1, 1019);

INSERT INTO part_list.t84 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2596);

INSERT INTO part_list.t85 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(10-0)-1))::numeric(10,0), substr(md5(random()::text),1,(1+floor(random()*13)::int)), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 1253);

INSERT INTO part_list.t86 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*15)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2234);

INSERT INTO part_list.t87 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 3545);

INSERT INTO part_list.t88 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3078);

INSERT INTO part_list.t89 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(12-2)-1))::numeric(12,2), floor(random()*32767)::smallint, (random() > 0.5), (random()*10000)::real
FROM generate_series(1, 2055);

INSERT INTO part_list.t90 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), (random() > 0.5), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*27)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1728);

INSERT INTO part_list.t91 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2903);

INSERT INTO part_list.t92 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, (random()*10000)::double precision, (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 2449);

INSERT INTO part_list.t93 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, gen_random_uuid()
FROM generate_series(1, 1440);

INSERT INTO part_list.t94 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3467);

INSERT INTO part_list.t95 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3417);

INSERT INTO part_list.t96 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3187);

INSERT INTO part_list.t97 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), (random() > 0.5)
FROM generate_series(1, 3620);

INSERT INTO part_list.t98 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 3580);

INSERT INTO part_list.t99 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, floor(random()*2147483647)::int
FROM generate_series(1, 4643);

INSERT INTO part_list.t100 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(8-0)-1))::numeric(8,0), floor(random()*2147483647)::int
FROM generate_series(1, 1485);
