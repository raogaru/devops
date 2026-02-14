SELECT * FROM bench.f_t_wide1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_wide2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_wide3 (p_id=>(floor(random()*(100-1+1)+1)::int));