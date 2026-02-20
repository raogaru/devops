CREATE OR REPLACE FUNCTION bench.f_t_medium1(p_id bigint)
RETURNS SETOF bench.t_medium1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium2(p_id bigint)
RETURNS SETOF bench.t_medium2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_medium3(p_id bigint)
RETURNS SETOF bench.t_medium3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_medium3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
