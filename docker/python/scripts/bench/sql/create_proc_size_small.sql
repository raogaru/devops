CREATE OR REPLACE PROCEDURE bench.p_tss1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss1 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss2 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss3 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss4(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss4 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss5(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss5 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss6(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss6 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss7(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss7 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss8(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss8 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss9(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss9 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_tss10(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.tss10 LIMIT (floor(random()*99 + 1)::int);
END;
$$; 
