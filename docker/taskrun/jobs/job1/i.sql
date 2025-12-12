INSERT INTO public.job1_1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT substr(md5(random()::text),1,(1+floor(random()*10)::int)), (random()*10000)::double precision, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*48)::int)), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,2), gen_random_uuid(), (random()*10000)::double precision
FROM generate_series(1, 4811);

INSERT INTO public.job1_2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT substr(md5(random()::text),1,3), substr(md5(random()::text),1,18), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int
FROM generate_series(1, 4325);

INSERT INTO public.job1_3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(11-0)-1))::numeric(11,0), (random()*10000)::real, floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*48)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1563);

INSERT INTO public.job1_4 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT substr(md5(random()::text),1,(1+floor(random()*20)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(8-2)-1))::numeric(8,2), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*50)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid()
FROM generate_series(1, 1039);

INSERT INTO public.job1_5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*43)::int)), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2382);

INSERT INTO public.job1_6 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, (random()*(10^(4-3)-1))::numeric(4,3), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, gen_random_uuid(), (random()*(10^(10-3)-1))::numeric(10,3), gen_random_uuid()
FROM generate_series(1, 1093);

INSERT INTO public.job1_7 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,5), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*7)::int))
FROM generate_series(1, 1880);

INSERT INTO public.job1_8 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT substr(md5(random()::text),1,(1+floor(random()*14)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint, floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random()*10000)::real, (random()*10000)::real, substr(md5(random()::text),1,30), gen_random_uuid()
FROM generate_series(1, 1475);

INSERT INTO public.job1_9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*14)::int)), (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint, (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), (random()*(10^(5-3)-1))::numeric(5,3), substr(md5(random()::text),1,(1+floor(random()*47)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2530);

INSERT INTO public.job1_10 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(7-3)-1))::numeric(7,3), floor(random()*32767)::smallint, gen_random_uuid(), (random()*(10^(7-2)-1))::numeric(7,2), substr(md5(random()::text),1,11)
FROM generate_series(1, 3842);

INSERT INTO public.job1_11 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT gen_random_uuid(), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*10000)::real, floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 1286);

INSERT INTO public.job1_12 (c1,c2,c3,c4,c5)
SELECT (random()*(10^(11-3)-1))::numeric(11,3), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4832);

INSERT INTO public.job1_13 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), substr(md5(random()::text),1,6), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid()
FROM generate_series(1, 1707);

INSERT INTO public.job1_14 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(12-3)-1))::numeric(12,3), gen_random_uuid(), (random()*(10^(11-0)-1))::numeric(11,0), (random()*10000)::real, floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), gen_random_uuid(), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3498);

INSERT INTO public.job1_15 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*41)::int)), (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random()*(10^(10-1)-1))::numeric(10,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(12-0)-1))::numeric(12,0)
FROM generate_series(1, 1421);

INSERT INTO public.job1_16 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, (random()*(10^(11-1)-1))::numeric(11,1), (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30)
FROM generate_series(1, 4448);

INSERT INTO public.job1_17 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT floor(random()*32767)::smallint, (random()*10000)::double precision, (random()*(10^(10-0)-1))::numeric(10,0), (random()*10000)::real, (random()*(10^(10-3)-1))::numeric(10,3), (random() > 0.5), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision
FROM generate_series(1, 3353);

INSERT INTO public.job1_18 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT (random()*(10^(8-3)-1))::numeric(8,3), substr(md5(random()::text),1,19), floor(random()*2147483647)::int, floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,12), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(10-3)-1))::numeric(10,3), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1088);

INSERT INTO public.job1_19 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT substr(md5(random()::text),1,(1+floor(random()*34)::int)), substr(md5(random()::text),1,30), (random()*(10^(9-2)-1))::numeric(9,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), gen_random_uuid(), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, (random()*10000)::real, (random()*(10^(11-1)-1))::numeric(11,1)
FROM generate_series(1, 4221);

INSERT INTO public.job1_20 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(9-3)-1))::numeric(9,3), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint
FROM generate_series(1, 2183);

INSERT INTO public.job1_21 (c1,c2,c3,c4,c5)
SELECT floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*33)::int))
FROM generate_series(1, 2594);

INSERT INTO public.job1_22 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,20), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3648);

INSERT INTO public.job1_23 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT (random()*(10^(10-0)-1))::numeric(10,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), floor(random()*32767)::smallint, (random()*10000)::real, floor(random()*9223372036854775807)::bigint, (random() > 0.5), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), (random()*10000)::double precision
FROM generate_series(1, 1934);

