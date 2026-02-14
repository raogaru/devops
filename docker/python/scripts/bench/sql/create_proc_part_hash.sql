CREATE OR REPLACE PROCEDURE bench.p_t_hash1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash3 LIMIT 5;
END;
$$; 
