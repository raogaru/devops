INSERT INTO part_hash.t1 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 2873);

INSERT INTO part_hash.t2 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,4), (random()*10000)::double precision
FROM generate_series(1, 3089);

INSERT INTO part_hash.t3 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 1280);

INSERT INTO part_hash.t4 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*49)::int)), substr(md5(random()::text),1,12), substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 2140);

INSERT INTO part_hash.t5 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,13), (random() > 0.5)
FROM generate_series(1, 1174);

INSERT INTO part_hash.t6 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,5)
FROM generate_series(1, 4075);

INSERT INTO part_hash.t7 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,11), (random() > 0.5)
FROM generate_series(1, 2820);

INSERT INTO part_hash.t8 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,18), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1517);

INSERT INTO part_hash.t9 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3583);

INSERT INTO part_hash.t10 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, gen_random_uuid()
FROM generate_series(1, 2293);

INSERT INTO part_hash.t11 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3360);

INSERT INTO part_hash.t12 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid()
FROM generate_series(1, 3364);

INSERT INTO part_hash.t13 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, (random() > 0.5)
FROM generate_series(1, 4829);

INSERT INTO part_hash.t14 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 4187);

INSERT INTO part_hash.t15 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint
FROM generate_series(1, 4787);

INSERT INTO part_hash.t16 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*35)::int)), substr(md5(random()::text),1,(1+floor(random()*5)::int))
FROM generate_series(1, 1125);

INSERT INTO part_hash.t17 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3831);

INSERT INTO part_hash.t18 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1081);

INSERT INTO part_hash.t19 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,13), substr(md5(random()::text),1,(1+floor(random()*1)::int)), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2756);

INSERT INTO part_hash.t20 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,19)
FROM generate_series(1, 1672);

INSERT INTO part_hash.t21 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1967);

INSERT INTO part_hash.t22 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), gen_random_uuid()
FROM generate_series(1, 4797);

INSERT INTO part_hash.t23 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(8-0)-1))::numeric(8,0), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,14)
FROM generate_series(1, 4001);

INSERT INTO part_hash.t24 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*21)::int)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3761);

INSERT INTO part_hash.t25 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), (random()*10000)::real, substr(md5(random()::text),1,6), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2905);

INSERT INTO part_hash.t26 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*32)::int)), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5)
FROM generate_series(1, 4450);

INSERT INTO part_hash.t27 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*16)::int)), (random() > 0.5), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2929);

INSERT INTO part_hash.t28 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,8), (random() > 0.5), substr(md5(random()::text),1,30)
FROM generate_series(1, 1792);

INSERT INTO part_hash.t29 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 2541);

INSERT INTO part_hash.t30 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4784);

INSERT INTO part_hash.t31 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2403);

INSERT INTO part_hash.t32 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2653);

INSERT INTO part_hash.t33 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1207);

INSERT INTO part_hash.t34 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*28)::int)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1415);

INSERT INTO part_hash.t35 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3884);

INSERT INTO part_hash.t36 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random() > 0.5), floor(random()*2147483647)::int
FROM generate_series(1, 3378);

INSERT INTO part_hash.t37 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*46)::int)), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1258);

INSERT INTO part_hash.t38 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,8), floor(random()*32767)::smallint, (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 1163);

INSERT INTO part_hash.t39 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2019);

INSERT INTO part_hash.t40 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,6), (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 4348);

INSERT INTO part_hash.t41 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*39)::int)), substr(md5(random()::text),1,30)
FROM generate_series(1, 3598);

INSERT INTO part_hash.t42 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,13), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2143);

INSERT INTO part_hash.t43 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, substr(md5(random()::text),1,14)
FROM generate_series(1, 2362);

INSERT INTO part_hash.t44 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1847);

INSERT INTO part_hash.t45 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(9-0)-1))::numeric(9,0), substr(md5(random()::text),1,17), floor(random()*2147483647)::int
FROM generate_series(1, 3503);

INSERT INTO part_hash.t46 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random() > 0.5)
FROM generate_series(1, 4045);

INSERT INTO part_hash.t47 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1592);

INSERT INTO part_hash.t48 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,17), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 2669);

INSERT INTO part_hash.t49 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,11), substr(md5(random()::text),1,(1+floor(random()*23)::int)), (random()*10000)::double precision
FROM generate_series(1, 2273);

INSERT INTO part_hash.t50 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,8), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2360);

INSERT INTO part_hash.t51 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*33)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid()
FROM generate_series(1, 3819);

