CREATE OR REPLACE FUNCTION bench.f_t_large1(p_id bigint)
RETURNS SETOF bench.t_large1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large2(p_id bigint)
RETURNS SETOF bench.t_large2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large3(p_id bigint)
RETURNS SETOF bench.t_large3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large4(p_id bigint)
RETURNS SETOF bench.t_large4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large5(p_id bigint)
RETURNS SETOF bench.t_large5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large6(p_id bigint)
RETURNS SETOF bench.t_large6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large7(p_id bigint)
RETURNS SETOF bench.t_large7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large8(p_id bigint)
RETURNS SETOF bench.t_large8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large9(p_id bigint)
RETURNS SETOF bench.t_large9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large10(p_id bigint)
RETURNS SETOF bench.t_large10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large10 LIMIT 5;
END;
$$;