INSERT INTO public.job1_24 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random() > 0.5), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), (random() > 0.5), (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 2567);

INSERT INTO public.job1_25 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT (random() > 0.5), substr(md5(random()::text),1,11), (random()*10000)::real, gen_random_uuid(), (random()*10000)::double precision, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*32767)::smallint, floor(random()*32767)::smallint, (random()*(10^(12-1)-1))::numeric(12,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int
FROM generate_series(1, 1206);

INSERT INTO public.job1_26 (c1,c2,c3,c4,c5,c6,c7)
SELECT substr(md5(random()::text),1,15), (random()*10000)::double precision, gen_random_uuid(), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,1)
FROM generate_series(1, 2289);

INSERT INTO public.job1_27 (c1,c2,c3,c4,c5)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,11), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2255);

INSERT INTO public.job1_28 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT (random()*10000)::double precision, (random()*10000)::double precision, (random()*10000)::real, floor(random()*32767)::smallint, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*27)::int)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2877);

INSERT INTO public.job1_29 (c1,c2,c3,c4,c5,c6,c7)
SELECT floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*10000)::real, (random()*(10^(7-1)-1))::numeric(7,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*32767)::smallint
FROM generate_series(1, 4929);

INSERT INTO public.job1_30 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*32)::int)), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 1876);

INSERT INTO public.job1_31 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, (random() > 0.5), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4329);

INSERT INTO public.job1_32 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,30), (random() > 0.5), floor(random()*32767)::smallint, (random()*10000)::real, (random()*10000)::double precision, substr(md5(random()::text),1,13), (random()*(10^(12-1)-1))::numeric(12,1), (random()*10000)::double precision, floor(random()*2147483647)::int
FROM generate_series(1, 4085);

INSERT INTO public.job1_33 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT floor(random()*2147483647)::int, (random()*(10^(4-2)-1))::numeric(4,2), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(7-1)-1))::numeric(7,1), substr(md5(random()::text),1,6), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid()
FROM generate_series(1, 1205);

INSERT INTO public.job1_34 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), floor(random()*9223372036854775807)::bigint, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2636);

INSERT INTO public.job1_35 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,11), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(4-2)-1))::numeric(4,2), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*42)::int))
FROM generate_series(1, 1991);

INSERT INTO public.job1_36 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,13), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*39)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), substr(md5(random()::text),1,11), floor(random()*32767)::smallint, (random() > 0.5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3546);

INSERT INTO public.job1_37 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, substr(md5(random()::text),1,30), (random()*(10^(9-2)-1))::numeric(9,2), floor(random()*32767)::smallint, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*14)::int)), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, (random()*10000)::double precision, (random()*(10^(7-1)-1))::numeric(7,1), substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid()
FROM generate_series(1, 4767);

INSERT INTO public.job1_38 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(10-1)-1))::numeric(10,1), floor(random()*32767)::smallint, gen_random_uuid(), floor(random()*32767)::smallint, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*10)::int)), floor(random()*9223372036854775807)::bigint, (random()*10000)::real
FROM generate_series(1, 1076);

INSERT INTO public.job1_39 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*7)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,12), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,5), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3943);

INSERT INTO public.job1_40 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,4), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), (random()*(10^(6-1)-1))::numeric(6,1), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, (random()*10000)::real, floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, substr(md5(random()::text),1,(1+floor(random()*28)::int)), floor(random()*2147483647)::int
FROM generate_series(1, 4549);

INSERT INTO public.job1_41 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT floor(random()*2147483647)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*37)::int)), substr(md5(random()::text),1,15), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint
FROM generate_series(1, 4661);

INSERT INTO public.job1_42 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, floor(random()*32767)::smallint, floor(random()*2147483647)::int, (random()*(10^(11-3)-1))::numeric(11,3), floor(random()*2147483647)::int, (random()*(10^(11-0)-1))::numeric(11,0), (random()*(10^(4-0)-1))::numeric(4,0), substr(md5(random()::text),1,9), (random()*10000)::double precision
FROM generate_series(1, 1325);

INSERT INTO public.job1_43 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT substr(md5(random()::text),1,16), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,2), substr(md5(random()::text),1,30), substr(md5(random()::text),1,13), (random()*10000)::double precision, gen_random_uuid(), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2841);

INSERT INTO public.job1_44 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), (random()*(10^(6-0)-1))::numeric(6,0), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), (random() > 0.5), (random() > 0.5), (random()*(10^(7-0)-1))::numeric(7,0), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int
FROM generate_series(1, 1092);

