CREATE OR REPLACE PROCEDURE bench.p_t_wide1(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide2(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide3(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide4(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide5(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide6(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide7(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide8(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide9(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide10(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide10 LIMIT 5;
END;
$$; 
