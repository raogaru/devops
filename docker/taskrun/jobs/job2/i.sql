INSERT INTO job2.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT gen_random_uuid(), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random() > 0.5), substr(md5(random()::text),1,14), (random() > 0.5), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 24743);

INSERT INTO job2.t2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*16)::int)), floor(random()*32767)::smallint, (random()*(10^(6-3)-1))::numeric(6,3), substr(md5(random()::text),1,(1+floor(random()*45)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(10-1)-1))::numeric(10,1), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 42034);

INSERT INTO job2.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT (random()*(10^(5-3)-1))::numeric(5,3), (random()*(10^(4-3)-1))::numeric(4,3), substr(md5(random()::text),1,12), (random()*(10^(10-1)-1))::numeric(10,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, (random()*(10^(5-3)-1))::numeric(5,3), substr(md5(random()::text),1,2), (random()*(10^(9-1)-1))::numeric(9,1), (random()*10000)::real, substr(md5(random()::text),1,8), (random() > 0.5)
FROM generate_series(1, 34212);

INSERT INTO job2.t4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*33)::int)), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*18)::int)), (random()*10000)::real, (random()*(10^(9-3)-1))::numeric(9,3), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint
FROM generate_series(1, 15881);

INSERT INTO job2.t5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*22)::int)), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(5-3)-1))::numeric(5,3), gen_random_uuid(), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 42930);

INSERT INTO job2.t6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT (random()*(10^(5-2)-1))::numeric(5,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(9-3)-1))::numeric(9,3), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 46899);

INSERT INTO job2.t7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*2147483647)::int, (random() > 0.5), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 12216);

INSERT INTO job2.t8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT (random()*(10^(6-2)-1))::numeric(6,2), (random() > 0.5), substr(md5(random()::text),1,19), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*2147483647)::int, substr(md5(random()::text),1,4), (random()*(10^(12-2)-1))::numeric(12,2), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*11)::int)), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,8), (random()*(10^(8-2)-1))::numeric(8,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(6-1)-1))::numeric(6,1), gen_random_uuid()
FROM generate_series(1, 25650);

INSERT INTO job2.t9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*(10^(5-2)-1))::numeric(5,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*15)::int)), gen_random_uuid(), substr(md5(random()::text),1,30), substr(md5(random()::text),1,6), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,15), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, floor(random()*32767)::smallint, gen_random_uuid(), (random()*(10^(12-3)-1))::numeric(12,3)
FROM generate_series(1, 14819);

INSERT INTO job2.t10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, floor(random()*32767)::smallint, substr(md5(random()::text),1,7), substr(md5(random()::text),1,(1+floor(random()*37)::int)), (random()*10000)::real, gen_random_uuid(), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 24807);

INSERT INTO job2.t11 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,12), substr(md5(random()::text),1,(1+floor(random()*44)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, gen_random_uuid(), (random() > 0.5), floor(random()*32767)::smallint, (random()*10000)::real, (random()*10000)::real, (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint
FROM generate_series(1, 44074);

INSERT INTO job2.t12 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*2147483647)::int, gen_random_uuid(), gen_random_uuid(), (random() > 0.5), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*13)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 14725);

INSERT INTO job2.t13 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*32767)::smallint, substr(md5(random()::text),1,3), substr(md5(random()::text),1,30), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(9-1)-1))::numeric(9,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 25455);

INSERT INTO job2.t14 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*14)::int)), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*27)::int)), substr(md5(random()::text),1,(1+floor(random()*15)::int)), floor(random()*2147483647)::int, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5)
FROM generate_series(1, 40849);

INSERT INTO job2.t15 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT substr(md5(random()::text),1,(1+floor(random()*13)::int)), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, substr(md5(random()::text),1,2), floor(random()*32767)::smallint, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(9-2)-1))::numeric(9,2), (random()*(10^(12-0)-1))::numeric(12,0), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, (random() > 0.5), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 26333);

