-- store execution details 
CREATE TABLE IF NOT EXISTS public.rdb_jobrun_log
(
    run_id BIGSERIAL PRIMARY KEY,
    run_ts timestamp with time zone DEFAULT now(),
    group_name text COLLATE pg_catalog."default",
    task_id text COLLATE pg_catalog."default",
    status text COLLATE pg_catalog."default",
    attempts integer,
    duration_sec numeric,
    error_message text COLLATE pg_catalog."default",
    dry_run boolean
) ;

CREATE INDEX IF NOT EXISTS rdb_jobrun_log_run_ts_idx ON public.rdb_jobrun_log USING btree (run_ts) ;

CREATE INDEX rdb_jobrun_log_task_id_idx ON public.rdb_jobrun_log USING btree (task_id) ;


CREATE SCHEMA sample;
CREATE SCHEMA job1;
CREATE SCHEMA job2;
CREATE SCHEMA job3;
CREATE SCHEMA job4;
CREATE SCHEMA job5;
CREATE SCHEMA part_list;
CREATE SCHEMA part_hash;
CREATE SCHEMA part_range;
CREATE SCHEMA part_random;
