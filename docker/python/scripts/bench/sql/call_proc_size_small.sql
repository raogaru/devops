BEGIN;
CALL bench.p_t_small1 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_small2 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_small3 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;
