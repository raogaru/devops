INSERT INTO part_list.t1 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4533);

INSERT INTO part_list.t2 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 2542);

INSERT INTO part_list.t3 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, (random() > 0.5), gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 3304);

INSERT INTO part_list.t4 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3259);

INSERT INTO part_list.t5 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2317);

INSERT INTO part_list.t6 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,11), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 4639);

INSERT INTO part_list.t7 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 1610);

INSERT INTO part_list.t8 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1851);

INSERT INTO part_list.t9 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3367);

INSERT INTO part_list.t10 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*12)::int)), substr(md5(random()::text),1,(1+floor(random()*27)::int))
FROM generate_series(1, 4597);

INSERT INTO part_list.t11 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,13), substr(md5(random()::text),1,3)
FROM generate_series(1, 4524);

INSERT INTO part_list.t12 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3723);

INSERT INTO part_list.t13 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 2608);

INSERT INTO part_list.t14 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*31)::int)), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3086);

INSERT INTO part_list.t15 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*28)::int)), floor(random()*32767)::smallint
FROM generate_series(1, 3578);

INSERT INTO part_list.t16 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, (random() > 0.5), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4154);

INSERT INTO part_list.t17 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 2119);

INSERT INTO part_list.t18 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,6), (random()*10000)::real
FROM generate_series(1, 2176);

INSERT INTO part_list.t19 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real
FROM generate_series(1, 2515);

INSERT INTO part_list.t20 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2613);

INSERT INTO part_list.t21 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,10)
FROM generate_series(1, 3787);

INSERT INTO part_list.t22 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(11-0)-1))::numeric(11,0), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2753);

INSERT INTO part_list.t23 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 2255);

INSERT INTO part_list.t24 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*42)::int)), gen_random_uuid(), floor(random()*2147483647)::int, floor(random()*2147483647)::int
FROM generate_series(1, 1046);

INSERT INTO part_list.t25 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*42)::int)), substr(md5(random()::text),1,30)
FROM generate_series(1, 4022);

INSERT INTO part_list.t26 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(6-3)-1))::numeric(6,3), substr(md5(random()::text),1,(1+floor(random()*6)::int)), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-1)-1))::numeric(6,1), (random() > 0.5)
FROM generate_series(1, 2428);

INSERT INTO part_list.t27 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*32767)::smallint
FROM generate_series(1, 3836);

INSERT INTO part_list.t28 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,19), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3559);

INSERT INTO part_list.t29 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 3787);

INSERT INTO part_list.t30 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1958);

INSERT INTO part_list.t31 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*45)::int)), substr(md5(random()::text),1,(1+floor(random()*22)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4598);

INSERT INTO part_list.t32 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4003);

INSERT INTO part_list.t33 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), (random()*(10^(6-3)-1))::numeric(6,3)
FROM generate_series(1, 4993);

INSERT INTO part_list.t34 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), gen_random_uuid(), (random()*10000)::real
FROM generate_series(1, 2976);

INSERT INTO part_list.t35 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 1441);

INSERT INTO part_list.t36 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(10-3)-1))::numeric(10,3), floor(random()*2147483647)::int
FROM generate_series(1, 3244);

INSERT INTO part_list.t37 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(8-3)-1))::numeric(8,3), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1352);

INSERT INTO part_list.t38 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4260);

INSERT INTO part_list.t39 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*39)::int)), (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 4051);

INSERT INTO part_list.t40 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3589);

INSERT INTO part_list.t41 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1957);

INSERT INTO part_list.t42 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,16), (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 3908);

INSERT INTO part_list.t43 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3138);

INSERT INTO part_list.t44 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(11-2)-1))::numeric(11,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1615);

INSERT INTO part_list.t45 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), substr(md5(random()::text),1,7), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*9)::int))
FROM generate_series(1, 4582);

INSERT INTO part_list.t46 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 2836);

INSERT INTO part_list.t47 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 1747);

INSERT INTO part_list.t48 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random() > 0.5)
FROM generate_series(1, 1480);

INSERT INTO part_list.t49 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*32767)::smallint, (random()*(10^(6-3)-1))::numeric(6,3), substr(md5(random()::text),1,4)
FROM generate_series(1, 1624);

INSERT INTO part_list.t50 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random() > 0.5)
FROM generate_series(1, 3320);

INSERT INTO part_list.t51 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*32)::int)), substr(md5(random()::text),1,(1+floor(random()*26)::int)), substr(md5(random()::text),1,(1+floor(random()*34)::int)), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3242);

INSERT INTO part_list.t52 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 4854);

INSERT INTO part_list.t53 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*36)::int)), floor(random()*2147483647)::int, (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 4172);

INSERT INTO part_list.t54 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4315);

INSERT INTO part_list.t55 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), (random()*10000)::double precision
FROM generate_series(1, 3966);

INSERT INTO part_list.t56 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1339);

INSERT INTO part_list.t57 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*14)::int)), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, (random()*10000)::real
FROM generate_series(1, 1418);

