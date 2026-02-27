CREATE OR REPLACE FUNCTION bench.f_tsw1(p_id bigint)
RETURNS SETOF bench.tsw1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw2(p_id bigint)
RETURNS SETOF bench.tsw2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw3(p_id bigint)
RETURNS SETOF bench.tsw3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw4(p_id bigint)
RETURNS SETOF bench.tsw4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw4 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw5(p_id bigint)
RETURNS SETOF bench.tsw5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw5 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw6(p_id bigint)
RETURNS SETOF bench.tsw6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw6 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw7(p_id bigint)
RETURNS SETOF bench.tsw7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw7 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw8(p_id bigint)
RETURNS SETOF bench.tsw8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw8 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw9(p_id bigint)
RETURNS SETOF bench.tsw9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw9 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsw10(p_id bigint)
RETURNS SETOF bench.tsw10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsw10 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
