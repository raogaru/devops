SELECT * FROM bench.f_t_large1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_large2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_large3 (p_id=>(floor(random()*(100-1+1)+1)::int));