INSERT INTO job2.t16 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT gen_random_uuid(), (random()*(10^(9-1)-1))::numeric(9,1), gen_random_uuid(), substr(md5(random()::text),1,15), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), (random()*10000)::real, substr(md5(random()::text),1,9), substr(md5(random()::text),1,15), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*25)::int)), substr(md5(random()::text),1,(1+floor(random()*48)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5)
FROM generate_series(1, 21920);

INSERT INTO job2.t17 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT substr(md5(random()::text),1,(1+floor(random()*34)::int)), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid()
FROM generate_series(1, 45532);

INSERT INTO job2.t18 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*(10^(6-0)-1))::numeric(6,0), substr(md5(random()::text),1,30), (random()*10000)::real, (random() > 0.5), (random()*10000)::real, floor(random()*2147483647)::int, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*50)::int)), floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*10000)::double precision, gen_random_uuid(), floor(random()*32767)::smallint, (random()*(10^(9-2)-1))::numeric(9,2), substr(md5(random()::text),1,2), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 14359);

INSERT INTO job2.t19 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random()*10000)::double precision, substr(md5(random()::text),1,30), (random() > 0.5), substr(md5(random()::text),1,5), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random()*10000)::real
FROM generate_series(1, 25635);

INSERT INTO job2.t20 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(6-0)-1))::numeric(6,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), (random()*10000)::double precision, (random() > 0.5), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, (random()*(10^(6-1)-1))::numeric(6,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,13), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 31920);

INSERT INTO job2.t21 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, (random()*(10^(6-0)-1))::numeric(6,0), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, (random() > 0.5), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, substr(md5(random()::text),1,17), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*14)::int))
FROM generate_series(1, 47655);

INSERT INTO job2.t22 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT substr(md5(random()::text),1,(1+floor(random()*42)::int)), substr(md5(random()::text),1,17), gen_random_uuid(), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30)
FROM generate_series(1, 25299);

INSERT INTO job2.t23 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT substr(md5(random()::text),1,(1+floor(random()*31)::int)), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*35)::int)), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*16)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*40)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision
FROM generate_series(1, 48329);

INSERT INTO job2.t24 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), gen_random_uuid(), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, substr(md5(random()::text),1,8), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real
FROM generate_series(1, 13172);

INSERT INTO job2.t25 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT substr(md5(random()::text),1,20), substr(md5(random()::text),1,(1+floor(random()*33)::int)), (random()*(10^(5-3)-1))::numeric(5,3), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, substr(md5(random()::text),1,9), (random()*10000)::double precision, (random()*10000)::real, (random()*10000)::double precision, (random() > 0.5)
FROM generate_series(1, 32160);

INSERT INTO job2.t26 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT substr(md5(random()::text),1,16), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, floor(random()*32767)::smallint, (random()*10000)::double precision, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*24)::int)), floor(random()*2147483647)::int, floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5)
FROM generate_series(1, 11059);

INSERT INTO job2.t27 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*10000)::real, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(11-2)-1))::numeric(11,2), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 24427);

INSERT INTO job2.t28 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(6-1)-1))::numeric(6,1), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, (random()*(10^(6-2)-1))::numeric(6,2), (random()*(10^(6-1)-1))::numeric(6,1), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*48)::int)), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, (random()*10000)::double precision, floor(random()*32767)::smallint, (random()*10000)::real
FROM generate_series(1, 39346);

INSERT INTO job2.t29 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*10000)::real, substr(md5(random()::text),1,3), (random()*(10^(7-0)-1))::numeric(7,0), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*10)::int)), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, (random()*10000)::double precision, substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 31222);

INSERT INTO job2.t30 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, (random() > 0.5), (random()*10000)::real, gen_random_uuid(), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real
FROM generate_series(1, 48733);

INSERT INTO job2.t31 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*32767)::smallint, (random()*(10^(12-1)-1))::numeric(12,1), substr(md5(random()::text),1,30), (random()*(10^(7-3)-1))::numeric(7,3), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*38)::int)), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30)
FROM generate_series(1, 10340);

INSERT INTO job2.t32 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, (random()*10000)::double precision, (random()*(10^(11-1)-1))::numeric(11,1), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*24)::int)), (random()*10000)::real, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 36705);

