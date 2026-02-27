BEGIN;
CALL bench.p_tsl1 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl2 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl3 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl4 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl5 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl6 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl7 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl8 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl9 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsl10 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;
