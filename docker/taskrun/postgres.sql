-- store execution details 
CREATE TABLE IF NOT EXISTS pg_task_run
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

CREATE INDEX IF NOT EXISTS pg_task_run_run_ts_idx ON pg_task_run USING btree (run_ts) ;

CREATE INDEX pg_task_run_task_id_idx ON public.pg_task_run USING btree (task_id) ;