INSERT INTO job2.t33 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT (random() > 0.5), floor(random()*2147483647)::int, substr(md5(random()::text),1,7), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*37)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*(10^(10-2)-1))::numeric(10,2), substr(md5(random()::text),1,30)
FROM generate_series(1, 40747);

INSERT INTO job2.t34 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT gen_random_uuid(), (random()*10000)::real, (random()*(10^(12-2)-1))::numeric(12,2), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(11-0)-1))::numeric(11,0), gen_random_uuid(), substr(md5(random()::text),1,18), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,12)
FROM generate_series(1, 27408);

INSERT INTO job2.t35 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT substr(md5(random()::text),1,16), substr(md5(random()::text),1,30), substr(md5(random()::text),1,4), substr(md5(random()::text),1,(1+floor(random()*43)::int)), (random()*10000)::real, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*22)::int)), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*40)::int)), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,11), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 24925);

INSERT INTO job2.t36 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,17), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), (random()*(10^(7-3)-1))::numeric(7,3), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 41200);

INSERT INTO job2.t37 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*(10^(5-3)-1))::numeric(5,3), substr(md5(random()::text),1,(1+floor(random()*43)::int)), (random()*(10^(9-2)-1))::numeric(9,2), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*50)::int)), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*18)::int)), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 20738);

INSERT INTO job2.t38 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real, floor(random()*2147483647)::int, (random() > 0.5), (random()*(10^(7-3)-1))::numeric(7,3), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision
FROM generate_series(1, 25807);

INSERT INTO job2.t39 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT (random()*(10^(12-1)-1))::numeric(12,1), gen_random_uuid(), substr(md5(random()::text),1,30), gen_random_uuid(), (random()*10000)::double precision, substr(md5(random()::text),1,30), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(4-0)-1))::numeric(4,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*9)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 33458);

INSERT INTO job2.t40 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT floor(random()*32767)::smallint, gen_random_uuid(), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*32)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,11), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,12)
FROM generate_series(1, 37899);

INSERT INTO job2.t41 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(9-3)-1))::numeric(9,3), (random()*10000)::double precision, (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,19), floor(random()*2147483647)::int, floor(random()*32767)::smallint, (random() > 0.5), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, (random()*10000)::double precision, (random()*(10^(9-2)-1))::numeric(9,2)
FROM generate_series(1, 28376);

INSERT INTO job2.t42 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT (random()*10000)::double precision, (random() > 0.5), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*41)::int)), (random()*(10^(5-0)-1))::numeric(5,0), floor(random()*9223372036854775807)::bigint, (random() > 0.5), substr(md5(random()::text),1,7), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,8), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 42053);

INSERT INTO job2.t43 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*5)::int)), (random() > 0.5), substr(md5(random()::text),1,10), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), (random()*10000)::real, (random() > 0.5)
FROM generate_series(1, 36546);

INSERT INTO job2.t44 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT (random()*10000)::double precision, substr(md5(random()::text),1,7), (random()*10000)::double precision, floor(random()*32767)::smallint, (random()*10000)::real, gen_random_uuid(), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 34166);

INSERT INTO job2.t45 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(8-3)-1))::numeric(8,3), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*1)::int)), substr(md5(random()::text),1,(1+floor(random()*27)::int)), gen_random_uuid(), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint
FROM generate_series(1, 41249);

INSERT INTO job2.t46 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(10-0)-1))::numeric(10,0), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*42)::int)), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*44)::int)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*14)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), substr(md5(random()::text),1,7)
FROM generate_series(1, 35553);

INSERT INTO job2.t47 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*26)::int)), substr(md5(random()::text),1,(1+floor(random()*1)::int)), substr(md5(random()::text),1,(1+floor(random()*45)::int)), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*11)::int)), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random() > 0.5), substr(md5(random()::text),1,9), (random()*10000)::double precision, (random()*10000)::double precision, substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 46240);

