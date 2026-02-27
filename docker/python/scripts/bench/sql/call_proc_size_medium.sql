BEGIN;
CALL bench.p_tsm1 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm2 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm3 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm4 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm5 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm6 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm7 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm8 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm9 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tsm10 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;
