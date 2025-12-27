#include "postgres.h"

#include "access/xact.h"
#include "catalog/pg_type.h"
#include "executor/executor.h"
#include "miscadmin.h"
#include "nodes/nodes.h"
#include "nodes/print.h"          /* nodeToString */
#include "optimizer/planner.h"
#include "parser/analyze.h"
#include "parser/parse_node.h"
#include "storage/fd.h"           /* AllocateFile */
#include "tcop/utility.h"
#include "utils/builtins.h"
#include "utils/guc.h"
#include "utils/timestamp.h"
#include "commands/explain.h"
#include "commands/explain_state.h"
#include "nodes/pg_list.h"
#include "tcop/dest.h"
#define LINE80 "RDB-SQLTRC:################################################################################"



PG_MODULE_MAGIC;

/* ---------- GUCs ---------- */
static bool rdb_enabled = false;
static bool rdb_log_query_text = true;
static bool rdb_log_query_tree = true;
static bool rdb_log_plan_tree  = true;
static bool rdb_log_executor   = true;
static bool rdb_instrument     = true;
static int  rdb_log_min_duration_ms = 0;
static char *rdb_log_dir = NULL;

/* ---------- Hook chaining ---------- */
static post_parse_analyze_hook_type prev_post_parse_analyze_hook = NULL;
static planner_hook_type            prev_planner_hook = NULL;
static ExecutorStart_hook_type      prev_ExecutorStart = NULL;
static ExecutorRun_hook_type        prev_ExecutorRun = NULL;
static ExecutorFinish_hook_type     prev_ExecutorFinish = NULL;
static ExecutorEnd_hook_type        prev_ExecutorEnd = NULL;
static ProcessUtility_hook_type     prev_ProcessUtility = NULL;

/* ---------- Per-backend state ---------- */
static FILE *trace_fp = NULL;
static TimestampTz stmt_start_ts = 0;

/* ---------- helpers ---------- */

static inline int64
ms_elapsed(TimestampTz start, TimestampTz end)
{
    long secs;
    int  usecs;
    TimestampDifference(start, end, &secs, &usecs);
    return (int64) secs * 1000 + (int64) (usecs / 1000);
}

#include "postgres.h"
#include "utils/palloc.h"

// Replace every ':' with '\n:'
char *
strColon2NewLine(const char *src)
{
    const char *p;
    char       *dst;
    char       *q;
    int         colon_count = 0;
    int         len;

    if (src == NULL)
        return NULL;

    for (p = src; *p; p++) {
        if (*p == ':') colon_count++;
    }
    len = strlen(src) + colon_count + 1;
    dst = palloc(len);
    for (p = src, q = dst; *p; p++) {
        if (*p == ':') { *q++ = '-'; *q++ = '\n'; *q++ = ':'; } else { *q++ = *p; }
    }
    *q = '\0';
    return dst;
}


static void
trace_open_if_needed(void)
{
    if (!rdb_enabled || trace_fp != NULL)
        return;

    if (rdb_log_dir == NULL || rdb_log_dir[0] == '\0')
        return;

    /* Ensure directory exists outside (or you can CreateDir here with care) */

    char tsbuf[64];
    TimestampTz now = GetCurrentTimestamp();
    pg_strftime(tsbuf, sizeof(tsbuf), "%Y%m%d-%H%M%S", pg_localtime(&now, log_timezone));

    char path[MAXPGPATH];
    snprintf(path, sizeof(path), "%s/rdb_sqltrc-%s-%d.trc", rdb_log_dir, tsbuf, MyProcPid);

    trace_fp = AllocateFile(path, "a");
    if (trace_fp)
    {
        fprintf(trace_fp, "=== rdb_sqltrc start pid=%d user=%s db=%s ===\n",
                MyProcPid,
                GetUserNameFromId(GetUserId(), false),
                get_database_name(MyDatabaseId));
        fflush(trace_fp);
    }
}

static void
trace_close(void)
{
    if (trace_fp)
    {
        fprintf(trace_fp, "=== rdb_sqltrc end pid=%d ===\n", MyProcPid);
        FreeFile(trace_fp);
        trace_fp = NULL;
    }
}

static void
tracef(const char *fmt, ...)
{
    if (!rdb_enabled) return;
    trace_open_if_needed();
    if (!trace_fp) return;
    va_list ap;
    va_start(ap, fmt);
    vfprintf(trace_fp, fmt, ap);
    va_end(ap);
    fputc('\n', trace_fp);
    fflush(trace_fp);
}

/* Dump any Node as text */
static void
dump_node(const char *label, const Node *node)
{
    if (!node) return;
    char *s = nodeToString(node);        /* palloc'd */
    tracef("--- %s ---", label);
    tracef("%s", s);
    pfree(s);
}