INSERT INTO part_list.t58 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(4-3)-1))::numeric(4,3), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*24)::int)), (random()*10000)::double precision
FROM generate_series(1, 3597);

INSERT INTO part_list.t59 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*20)::int)), (random()*10000)::double precision
FROM generate_series(1, 3919);

INSERT INTO part_list.t60 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int
FROM generate_series(1, 3262);

INSERT INTO part_list.t61 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*39)::int))
FROM generate_series(1, 1296);

INSERT INTO part_list.t62 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(4-2)-1))::numeric(4,2), floor(random()*32767)::smallint
FROM generate_series(1, 4220);

INSERT INTO part_list.t63 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, gen_random_uuid(), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2755);

INSERT INTO part_list.t64 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,17), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int
FROM generate_series(1, 3215);

INSERT INTO part_list.t65 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*14)::int)), (random()*10000)::double precision, gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 3295);

INSERT INTO part_list.t66 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(11-0)-1))::numeric(11,0), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*22)::int)), (random()*10000)::double precision
FROM generate_series(1, 3900);

INSERT INTO part_list.t67 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(4-0)-1))::numeric(4,0), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2745);

INSERT INTO part_list.t68 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random()*(10^(12-0)-1))::numeric(12,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1948);

INSERT INTO part_list.t69 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1956);

INSERT INTO part_list.t70 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,7), substr(md5(random()::text),1,19), substr(md5(random()::text),1,11)
FROM generate_series(1, 2085);

INSERT INTO part_list.t71 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), (random()*(10^(7-0)-1))::numeric(7,0), substr(md5(random()::text),1,(1+floor(random()*3)::int))
FROM generate_series(1, 1064);

INSERT INTO part_list.t72 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1767);

INSERT INTO part_list.t73 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1437);

INSERT INTO part_list.t74 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 3489);

INSERT INTO part_list.t75 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint
FROM generate_series(1, 2577);

INSERT INTO part_list.t76 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, floor(random()*2147483647)::int
FROM generate_series(1, 4934);

INSERT INTO part_list.t77 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*24)::int)), (random() > 0.5)
FROM generate_series(1, 4884);

INSERT INTO part_list.t78 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(5-0)-1))::numeric(5,0), (random()*(10^(7-2)-1))::numeric(7,2), floor(random()*2147483647)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 3598);

INSERT INTO part_list.t79 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 3953);

INSERT INTO part_list.t80 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, floor(random()*32767)::smallint
FROM generate_series(1, 2110);

INSERT INTO part_list.t81 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*42)::int)), substr(md5(random()::text),1,(1+floor(random()*35)::int)), (random()*(10^(5-0)-1))::numeric(5,0), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1669);

INSERT INTO part_list.t82 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,8), substr(md5(random()::text),1,30)
FROM generate_series(1, 3637);

INSERT INTO part_list.t83 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,1), substr(md5(random()::text),1,19), (random()*(10^(4-2)-1))::numeric(4,2), (random()*10000)::real
FROM generate_series(1, 1652);

INSERT INTO part_list.t84 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*45)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4511);

INSERT INTO part_list.t85 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*(10^(10-3)-1))::numeric(10,3), gen_random_uuid(), (random() > 0.5), floor(random()*32767)::smallint
FROM generate_series(1, 1120);

INSERT INTO part_list.t86 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), gen_random_uuid(), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1464);

INSERT INTO part_list.t87 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,18), (random() > 0.5)
FROM generate_series(1, 3251);

INSERT INTO part_list.t88 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, (random()*10000)::double precision, (random()*10000)::double precision, substr(md5(random()::text),1,30)
FROM generate_series(1, 4227);

INSERT INTO part_list.t89 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1693);

INSERT INTO part_list.t90 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5)
FROM generate_series(1, 4239);

INSERT INTO part_list.t91 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,8), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4751);

INSERT INTO part_list.t92 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1448);

INSERT INTO part_list.t93 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1793);

INSERT INTO part_list.t94 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,8), (random()*10000)::double precision, substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid()
FROM generate_series(1, 4325);

INSERT INTO part_list.t95 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), (random() > 0.5), floor(random()*2147483647)::int
FROM generate_series(1, 3857);

INSERT INTO part_list.t96 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*45)::int)), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3009);

INSERT INTO part_list.t97 (c1,c2,c3)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,(1+floor(random()*18)::int)), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4945);

INSERT INTO part_list.t98 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), substr(md5(random()::text),1,20), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, (random()*10000)::double precision
FROM generate_series(1, 2330);

INSERT INTO part_list.t99 (c1,c2,c3,c4)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), floor(random()*32767)::smallint, gen_random_uuid(), substr(md5(random()::text),1,6)
FROM generate_series(1, 2215);

INSERT INTO part_list.t100 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(1-0)-1))::numeric(1,0), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(11-2)-1))::numeric(11,2), (random()*10000)::real, (random()*(10^(8-0)-1))::numeric(8,0)
FROM generate_series(1, 4262);
