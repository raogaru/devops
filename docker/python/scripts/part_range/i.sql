INSERT INTO part_range.t1 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(7-2)-1))::numeric(7,2)
FROM generate_series(1, 1739);

INSERT INTO part_range.t2 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,6)
FROM generate_series(1, 1113);

INSERT INTO part_range.t3 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 2441);

INSERT INTO part_range.t4 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,4), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3700);

INSERT INTO part_range.t5 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-1)-1))::numeric(7,1), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, (random()*10000)::double precision
FROM generate_series(1, 1168);

INSERT INTO part_range.t6 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30)
FROM generate_series(1, 3618);

INSERT INTO part_range.t7 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*12)::int))
FROM generate_series(1, 4923);

INSERT INTO part_range.t8 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 4318);

INSERT INTO part_range.t9 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,30), (random() > 0.5), (random()*(10^(8-0)-1))::numeric(8,0)
FROM generate_series(1, 2664);

INSERT INTO part_range.t10 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*2147483647)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 1549);

INSERT INTO part_range.t11 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,16), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4236);

INSERT INTO part_range.t12 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::double precision, substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1496);

INSERT INTO part_range.t13 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*38)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint
FROM generate_series(1, 3589);

INSERT INTO part_range.t14 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*26)::int)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2837);

INSERT INTO part_range.t15 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1113);

INSERT INTO part_range.t16 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2897);

INSERT INTO part_range.t17 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 4468);

INSERT INTO part_range.t18 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,19), substr(md5(random()::text),1,11)
FROM generate_series(1, 2870);

INSERT INTO part_range.t19 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3573);

INSERT INTO part_range.t20 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), (random()*10000)::real
FROM generate_series(1, 2910);

INSERT INTO part_range.t21 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, substr(md5(random()::text),1,16), gen_random_uuid()
FROM generate_series(1, 2413);

INSERT INTO part_range.t22 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1802);

INSERT INTO part_range.t23 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, floor(random()*32767)::smallint
FROM generate_series(1, 2741);

INSERT INTO part_range.t24 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,17), gen_random_uuid()
FROM generate_series(1, 3719);

INSERT INTO part_range.t25 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(12-0)-1))::numeric(12,0), substr(md5(random()::text),1,5)
FROM generate_series(1, 4903);

INSERT INTO part_range.t26 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 4964);

INSERT INTO part_range.t27 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,2), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1118);

INSERT INTO part_range.t28 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), (random() > 0.5), (random()*(10^(4-1)-1))::numeric(4,1)
FROM generate_series(1, 2826);

INSERT INTO part_range.t29 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 1527);

INSERT INTO part_range.t30 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 3879);

INSERT INTO part_range.t31 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 4562);

INSERT INTO part_range.t32 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3518);

INSERT INTO part_range.t33 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*50)::int)), floor(random()*32767)::smallint, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2659);

INSERT INTO part_range.t34 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*32)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4847);

INSERT INTO part_range.t35 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,16), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 4542);

INSERT INTO part_range.t36 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::double precision
FROM generate_series(1, 2596);

INSERT INTO part_range.t37 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::double precision, (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,(1+floor(random()*45)::int))
FROM generate_series(1, 2248);

INSERT INTO part_range.t38 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3861);

INSERT INTO part_range.t39 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3679);

INSERT INTO part_range.t40 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real
FROM generate_series(1, 4996);

INSERT INTO part_range.t41 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::real, (random() > 0.5), substr(md5(random()::text),1,30)
FROM generate_series(1, 4425);

INSERT INTO part_range.t42 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*3)::int)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1016);

INSERT INTO part_range.t43 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,15), gen_random_uuid()
FROM generate_series(1, 1259);

INSERT INTO part_range.t44 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int
FROM generate_series(1, 4082);

INSERT INTO part_range.t45 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 1998);

INSERT INTO part_range.t46 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-1)-1))::numeric(7,1), (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 3195);

INSERT INTO part_range.t47 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, (random()*(10^(4-2)-1))::numeric(4,2), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3635);

INSERT INTO part_range.t48 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision
FROM generate_series(1, 3780);

INSERT INTO part_range.t49 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(4-2)-1))::numeric(4,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1578);

INSERT INTO part_range.t50 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*(10^(12-3)-1))::numeric(12,3), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4679);

INSERT INTO part_range.t51 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random() > 0.5), (random()*10000)::double precision
FROM generate_series(1, 3526);

INSERT INTO part_range.t52 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*2147483647)::int, substr(md5(random()::text),1,16)
FROM generate_series(1, 4856);

