CREATE OR REPLACE PROCEDURE bench.p_t_medium1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium3 LIMIT 5;
END;
$$; 