INSERT INTO job2.t48 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT (random()*10000)::real, (random() > 0.5), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, (random()*10000)::double precision, substr(md5(random()::text),1,30), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*43)::int)), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*32)::int)), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 38152);

INSERT INTO job2.t49 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT (random()*10000)::real, (random()*(10^(5-0)-1))::numeric(5,0), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-2)-1))::numeric(7,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,15), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 38845);

INSERT INTO job2.t50 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT gen_random_uuid(), gen_random_uuid(), floor(random()*2147483647)::int, (random()*(10^(7-2)-1))::numeric(7,2), (random() > 0.5), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,7), substr(md5(random()::text),1,30), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 17884);

INSERT INTO job2.t51 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,13), (random()*(10^(7-3)-1))::numeric(7,3), (random()*10000)::double precision, floor(random()*32767)::smallint, substr(md5(random()::text),1,11), (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid()
FROM generate_series(1, 15044);

INSERT INTO job2.t52 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT floor(random()*32767)::smallint, gen_random_uuid(), (random()*10000)::double precision, (random() > 0.5), gen_random_uuid(), gen_random_uuid(), floor(random()*2147483647)::int, gen_random_uuid(), (random()*(10^(7-3)-1))::numeric(7,3), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random()*10000)::double precision, (random() > 0.5), substr(md5(random()::text),1,30), (random() > 0.5), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 22207);

INSERT INTO job2.t53 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*22)::int)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, floor(random()*32767)::smallint, (random() > 0.5), substr(md5(random()::text),1,19), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 37702);

INSERT INTO job2.t54 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,12), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*16)::int)), substr(md5(random()::text),1,4), substr(md5(random()::text),1,20)
FROM generate_series(1, 49722);

INSERT INTO job2.t55 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT substr(md5(random()::text),1,(1+floor(random()*24)::int)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, (random()*(10^(8-0)-1))::numeric(8,0), (random()*(10^(7-0)-1))::numeric(7,0), substr(md5(random()::text),1,(1+floor(random()*11)::int)), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,15), floor(random()*32767)::smallint, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, gen_random_uuid(), gen_random_uuid()
FROM generate_series(1, 37250);

INSERT INTO job2.t56 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, (random()*(10^(4-3)-1))::numeric(4,3), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 11994);

INSERT INTO job2.t57 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,3), substr(md5(random()::text),1,(1+floor(random()*7)::int)), (random()*(10^(7-1)-1))::numeric(7,1), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30)
FROM generate_series(1, 14625);

INSERT INTO job2.t58 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(11-2)-1))::numeric(11,2), (random()*10000)::real, (random()*(10^(10-2)-1))::numeric(10,2), (random()*(10^(8-0)-1))::numeric(8,0), substr(md5(random()::text),1,18), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 18931);

INSERT INTO job2.t59 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(10-3)-1))::numeric(10,3), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(9-2)-1))::numeric(9,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,12), (random()*10000)::real, substr(md5(random()::text),1,7), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*8)::int))
FROM generate_series(1, 30494);

INSERT INTO job2.t60 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*12)::int)), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random()*10000)::double precision, floor(random()*32767)::smallint
FROM generate_series(1, 22592);

INSERT INTO job2.t61 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), gen_random_uuid(), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*42)::int)), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(8-1)-1))::numeric(8,1), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*25)::int)), substr(md5(random()::text),1,13), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 38239);

INSERT INTO job2.t62 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, substr(md5(random()::text),1,11), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), substr(md5(random()::text),1,5), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*49)::int))
FROM generate_series(1, 21527);

INSERT INTO job2.t63 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::real, (random()*(10^(9-0)-1))::numeric(9,0), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,3), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(9-0)-1))::numeric(9,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,10), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, substr(md5(random()::text),1,2)
FROM generate_series(1, 47612);

INSERT INTO job2.t64 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(4-0)-1))::numeric(4,0), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, (random()*10000)::double precision, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::real, floor(random()*32767)::smallint, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*23)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 26793);

INSERT INTO job2.t65 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT (random()*10000)::double precision, substr(md5(random()::text),1,17), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), (random()*(10^(6-0)-1))::numeric(6,0), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 17115);

