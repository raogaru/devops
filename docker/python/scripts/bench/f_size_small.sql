CREATE OR REPLACE FUNCTION bench.f_t_small1()
RETURNS SETOF bench.t_small1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small2()
RETURNS SETOF bench.t_small2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small3()
RETURNS SETOF bench.t_small3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small4()
RETURNS SETOF bench.t_small4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small5()
RETURNS SETOF bench.t_small5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small6()
RETURNS SETOF bench.t_small6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small7()
RETURNS SETOF bench.t_small7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small8()
RETURNS SETOF bench.t_small8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small9()
RETURNS SETOF bench.t_small9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small10()
RETURNS SETOF bench.t_small10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small10 LIMIT 5;
END;
$$;