INSERT INTO part_hash.t52 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random()*10000)::real, floor(random()*32767)::smallint, (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 1468);

INSERT INTO part_hash.t53 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(5-1)-1))::numeric(5,1), (random()*(10^(9-2)-1))::numeric(9,2), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3841);

INSERT INTO part_hash.t54 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 3753);

INSERT INTO part_hash.t55 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 1592);

INSERT INTO part_hash.t56 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3741);

INSERT INTO part_hash.t57 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*(10^(9-1)-1))::numeric(9,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4932);

INSERT INTO part_hash.t58 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 4677);

INSERT INTO part_hash.t59 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 4033);

INSERT INTO part_hash.t60 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 3912);

INSERT INTO part_hash.t61 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int
FROM generate_series(1, 1229);

INSERT INTO part_hash.t62 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, gen_random_uuid(), (random()*10000)::double precision
FROM generate_series(1, 4959);

INSERT INTO part_hash.t63 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 1819);

INSERT INTO part_hash.t64 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(9-0)-1))::numeric(9,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid()
FROM generate_series(1, 3278);

INSERT INTO part_hash.t65 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*17)::int)), (random()*(10^(6-0)-1))::numeric(6,0), substr(md5(random()::text),1,10)
FROM generate_series(1, 3249);

INSERT INTO part_hash.t66 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*10000)::real, gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 3056);

INSERT INTO part_hash.t67 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 1830);

INSERT INTO part_hash.t68 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*32767)::smallint, (random()*10000)::double precision, floor(random()*2147483647)::int
FROM generate_series(1, 4912);

INSERT INTO part_hash.t69 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), floor(random()*2147483647)::int, (random()*10000)::real, (random()*(10^(12-1)-1))::numeric(12,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4089);

INSERT INTO part_hash.t70 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4659);

INSERT INTO part_hash.t71 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*(10^(10-2)-1))::numeric(10,2), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3117);

INSERT INTO part_hash.t72 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,10), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,4), (random()*10000)::double precision, floor(random()*32767)::smallint
FROM generate_series(1, 1210);

INSERT INTO part_hash.t73 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,13), gen_random_uuid()
FROM generate_series(1, 1675);

INSERT INTO part_hash.t74 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,18), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), substr(md5(random()::text),1,15)
FROM generate_series(1, 4123);

INSERT INTO part_hash.t75 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*41)::int))
FROM generate_series(1, 4452);

INSERT INTO part_hash.t76 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2039);

INSERT INTO part_hash.t77 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int
FROM generate_series(1, 4502);

INSERT INTO part_hash.t78 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*35)::int))
FROM generate_series(1, 2282);

INSERT INTO part_hash.t79 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*42)::int))
FROM generate_series(1, 2967);

INSERT INTO part_hash.t80 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::double precision
FROM generate_series(1, 2779);

INSERT INTO part_hash.t81 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*4)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4632);

INSERT INTO part_hash.t82 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 2165);

INSERT INTO part_hash.t83 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*32767)::smallint, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2356);

INSERT INTO part_hash.t84 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,2), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5)
FROM generate_series(1, 1313);

INSERT INTO part_hash.t85 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,6), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*15)::int))
FROM generate_series(1, 2833);

INSERT INTO part_hash.t86 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*10000)::double precision, floor(random()*2147483647)::int, (random()*10000)::real
FROM generate_series(1, 3501);

INSERT INTO part_hash.t87 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*(10^(11-0)-1))::numeric(11,0), floor(random()*2147483647)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 1244);

INSERT INTO part_hash.t88 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 3177);

INSERT INTO part_hash.t89 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 3832);

INSERT INTO part_hash.t90 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4885);

INSERT INTO part_hash.t91 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 3090);

INSERT INTO part_hash.t92 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4207);

INSERT INTO part_hash.t93 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*34)::int)), gen_random_uuid()
FROM generate_series(1, 1532);

INSERT INTO part_hash.t94 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*32767)::smallint, floor(random()*2147483647)::int
FROM generate_series(1, 4034);

INSERT INTO part_hash.t95 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, (random() > 0.5), substr(md5(random()::text),1,30), substr(md5(random()::text),1,8)
FROM generate_series(1, 2425);

INSERT INTO part_hash.t96 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4985);

INSERT INTO part_hash.t97 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3448);

INSERT INTO part_hash.t98 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2407);

INSERT INTO part_hash.t99 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4911);

INSERT INTO part_hash.t100 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*45)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2951);
