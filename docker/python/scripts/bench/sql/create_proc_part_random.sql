CREATE OR REPLACE PROCEDURE bench.p_t_random1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random4(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random5(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random6(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random7(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random8(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random9(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random10(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random10 LIMIT 5;
END;
$$; 
