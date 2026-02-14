BEGIN;
CALL bench.p_t_hash1 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_hash2 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_hash3 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;