INSERT INTO public.job1_45 (c1,c2,c3,c4,c5,c6,c7)
SELECT DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,8), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), (random()*10000)::real
FROM generate_series(1, 3932);

INSERT INTO public.job1_46 (c1,c2,c3,c4,c5,c6,c7)
SELECT (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(7-3)-1))::numeric(7,3), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2115);

INSERT INTO public.job1_47 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, floor(random()*2147483647)::int, floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, floor(random()*32767)::smallint
FROM generate_series(1, 4648);

INSERT INTO public.job1_48 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*45)::int)), floor(random()*2147483647)::int, gen_random_uuid(), substr(md5(random()::text),1,11), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 2539);

INSERT INTO public.job1_49 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT substr(md5(random()::text),1,(1+floor(random()*5)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), substr(md5(random()::text),1,30), (random() > 0.5), (random()*10000)::double precision, floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*39)::int))
FROM generate_series(1, 3670);

INSERT INTO public.job1_50 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT (random() > 0.5), (random() > 0.5), gen_random_uuid(), floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, gen_random_uuid(), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1924);

INSERT INTO public.job1_51 (c1,c2,c3,c4,c5,c6)
SELECT (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*16)::int)), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), (random()*(10^(5-3)-1))::numeric(5,3)
FROM generate_series(1, 1314);

INSERT INTO public.job1_52 (c1,c2,c3,c4,c5,c6,c7)
SELECT substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*23)::int)), gen_random_uuid()
FROM generate_series(1, 3951);

INSERT INTO public.job1_53 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*1)::int)), floor(random()*2147483647)::int, (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*4)::int)), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real
FROM generate_series(1, 2884);

INSERT INTO public.job1_54 (c1,c2,c3,c4,c5)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,12)
FROM generate_series(1, 1893);

INSERT INTO public.job1_55 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, floor(random()*32767)::smallint
FROM generate_series(1, 1379);

INSERT INTO public.job1_56 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*17)::int)), floor(random()*2147483647)::int, (random()*10000)::double precision
FROM generate_series(1, 4022);

INSERT INTO public.job1_57 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT (random()*(10^(4-2)-1))::numeric(4,2), gen_random_uuid(), (random() > 0.5), substr(md5(random()::text),1,30), (random()*10000)::double precision, substr(md5(random()::text),1,16), (random() > 0.5), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), gen_random_uuid(), (random()*(10^(4-3)-1))::numeric(4,3), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(9-2)-1))::numeric(9,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1913);

INSERT INTO public.job1_58 (c1,c2,c3,c4,c5,c6)
SELECT substr(md5(random()::text),1,(1+floor(random()*44)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,12), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int
FROM generate_series(1, 1699);

INSERT INTO public.job1_59 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT gen_random_uuid(), substr(md5(random()::text),1,15), floor(random()*2147483647)::int, (random()*(10^(12-0)-1))::numeric(12,0), substr(md5(random()::text),1,5), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,30), substr(md5(random()::text),1,(1+floor(random()*35)::int)), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*44)::int)), gen_random_uuid(), (random()*10000)::real, (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3416);

INSERT INTO public.job1_60 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT gen_random_uuid(), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(10-2)-1))::numeric(10,2), substr(md5(random()::text),1,30), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(6-2)-1))::numeric(6,2), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2870);

INSERT INTO public.job1_61 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), floor(random()*9223372036854775807)::bigint, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(12-2)-1))::numeric(12,2), floor(random()*2147483647)::int, (random() > 0.5), floor(random()*2147483647)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,15)
FROM generate_series(1, 1590);

INSERT INTO public.job1_62 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT (random()*(10^(7-0)-1))::numeric(7,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(4-0)-1))::numeric(4,0), (random()*(10^(11-1)-1))::numeric(11,1), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*25)::int)), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,8), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int
FROM generate_series(1, 3042);

INSERT INTO public.job1_63 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*27)::int)), floor(random()*2147483647)::int, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*15)::int)), (random()*10000)::real, (random()*(10^(12-1)-1))::numeric(12,1), substr(md5(random()::text),1,30), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(5-2)-1))::numeric(5,2), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4768);

INSERT INTO public.job1_64 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
SELECT DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, floor(random()*32767)::smallint, substr(md5(random()::text),1,3), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*1)::int)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*4)::int)), substr(md5(random()::text),1,9), (random()*10000)::real, substr(md5(random()::text),1,30)
FROM generate_series(1, 4897);