static char *
print_explain_plan(QueryDesc *queryDesc)
{
    ExplainState *es ;
    StringInfoData buf;

    es = NewExplainState();
    es->analyze = false;
    es->verbose = true;
    es->costs = true;
    es->buffers = false;
    es->format = EXPLAIN_FORMAT_TEXT;

    ExplainBeginOutput(es);
    ExplainPrintPlan(es, queryDesc);
    ExplainEndOutput(es);
    ExplainCloseGroup("Query", NULL, es);

    return pstrdup(buf.data);
}

/* ---------- hooks ---------- */

static void
rdb_post_parse_analyze(ParseState *pstate, Query *query, JumbleState *jstate)
{
    stmt_start_ts = GetCurrentTimestamp();

    if (rdb_enabled)
    {
        tracef("PHASE=PARSE_ANALYZE pid=%d", MyProcPid);

        if (rdb_log_query_text && debug_query_string) {
	    tracef(LINE80);
            tracef("--- QUERY_TEXT ---\n%s", debug_query_string);
	}
        if (rdb_log_query_tree) {
	    tracef(LINE80);
            dump_node("QUERY_TREE", (Node *) strColon2NewLine(query));
	}
    }

    if (prev_post_parse_analyze_hook)
        prev_post_parse_analyze_hook(pstate, query, jstate);
}

static PlannedStmt *
rdb_planner(Query *parse, const char *query_string, int cursorOptions, ParamListInfo boundParams, QueryEnvironment *queryEnv)
{
    TimestampTz plan_start = GetCurrentTimestamp();

    PlannedStmt *result;
    if (prev_planner_hook)
        result = prev_planner_hook(parse, query_string, cursorOptions, boundParams, queryEnv);
    else
        result = standard_planner(parse, query_string, cursorOptions, boundParams, queryEnv);

    TimestampTz plan_end = GetCurrentTimestamp();

    if (rdb_enabled)
    {
        tracef("PHASE=PLANNER duration_ms=%ld", (long) ms_elapsed(plan_start, plan_end));

        if (rdb_enabled && rdb_log_plan_tree)
        {
	    tracef(LINE80);
            //dump_node("PLANNED_STATEMENT(PlannedStmt)", (Node *) result);

            if (result && result->planTree) {
	        tracef(LINE80);
                //dump_node("PLAN_TREE(Plan)", (Node *) result->planTree);
	    }
        }
    }

    return result;
}

static void
rdb_ExecutorStart(QueryDesc *queryDesc, int eflags)
{

    if (rdb_enabled && rdb_instrument && queryDesc)
        queryDesc->instrument_options |= INSTRUMENT_TIMER | INSTRUMENT_ROWS;

/*
    if (rdb_enabled && rdb_log_plan_tree) {
        //char plan_text[32768];
        //plan_text = print_explain_plan(queryDesc);
        //tracef("EXPLAIN_PLAN:\n%s",plan_text);
        tracef(LINE80);
        tracef("EXPLAIN_PLAN:\n%s",print_explain_plan(queryDesc));
        //pfree(plan_text);
    }
*/
    
    if (rdb_enabled && rdb_log_executor)
        tracef("PHASE=EXECUTOR_START eflags=%d", eflags);

    if (prev_ExecutorStart)
        prev_ExecutorStart(queryDesc, eflags);
    else
        standard_ExecutorStart(queryDesc, eflags);
}

static void
rdb_ExecutorRun(QueryDesc *queryDesc, ScanDirection direction, uint64 count)
{
    TimestampTz exec_start = GetCurrentTimestamp();

    if (prev_ExecutorRun)
        prev_ExecutorRun(queryDesc, direction, count);
    else
        standard_ExecutorRun(queryDesc, direction, count);

    TimestampTz exec_end = GetCurrentTimestamp();

    if (rdb_enabled && rdb_log_executor)
        tracef("PHASE=EXECUTOR_RUN duration_ms=%ld", (long) ms_elapsed(exec_start, exec_end));
}

static void
rdb_ExecutorFinish(QueryDesc *queryDesc)
{
    if (prev_ExecutorFinish)
        prev_ExecutorFinish(queryDesc);
    else
        standard_ExecutorFinish(queryDesc);

    if (rdb_enabled && rdb_log_executor)
        tracef("PHASE=EXECUTOR_FINISH");
}

static void
rdb_ExecutorEnd(QueryDesc *queryDesc)
{
    if (prev_ExecutorEnd)
        prev_ExecutorEnd(queryDesc);
    else
        standard_ExecutorEnd(queryDesc);

    if (rdb_enabled)
    {
        TimestampTz end = GetCurrentTimestamp();
        int64 total_ms = (stmt_start_ts ? ms_elapsed(stmt_start_ts, end) : -1);

        if (total_ms >= rdb_log_min_duration_ms)
            tracef("PHASE=EXECUTOR_END total_ms=%ld", (long) total_ms);
    }
}

