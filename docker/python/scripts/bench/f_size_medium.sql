CREATE OR REPLACE FUNCTION bench.f_t_medium1()
RETURNS SETOF bench.t_medium1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium2()
RETURNS SETOF bench.t_medium2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium3()
RETURNS SETOF bench.t_medium3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium4()
RETURNS SETOF bench.t_medium4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium5()
RETURNS SETOF bench.t_medium5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium6()
RETURNS SETOF bench.t_medium6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium7()
RETURNS SETOF bench.t_medium7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium8()
RETURNS SETOF bench.t_medium8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium9()
RETURNS SETOF bench.t_medium9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium10()
RETURNS SETOF bench.t_medium10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium10 LIMIT 5;
END;
$$;
