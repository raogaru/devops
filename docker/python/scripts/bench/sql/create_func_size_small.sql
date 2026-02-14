CREATE OR REPLACE FUNCTION bench.f_t_small1(p_id bigint)
RETURNS SETOF bench.t_small1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small2(p_id bigint)
RETURNS SETOF bench.t_small2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small3(p_id bigint)
RETURNS SETOF bench.t_small3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_small3 LIMIT 5;
END;
$$;
