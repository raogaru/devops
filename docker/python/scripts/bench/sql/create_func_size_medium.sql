CREATE OR REPLACE FUNCTION bench.f_tsm1(p_id bigint)
RETURNS SETOF bench.tsm1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm2(p_id bigint)
RETURNS SETOF bench.tsm2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm3(p_id bigint)
RETURNS SETOF bench.tsm3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm4(p_id bigint)
RETURNS SETOF bench.tsm4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm4 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm5(p_id bigint)
RETURNS SETOF bench.tsm5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm5 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm6(p_id bigint)
RETURNS SETOF bench.tsm6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm6 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm7(p_id bigint)
RETURNS SETOF bench.tsm7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm7 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm8(p_id bigint)
RETURNS SETOF bench.tsm8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm8 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm9(p_id bigint)
RETURNS SETOF bench.tsm9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm9 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_tsm10(p_id bigint)
RETURNS SETOF bench.tsm10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.tsm10 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
