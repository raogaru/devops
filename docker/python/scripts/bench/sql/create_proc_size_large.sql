CREATE OR REPLACE PROCEDURE bench.p_tsl1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl1 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl2 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl3 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl4(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl4 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl5(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl5 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl6(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl6 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl7(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl7 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl8(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl8 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl9(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl9 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tsl10(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tsl10 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 
