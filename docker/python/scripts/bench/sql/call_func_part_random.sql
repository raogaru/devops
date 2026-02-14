SELECT * FROM bench.f_t_random1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_random2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_random3 (p_id=>(floor(random()*(100-1+1)+1)::int));