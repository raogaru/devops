CREATE OR REPLACE FUNCTION bench.f_tpx1(p_id bigint)
RETURNS SETOF bench.tpx1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx2(p_id bigint)
RETURNS SETOF bench.tpx2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx3(p_id bigint)
RETURNS SETOF bench.tpx3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx4(p_id bigint)
RETURNS SETOF bench.tpx4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx4 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx5(p_id bigint)
RETURNS SETOF bench.tpx5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx5 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx6(p_id bigint)
RETURNS SETOF bench.tpx6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx6 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx7(p_id bigint)
RETURNS SETOF bench.tpx7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx7 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx8(p_id bigint)
RETURNS SETOF bench.tpx8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx8 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx9(p_id bigint)
RETURNS SETOF bench.tpx9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx9 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tpx10(p_id bigint)
RETURNS SETOF bench.tpx10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tpx10 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
