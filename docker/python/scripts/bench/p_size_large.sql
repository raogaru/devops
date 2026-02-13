CREATE OR REPLACE PROCEDURE bench.p_t_large1(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large2(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large3(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large4(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large5(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large6(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large7(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large8(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large9(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large10(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large10 LIMIT 5;
END;
$$; 
