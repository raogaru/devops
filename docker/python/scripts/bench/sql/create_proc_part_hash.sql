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

CREATE OR REPLACE PROCEDURE bench.p_t_hash4(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash5(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash6(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash7(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash8(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash9(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_hash10(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_hash10 LIMIT 5;
END;
$$; 
