CREATE OR REPLACE FUNCTION bench.f_t_random1(p_id bigint)
RETURNS SETOF bench.t_random1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random2(p_id bigint)
RETURNS SETOF bench.t_random2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random3(p_id bigint)
RETURNS SETOF bench.t_random3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