INSERT INTO public.job1_65 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(6-2)-1))::numeric(6,2), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,7), floor(random()*9223372036854775807)::bigint, (random() > 0.5), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, (random()*(10^(12-1)-1))::numeric(12,1), (random()*(10^(5-2)-1))::numeric(5,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3630);

INSERT INTO public.job1_66 (c1,c2,c3,c4,c5)
SELECT floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,16), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4689);

INSERT INTO public.job1_67 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT substr(md5(random()::text),1,(1+floor(random()*21)::int)), substr(md5(random()::text),1,(1+floor(random()*43)::int)), gen_random_uuid(), (random()*10000)::real, substr(md5(random()::text),1,12), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, substr(md5(random()::text),1,17), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(9-3)-1))::numeric(9,3)
FROM generate_series(1, 1385);

INSERT INTO public.job1_68 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*(10^(7-2)-1))::numeric(7,2), substr(md5(random()::text),1,(1+floor(random()*50)::int)), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(8-2)-1))::numeric(8,2), (random()*10000)::double precision
FROM generate_series(1, 1371);

INSERT INTO public.job1_69 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT substr(md5(random()::text),1,30), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30), (random() > 0.5), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*29)::int)), substr(md5(random()::text),1,6), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4904);

INSERT INTO public.job1_70 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real, (random() > 0.5), (random()*10000)::double precision, (random()*(10^(5-2)-1))::numeric(5,2), floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, (random()*10000)::double precision, gen_random_uuid(), (random() > 0.5), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::double precision, (random() > 0.5), (random()*10000)::double precision, substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real
FROM generate_series(1, 3179);

INSERT INTO public.job1_71 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,8), (random()*10000)::double precision, (random()*(10^(4-1)-1))::numeric(4,1), floor(random()*32767)::smallint
FROM generate_series(1, 3946);

INSERT INTO public.job1_72 (c1,c2,c3,c4,c5,c6,c7)
SELECT substr(md5(random()::text),1,13), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3330);

INSERT INTO public.job1_73 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), gen_random_uuid(), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), (random() > 0.5), gen_random_uuid(), substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,6), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4799);

INSERT INTO public.job1_74 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*10000)::double precision, floor(random()*32767)::smallint, (random()*10000)::real, substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1106);

INSERT INTO public.job1_75 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT floor(random()*32767)::smallint, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, (random() > 0.5), (random()*(10^(11-1)-1))::numeric(11,1), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30)
FROM generate_series(1, 1019);

INSERT INTO public.job1_76 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(5-0)-1))::numeric(5,0)
FROM generate_series(1, 4181);

INSERT INTO public.job1_77 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT (random() > 0.5), (random()*(10^(11-2)-1))::numeric(11,2), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), (random()*(10^(7-2)-1))::numeric(7,2), substr(md5(random()::text),1,9), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, substr(md5(random()::text),1,14), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::real
FROM generate_series(1, 2716);

INSERT INTO public.job1_78 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13)
SELECT substr(md5(random()::text),1,20), (random() > 0.5), substr(md5(random()::text),1,(1+floor(random()*44)::int)), substr(md5(random()::text),1,14), floor(random()*32767)::smallint, substr(md5(random()::text),1,12), DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(8-0)-1))::numeric(8,0), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), floor(random()*2147483647)::int
FROM generate_series(1, 4964);

INSERT INTO public.job1_79 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(8-1)-1))::numeric(8,1), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, floor(random()*2147483647)::int, floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, (random()*10000)::real, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3116);

INSERT INTO public.job1_80 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*2147483647)::int, (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,(1+floor(random()*8)::int)), substr(md5(random()::text),1,11), (random()*10000)::double precision, (random() > 0.5), (random()*10000)::double precision, substr(md5(random()::text),1,2)
FROM generate_series(1, 1607);

INSERT INTO public.job1_81 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random()*(10^(7-0)-1))::numeric(7,0), substr(md5(random()::text),1,(1+floor(random()*32)::int)), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*5)::int)), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,(1+floor(random()*25)::int)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, substr(md5(random()::text),1,30), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1700);

INSERT INTO public.job1_82 (c1,c2,c3,c4,c5)
SELECT substr(md5(random()::text),1,2), substr(md5(random()::text),1,15), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), substr(md5(random()::text),1,30)
FROM generate_series(1, 4427);

INSERT INTO public.job1_83 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT floor(random()*32767)::smallint, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, gen_random_uuid(), floor(random()*32767)::smallint, floor(random()*32767)::smallint, floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*42)::int)), floor(random()*9223372036854775807)::bigint, gen_random_uuid(), floor(random()*32767)::smallint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real
FROM generate_series(1, 2040);