static void
rdb_ProcessUtility(PlannedStmt *pstmt,
                   const char *queryString,
                   bool readOnlyTree,
                   ProcessUtilityContext context,
                   ParamListInfo params,
                   QueryEnvironment *queryEnv,
                   DestReceiver *dest,
                   QueryCompletion *qc)
{
    if (rdb_enabled)
    {
        tracef("PHASE=UTILITY context=%d", (int) context);
        if (rdb_log_query_text && queryString)
            tracef("UTILITY_TEXT=%s", queryString);
        if (rdb_log_plan_tree && pstmt)
            dump_node("UTILITY_PLANNED_STMT", (Node *) pstmt);
    }

    if (prev_ProcessUtility)
        prev_ProcessUtility(pstmt, queryString, readOnlyTree, context, params, queryEnv, dest, qc);
    else
        standard_ProcessUtility(pstmt, queryString, readOnlyTree, context, params, queryEnv, dest, qc);
}

static void
rdb_trace_exit(int code, Datum arg)
{
    trace_close();
}

/* ---------- init / fini ---------- */

void
_PG_init(void)
{
    DefineCustomBoolVariable("rdb_sqltrc.enabled",
                             "Enable rdb_sqltrc tracing.",
                             NULL,
                             &rdb_enabled,
                             false,
                             PGC_SUSET,
                             0,
                             NULL, NULL, NULL);

    DefineCustomStringVariable("rdb_sqltrc.log_directory",
                               "Directory for rdb_sqltrc trace files.",
                               NULL,
                               &rdb_log_dir,
                               "trc",
                               PGC_SIGHUP,
                               0,
                               NULL, NULL, NULL);

    DefineCustomIntVariable("rdb_sqltrc.log_min_duration_ms",
                            "Only log statements whose total duration is >= this value.",
                            NULL,
                            &rdb_log_min_duration_ms,
                            0, 0, 3600000,
                            PGC_SUSET,
                            0,
                            NULL, NULL, NULL);

    DefineCustomBoolVariable("rdb_sqltrc.log_query_text", NULL, NULL,
                             &rdb_log_query_text, true, PGC_SUSET, 0,
                             NULL, NULL, NULL);

    DefineCustomBoolVariable("rdb_sqltrc.log_query_tree", NULL, NULL,
                             &rdb_log_query_tree, true, PGC_SUSET, 0,
                             NULL, NULL, NULL);

    DefineCustomBoolVariable("rdb_sqltrc.log_plan_tree", NULL, NULL,
                             &rdb_log_plan_tree, true, PGC_SUSET, 0,
                             NULL, NULL, NULL);

    DefineCustomBoolVariable("rdb_sqltrc.log_executor", NULL, NULL,
                             &rdb_log_executor, true, PGC_SUSET, 0,
                             NULL, NULL, NULL);

    DefineCustomBoolVariable("rdb_sqltrc.instrument", NULL, NULL,
                             &rdb_instrument, true, PGC_SUSET, 0,
                             NULL, NULL, NULL);

    /* chain hooks */
    prev_post_parse_analyze_hook = post_parse_analyze_hook;
    post_parse_analyze_hook = rdb_post_parse_analyze;

    prev_planner_hook = planner_hook;
    planner_hook = rdb_planner;

    prev_ExecutorStart = ExecutorStart_hook;
    ExecutorStart_hook = rdb_ExecutorStart;

    prev_ExecutorRun = ExecutorRun_hook;
    ExecutorRun_hook = rdb_ExecutorRun;

    prev_ExecutorFinish = ExecutorFinish_hook;
    ExecutorFinish_hook = rdb_ExecutorFinish;

    prev_ExecutorEnd = ExecutorEnd_hook;
    ExecutorEnd_hook = rdb_ExecutorEnd;

    prev_ProcessUtility = ProcessUtility_hook;
    ProcessUtility_hook = rdb_ProcessUtility;

    //before_shmem_exit((shmem_exit_callback) trace_close, 0);
    before_shmem_exit(rdb_trace_exit, (Datum) 0);

}

void
_PG_fini(void)
{
    post_parse_analyze_hook = prev_post_parse_analyze_hook;
    planner_hook = prev_planner_hook;
    ExecutorStart_hook = prev_ExecutorStart;
    ExecutorRun_hook = prev_ExecutorRun;
    ExecutorFinish_hook = prev_ExecutorFinish;
    ExecutorEnd_hook = prev_ExecutorEnd;
    ProcessUtility_hook = prev_ProcessUtility;

    trace_close();
}

