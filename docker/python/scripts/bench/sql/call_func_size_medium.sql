SELECT * FROM bench.f_t_medium1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_medium2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_medium3 (p_id=>(floor(random()*(100-1+1)+1)::int));