CREATE OR REPLACE FUNCTION test_random_dml(p_iterations INT DEFAULT 1000, p_max_key INT DEFAULT 100000)
RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
    v_op   INT;
    v_key  INT;
    v_arr  INT[];
    ins_cnt int :=0;
    upd_cnt int :=0;
    del_cnt int :=0;
BEGIN
    FOR i IN 1..p_iterations LOOP
        -- Choose operation: 1=insert, 2=update, 3=delete
        v_op  := (random() * 3 + 1)::INT;
        v_key := (random() * p_max_key)::INT;

        -- Random array (1–5 elements)
        v_arr := ARRAY( SELECT (random() * 100)::INT FROM generate_series(1, (random() * 5 + 1)::INT));

        BEGIN
            IF v_op = 1 THEN -- INSERT
                INSERT INTO test VALUES (v_key, v_arr) ON CONFLICT (a) DO NOTHING;
		ins_cnt:=ins_cnt+1;
            ELSIF v_op = 2 THEN -- UPDATE
                UPDATE test SET b = v_arr WHERE a = v_key;
		upd_cnt:=upd_cnt+1;
            ELSE -- DELETE
                DELETE FROM test WHERE a = v_key;
		del_cnt:=del_cnt+1;
            END IF;

        EXCEPTION WHEN others THEN -- Ignore single-row failures; continue load
            NULL;
        END;
    END LOOP;
    RAISE NOTICE 'Random DML completed: inserts=% updates=% deletes=%', ins_cnt, upd_cnt, del_cnt;
END;
$$;