INSERT INTO part_range.t53 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,30), floor(random()*32767)::smallint
FROM generate_series(1, 3562);

INSERT INTO part_range.t54 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*(10^(12-0)-1))::numeric(12,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2612);

INSERT INTO part_range.t55 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,3), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*20)::int)), substr(md5(random()::text),1,30)
FROM generate_series(1, 1648);

INSERT INTO part_range.t56 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*32)::int))
FROM generate_series(1, 2434);

INSERT INTO part_range.t57 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 2351);

INSERT INTO part_range.t58 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*7)::int)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4941);

INSERT INTO part_range.t59 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2865);

INSERT INTO part_range.t60 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, substr(md5(random()::text),1,17), (random()*10000)::double precision
FROM generate_series(1, 3616);

INSERT INTO part_range.t61 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, (random()*(10^(4-1)-1))::numeric(4,1), (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 4107);

INSERT INTO part_range.t62 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,10), floor(random()*32767)::smallint, floor(random()*32767)::smallint
FROM generate_series(1, 1741);

INSERT INTO part_range.t63 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*5)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2340);

INSERT INTO part_range.t64 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-3)-1))::numeric(7,3), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2239);

INSERT INTO part_range.t65 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 1534);

INSERT INTO part_range.t66 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 2114);

INSERT INTO part_range.t67 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3200);

INSERT INTO part_range.t68 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(12-2)-1))::numeric(12,2), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 2059);

INSERT INTO part_range.t69 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), gen_random_uuid(), (random()*10000)::double precision, gen_random_uuid()
FROM generate_series(1, 4621);

INSERT INTO part_range.t70 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2483);

INSERT INTO part_range.t71 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*(10^(7-0)-1))::numeric(7,0), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3438);

INSERT INTO part_range.t72 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2860);

INSERT INTO part_range.t73 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), (random()*10000)::double precision
FROM generate_series(1, 4612);

INSERT INTO part_range.t74 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*46)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 1071);

INSERT INTO part_range.t75 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*40)::int)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1661);

INSERT INTO part_range.t76 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1430);

INSERT INTO part_range.t77 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, floor(random()*32767)::smallint
FROM generate_series(1, 2364);

INSERT INTO part_range.t78 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision
FROM generate_series(1, 3238);

INSERT INTO part_range.t79 (c1,c2,c3)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,8), gen_random_uuid()
FROM generate_series(1, 1486);

INSERT INTO part_range.t80 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,9), (random()*(10^(12-3)-1))::numeric(12,3), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1267);

INSERT INTO part_range.t81 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,(1+floor(random()*38)::int)), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2400);

INSERT INTO part_range.t82 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3828);

INSERT INTO part_range.t83 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,11), (random() > 0.5)
FROM generate_series(1, 2370);

INSERT INTO part_range.t84 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5)
FROM generate_series(1, 3453);

INSERT INTO part_range.t85 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*11)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3469);

INSERT INTO part_range.t86 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 2897);

INSERT INTO part_range.t87 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*2147483647)::int, substr(md5(random()::text),1,9)
FROM generate_series(1, 3179);

INSERT INTO part_range.t88 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), substr(md5(random()::text),1,7), (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 4926);

INSERT INTO part_range.t89 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real
FROM generate_series(1, 4707);

INSERT INTO part_range.t90 (c1,c2,c3,c4)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*19)::int)), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2585);

INSERT INTO part_range.t91 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*2147483647)::int, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, substr(md5(random()::text),1,6)
FROM generate_series(1, 4928);

INSERT INTO part_range.t92 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 2910);

INSERT INTO part_range.t93 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 3140);

INSERT INTO part_range.t94 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,30), (random()*(10^(5-1)-1))::numeric(5,1), (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 2221);

INSERT INTO part_range.t95 (c1,c2,c3,c4)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*17)::int))
FROM generate_series(1, 3128);

INSERT INTO part_range.t96 (c1,c2,c3,c4,c5)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint
FROM generate_series(1, 1148);

INSERT INTO part_range.t97 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, floor(random()*2147483647)::int, (random()*(10^(6-1)-1))::numeric(6,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5)
FROM generate_series(1, 3030);

INSERT INTO part_range.t98 (c1,c2,c3)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3168);

INSERT INTO part_range.t99 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(8-0)-1))::numeric(8,0), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5)
FROM generate_series(1, 2774);

INSERT INTO part_range.t100 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*30)::int)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30)
FROM generate_series(1, 1717);
