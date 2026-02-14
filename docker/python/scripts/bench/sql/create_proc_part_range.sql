CREATE OR REPLACE PROCEDURE bench.p_t_range1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range3 LIMIT 5;
END;
$$; 