INSERT INTO job2.t66 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(9-1)-1))::numeric(9,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), substr(md5(random()::text),1,6), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 47977);

INSERT INTO job2.t67 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*39)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 29205);

INSERT INTO job2.t68 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*49)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(5-2)-1))::numeric(5,2), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*23)::int)), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*13)::int))
FROM generate_series(1, 40708);

INSERT INTO job2.t69 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT (random()*10000)::double precision, substr(md5(random()::text),1,15), substr(md5(random()::text),1,11), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,15), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 42705);

INSERT INTO job2.t70 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,4), (random()*(10^(5-2)-1))::numeric(5,2), (random()*10000)::double precision, substr(md5(random()::text),1,9), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), (random()*10000)::double precision
FROM generate_series(1, 37369);

INSERT INTO job2.t71 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*32767)::smallint, (random()*(10^(8-3)-1))::numeric(8,3), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,20), (random()*10000)::real, (random()*(10^(8-0)-1))::numeric(8,0), (random()*(10^(4-2)-1))::numeric(4,2), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(6-3)-1))::numeric(6,3), (random() > 0.5), gen_random_uuid(), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 15099);

INSERT INTO job2.t72 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*45)::int)), (random()*(10^(4-3)-1))::numeric(4,3), floor(random()*32767)::smallint, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), gen_random_uuid(), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 21995);

INSERT INTO job2.t73 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT substr(md5(random()::text),1,(1+floor(random()*48)::int)), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*6)::int)), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 19359);

INSERT INTO job2.t74 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT (random()*(10^(12-2)-1))::numeric(12,2), gen_random_uuid(), (random()*10000)::real, floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*28)::int)), (random()*10000)::real, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*26)::int)), (random() > 0.5), (random()*10000)::double precision, floor(random()*2147483647)::int, (random()*(10^(9-2)-1))::numeric(9,2), substr(md5(random()::text),1,20)
FROM generate_series(1, 21070);

INSERT INTO job2.t75 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,11), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, substr(md5(random()::text),1,1), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,19), substr(md5(random()::text),1,(1+floor(random()*16)::int))
FROM generate_series(1, 18746);

INSERT INTO job2.t76 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*32)::int)), (random() > 0.5), (random()*10000)::real, (random()*10000)::real, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*32767)::smallint, (random()*(10^(9-0)-1))::numeric(9,0), floor(random()*32767)::smallint, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int
FROM generate_series(1, 14268);

INSERT INTO job2.t77 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*32767)::smallint, floor(random()*2147483647)::int, (random()*(10^(10-0)-1))::numeric(10,0), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(5-2)-1))::numeric(5,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*26)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*22)::int)), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 20630);

INSERT INTO job2.t78 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*10000)::double precision, (random()*10000)::real, substr(md5(random()::text),1,14), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, substr(md5(random()::text),1,17), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, floor(random()*2147483647)::int
FROM generate_series(1, 35001);

INSERT INTO job2.t79 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*46)::int)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*12)::int)), floor(random()*32767)::smallint
FROM generate_series(1, 22476);

INSERT INTO job2.t80 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,6), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, (random()*(10^(6-1)-1))::numeric(6,1), substr(md5(random()::text),1,8), floor(random()*32767)::smallint, (random()*10000)::double precision, substr(md5(random()::text),1,30), (random()*10000)::double precision, (random() > 0.5), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,14)
FROM generate_series(1, 45684);

INSERT INTO job2.t81 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*21)::int)), substr(md5(random()::text),1,18), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, (random()*10000)::real, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,11), (random()*10000)::real, substr(md5(random()::text),1,20), (random()*10000)::double precision, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int
FROM generate_series(1, 44634);

INSERT INTO job2.t82 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT substr(md5(random()::text),1,(1+floor(random()*5)::int)), floor(random()*9223372036854775807)::bigint, (random()*(10^(12-2)-1))::numeric(12,2), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, (random()*10000)::real, (random()*10000)::double precision, (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 27574);

