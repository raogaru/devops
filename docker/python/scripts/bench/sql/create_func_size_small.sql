CREATE OR REPLACE FUNCTION bench.f_t_small1(p_id bigint)
RETURNS SETOF bench.t_small1
LANGUAGE plpgsql AS $$
BEGIN
SELECT user;
    RETURN QUERY SELECT * FROM bench.t_small1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small2(p_id bigint)
RETURNS SETOF bench.t_small2
LANGUAGE plpgsql AS $$
BEGIN
SELECT user;
    RETURN QUERY SELECT * FROM bench.t_small2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_small3(p_id bigint)
RETURNS SETOF bench.t_small3
LANGUAGE plpgsql AS $$
BEGIN
SELECT user;
    RETURN QUERY SELECT * FROM bench.t_small3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