INSERT INTO public.job1_84 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), substr(md5(random()::text),1,3), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*29)::int)), gen_random_uuid(), substr(md5(random()::text),1,30), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3078);

INSERT INTO public.job1_85 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT (random() > 0.5), DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, (random()*(10^(5-0)-1))::numeric(5,0), substr(md5(random()::text),1,(1+floor(random()*8)::int)), substr(md5(random()::text),1,14), (random()*(10^(4-1)-1))::numeric(4,1), substr(md5(random()::text),1,(1+floor(random()*25)::int)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3441);

INSERT INTO public.job1_86 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, substr(md5(random()::text),1,9), DATE '1970-01-01' + (random()*20000)::int, substr(md5(random()::text),1,30), floor(random()*32767)::smallint, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,20), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3145);

INSERT INTO public.job1_87 (c1,c2,c3,c4,c5,c6)
SELECT (random()*10000)::real, (random()*10000)::real, substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::real, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 3140);

INSERT INTO public.job1_88 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT gen_random_uuid(), (random()*(10^(10-2)-1))::numeric(10,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), gen_random_uuid(), gen_random_uuid(), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*10000)::double precision, (random()*10000)::real
FROM generate_series(1, 3163);

INSERT INTO public.job1_89 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT gen_random_uuid(), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*23)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*19)::int)), substr(md5(random()::text),1,(1+floor(random()*43)::int)), (random()*10000)::double precision, gen_random_uuid(), gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,4), (random()*10000)::double precision
FROM generate_series(1, 3599);

INSERT INTO public.job1_90 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), (random()*10000)::real, (random()*(10^(12-1)-1))::numeric(12,1), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5)
FROM generate_series(1, 4014);

INSERT INTO public.job1_91 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random() > 0.5), (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, gen_random_uuid(), floor(random()*9223372036854775807)::bigint, decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), floor(random()*32767)::smallint, (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), floor(random()*2147483647)::int
FROM generate_series(1, 2781);

INSERT INTO public.job1_92 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*9223372036854775807)::bigint, (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*39)::int)), floor(random()*32767)::smallint, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*(10^(6-1)-1))::numeric(6,1), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), substr(md5(random()::text),1,3), substr(md5(random()::text),1,30)
FROM generate_series(1, 2966);

INSERT INTO public.job1_93 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*2147483647)::int, decode(substring(md5(random()::text) for 8), 'hex'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(5-0)-1))::numeric(5,0), (random()*10000)::double precision, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4880);

INSERT INTO public.job1_94 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*32767)::smallint, (random()*(10^(12-0)-1))::numeric(12,0), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 3603);

INSERT INTO public.job1_95 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT (random()*10000)::double precision, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,20), substr(md5(random()::text),1,14), floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*26)::int)), (random() > 0.5), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint, floor(random()*2147483647)::int, gen_random_uuid(), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3136);

INSERT INTO public.job1_96 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*8)::int)), (random()*(10^(11-1)-1))::numeric(11,1), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(7-2)-1))::numeric(7,2), floor(random()*32767)::smallint, substr(md5(random()::text),1,14), (random()*(10^(5-2)-1))::numeric(5,2), (random()*(10^(9-1)-1))::numeric(9,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), (random()*10000)::double precision, floor(random()*32767)::smallint
FROM generate_series(1, 1981);

INSERT INTO public.job1_97 (c1,c2,c3,c4,c5,c6,c7)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*34)::int)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random() > 0.5), floor(random()*9223372036854775807)::bigint, DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2431);

INSERT INTO public.job1_98 (c1,c2,c3,c4,c5)
SELECT (random()*10000)::double precision, (random() > 0.5), substr(md5(random()::text),1,12), (random()*10000)::real, substr(md5(random()::text),1,(1+floor(random()*40)::int))
FROM generate_series(1, 1166);

INSERT INTO public.job1_99 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12)
SELECT substr(md5(random()::text),1,30), substr(md5(random()::text),1,9), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,1), substr(md5(random()::text),1,(1+floor(random()*30)::int)), (random()*10000)::real, DATE '1970-01-01' + (random()*20000)::int, floor(random()*2147483647)::int, (random()*(10^(6-0)-1))::numeric(6,0), decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint
FROM generate_series(1, 2084);

INSERT INTO public.job1_100 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,16), DATE '1970-01-01' + (random()*20000)::int, (random() > 0.5), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(11-0)-1))::numeric(11,0), (random()*(10^(8-1)-1))::numeric(8,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision
FROM generate_series(1, 1232);