INSERT INTO job2.t83 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*40)::int)), (random()*10000)::double precision, substr(md5(random()::text),1,30), substr(md5(random()::text),1,12), floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*33)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 25657);

INSERT INTO job2.t84 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT (random()*10000)::double precision, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*33)::int)), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, substr(md5(random()::text),1,7), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,5), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 31931);

INSERT INTO job2.t85 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,13), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 10004);

INSERT INTO job2.t86 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT (random()*(10^(9-0)-1))::numeric(9,0), (random()*(10^(4-3)-1))::numeric(4,3), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(6-3)-1))::numeric(6,3), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 25433);

INSERT INTO job2.t87 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT floor(random()*2147483647)::int, gen_random_uuid(), (random()*(10^(4-1)-1))::numeric(4,1), gen_random_uuid(), (random()*10000)::real, gen_random_uuid(), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*15)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,15), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 32889);

INSERT INTO job2.t88 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(9-2)-1))::numeric(9,2), floor(random()*32767)::smallint, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,19), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,1), (random()*10000)::double precision, floor(random()*32767)::smallint, (random()*(10^(6-2)-1))::numeric(6,2), (random()*(10^(10-3)-1))::numeric(10,3), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 45308);

INSERT INTO job2.t89 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT gen_random_uuid(), (random()*10000)::real, (random()*(10^(8-0)-1))::numeric(8,0), (random()*10000)::real, (random()*10000)::real, (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 44133);

INSERT INTO job2.t90 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*27)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), (random() > 0.5), floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 17415);

INSERT INTO job2.t91 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT floor(random()*9223372036854775807)::bigint, (random()*10000)::real, (random()*(10^(4-2)-1))::numeric(4,2), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*14)::int)), floor(random()*2147483647)::int, (random() > 0.5), floor(random()*2147483647)::int, floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, (random()*(10^(9-3)-1))::numeric(9,3), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*(10^(11-1)-1))::numeric(11,1), substr(md5(random()::text),1,1)
FROM generate_series(1, 49478);

INSERT INTO job2.t92 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, (random()*(10^(5-2)-1))::numeric(5,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, (random() > 0.5), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), substr(md5(random()::text),1,6), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*34)::int)), (random()*10000)::double precision, (random()*(10^(7-1)-1))::numeric(7,1)
FROM generate_series(1, 19535);

INSERT INTO job2.t93 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*28)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 15900);

INSERT INTO job2.t94 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(4-0)-1))::numeric(4,0), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(8-0)-1))::numeric(8,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 29901);

INSERT INTO job2.t95 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT substr(md5(random()::text),1,(1+floor(random()*26)::int)), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random() > 0.5), substr(md5(random()::text),1,30), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*33)::int)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*44)::int))
FROM generate_series(1, 48727);

INSERT INTO job2.t96 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, substr(md5(random()::text),1,15), substr(md5(random()::text),1,(1+floor(random()*30)::int)), gen_random_uuid(), (random() > 0.5), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*11)::int))
FROM generate_series(1, 35367);

INSERT INTO job2.t97 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), substr(md5(random()::text),1,30), (random() > 0.5), (random() > 0.5), gen_random_uuid(), (random()*10000)::real, floor(random()*2147483647)::int, gen_random_uuid(), gen_random_uuid(), gen_random_uuid(), substr(md5(random()::text),1,30), (random() > 0.5), (random()*10000)::double precision, substr(md5(random()::text),1,9)
FROM generate_series(1, 46728);

INSERT INTO job2.t98 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(11-0)-1))::numeric(11,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,16), (random()*10000)::double precision, substr(md5(random()::text),1,10), gen_random_uuid(), (random()*10000)::double precision, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*30)::int)), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 26082);

INSERT INTO job2.t99 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random()*(10^(10-1)-1))::numeric(10,1), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, gen_random_uuid(), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*40)::int)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int
FROM generate_series(1, 19421);

INSERT INTO job2.t100 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT (random()*10000)::real, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*1)::int)), (random()*(10^(4-2)-1))::numeric(4,2), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 31927);
