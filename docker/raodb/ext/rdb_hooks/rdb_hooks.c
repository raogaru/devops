/*
 * rao_hooks.c
 *
 * PostgreSQL 16+ hook coverage extension
 * - One GUC per hook (enable / disable)
 * - No backward compatibility clutter
 * - Chain-safe
 * - Logging only (framework skeleton)
 */

#include "postgres.h"
#include "fmgr.h"

PG_MODULE_MAGIC;

/* core */
#include "miscadmin.h"
#include "utils/guc.h"
#include "utils/elog.h"

/* parse / planner */
#include "parser/analyze.h"
#include "nodes/queryjumble.h"
#include "optimizer/planner.h"
#include "optimizer/paths.h"
#include "optimizer/pathnode.h"
#include "optimizer/plancat.h"

/* executor */
#include "executor/executor.h"

/* utility */
#include "tcop/utility.h"
#include "tcop/cmdtag.h"

/* explain */
#include "commands/explain.h"

/* shmem */
#include "storage/ipc.h"
#include "storage/shmem.h"

/* auth */
#include "libpq/auth.h"
#include "libpq/crypt.h"

/* object / rls */
#include "catalog/objectaccess.h"
#include "rewrite/rowsecurity.h"

/* fmgr */
#include "fmgr.h"

/* auth */
#include "commands/user.h"


// --------------------------------------------------------------------------------
// typedefs

typedef struct VariableStatData VariableStatData;


/* emit_log */
typedef void (*emit_log_hook_type)(ErrorData *edata);

/* authentication */
typedef void (*ClientAuthentication_hook_type)(Port *port, int status);

/*typedef void (*check_password_hook_type)(
    char *username,
    char *password,
    PasswordType password_type,
    Datum validuntil_time,
    bool validuntil_null
);
*/

/* optimizer statistics hooks */
typedef int32 (*get_attavgwidth_hook_type)(
    Oid relid,
    AttrNumber attnum
);

typedef bool (*get_index_stats_hook_type)(
    PlannerInfo *root,
    Oid indexOid,
    AttrNumber indexattnum,
    float8 *varCorrelation,
    float8 *varSelectivity,
    float8 *varDistinct
);

typedef void (*get_relation_info_hook_type)(
    PlannerInfo *root,
    Oid relationObjectId,
    bool inhparent,
    RelOptInfo *rel
);

typedef bool (*get_relation_stats_hook_type)(
    PlannerInfo *root,
    RangeTblEntry *rte,
    AttrNumber attnum,
    VariableStatData *vardata
);

/* planner / path hooks (sometimes not typedef'd) 
typedef PlannedStmt *(*planner_hook_type)(
    Query *parse,
    const char *query_string,
    int cursorOptions,
    ParamListInfo params
);
*/

typedef RelOptInfo *(*join_search_hook_type)(
    PlannerInfo *root,
    int levels_needed,
    List *initial_rels
);

typedef void (*set_rel_pathlist_hook_type)(
    PlannerInfo *root,
    RelOptInfo *rel,
    Index rti,
    RangeTblEntry *rte
);

typedef void (*set_join_pathlist_hook_type)(
    PlannerInfo *root,
    RelOptInfo *joinrel,
    RelOptInfo *outerrel,
    RelOptInfo *innerrel,
    JoinType jointype,
    JoinPathExtraData *extra
);

typedef void (*create_upper_paths_hook_type)(
    PlannerInfo *root,
    UpperRelationKind stage,
    RelOptInfo *input_rel,
    RelOptInfo *output_rel,
    void *extra
);

/* ============================================================
 *                      GUC VARIABLES
 * ============================================================ */

/* master */
static bool rao_hooks_enabled = true;

/* per-hook */
static bool rao_emit_log = false;
static bool rao_shmem_request = true;
static bool rao_shmem_startup = true;
static bool rao_shmem_shutdown = true;

static bool rao_check_password = true;
static bool rao_client_auth = true;

static bool rao_exec_check_perms = true;
static bool rao_object_access = true;

static bool rao_rls_permissive = true;
static bool rao_rls_restrictive = true;

static bool rao_needs_fmgr = true;
static bool rao_fmgr = true;

static bool rao_explain = true;

static bool rao_get_attavgwidth = true;
static bool rao_get_index_stats = true;
static bool rao_get_relation_info = true;
static bool rao_get_relation_stats = true;

static bool rao_planner = true;
static bool rao_join_search = true;
static bool rao_set_rel_pathlist = true;
static bool rao_set_join_pathlist = true;
static bool rao_create_upper_paths = true;

static bool rao_post_parse = true;
static bool rao_exec_start = true;
static bool rao_exec_run = true;
static bool rao_exec_finish = true;
static bool rao_exec_end = true;
static bool rao_process_utility = true;

/* emit_log recursion guard */
static bool in_emit_log = false;

/* ============================================================
 *                     PREVIOUS HOOKS
 * ============================================================ */

static emit_log_hook_type emit_log_prev = NULL;
static shmem_request_hook_type shmem_request_prev = NULL;
static shmem_startup_hook_type shmem_startup_prev = NULL;

static check_password_hook_type check_password_prev = NULL;
static ClientAuthentication_hook_type client_auth_prev = NULL;

static ExecutorCheckPerms_hook_type exec_perms_prev = NULL;
static object_access_hook_type object_access_prev = NULL;

static row_security_policy_hook_type rls_perm_prev = NULL;
static row_security_policy_hook_type rls_rest_prev = NULL;

static needs_fmgr_hook_type needs_fmgr_prev = NULL;
static fmgr_hook_type fmgr_prev = NULL;

static ExplainOneQuery_hook_type explain_prev = NULL;

static get_attavgwidth_hook_type attavg_prev = NULL;
static get_index_stats_hook_type index_stats_prev = NULL;
static get_relation_info_hook_type rel_info_prev = NULL;
static get_relation_stats_hook_type rel_stats_prev = NULL;

static planner_hook_type planner_prev = NULL;
static join_search_hook_type join_search_prev = NULL;
static set_rel_pathlist_hook_type set_rel_prev = NULL;
static set_join_pathlist_hook_type set_join_prev = NULL;
static create_upper_paths_hook_type upper_prev = NULL;

static post_parse_analyze_hook_type post_parse_prev = NULL;
static ExecutorStart_hook_type exec_start_prev = NULL;
static ExecutorRun_hook_type exec_run_prev = NULL;
static ExecutorFinish_hook_type exec_finish_prev = NULL;
static ExecutorEnd_hook_type exec_end_prev = NULL;
static ProcessUtility_hook_type utility_prev = NULL;

/* ============================================================
 *                        HELPERS
 * ============================================================ */

static inline void
rao_log(const char *hook)
{
    elog(LOG, "rao_%s", hook);
}

/* ============================================================
 *                         HOOKS
 * ============================================================ */

/* ---------- emit_log ---------- */
static void
rao_emit_log_hook(ErrorData *edata)
{
    if (rao_hooks_enabled && rao_emit_log && !in_emit_log)
    {
        in_emit_log = true;
        /* never elog() here */
        in_emit_log = false;
    }

    if (emit_log_prev)
        emit_log_prev(edata);
}

/* ---------- shmem ---------- */
static void
rao_shmem_request_hook(void)
{
    if (rao_hooks_enabled && rao_shmem_request)
        rao_log("shmem_request_hook");

    if (shmem_request_prev)
        shmem_request_prev();
}

static void
rao_shmem_shutdown_cb(int code, Datum arg)
{
    if (rao_hooks_enabled && rao_shmem_shutdown)
        rao_log("shmem_shutdown_hook");
}

static void
rao_shmem_startup_hook(void)
{
    if (shmem_startup_prev)
        shmem_startup_prev();

    if (rao_hooks_enabled && rao_shmem_startup)
        rao_log("shmem_startup_hook");

    on_shmem_exit(rao_shmem_shutdown_cb, (Datum) 0);
}

/* ---------- auth ---------- */
static void
rao_check_password_hook(char *user, char *pass, PasswordType type,
                        Datum validuntil, bool isnull)
{
    if (rao_hooks_enabled && rao_check_password)
        rao_log("check_password_hook");

    if (check_password_prev)
        check_password_prev(user, pass, type, validuntil, isnull);
}

static void
rao_client_auth_hook(Port *port, int status)
{
    if (rao_hooks_enabled && rao_client_auth)
        rao_log("ClientAuthentication_hook");

    if (client_auth_prev)
        client_auth_prev(port, status);
}

/* ---------- executor perms ---------- */
static bool
rao_exec_perms_hook(List *rt, List *perms, bool ereport_on_violation)
{
    if (rao_hooks_enabled && rao_exec_check_perms)
        rao_log("ExecutorCheckPerms_hook");

    if (exec_perms_prev)
        return exec_perms_prev(rt, perms, ereport_on_violation);

    return true;
}

/* ---------- object access ---------- */
static void
rao_object_access_hook(ObjectAccessType access, Oid classId,
                       Oid objectId, int subId, void *arg)
{
    if (rao_hooks_enabled && rao_object_access)
        rao_log("object_access_hook");

    if (object_access_prev)
        object_access_prev(access, classId, objectId, subId, arg);
}

/* ---------- row security ---------- */
static List *
rao_rls_perm_hook(CmdType cmdtype, Relation relation)
{
    if (rao_hooks_enabled && rao_rls_permissive)
        rao_log("row_security_policy_hook_permissive");

    if (rls_perm_prev)
        return rls_perm_prev(cmdtype, relation);

    return NIL;
}

static List *
rao_rls_rest_hook(CmdType cmdtype, Relation relation)
{
    if (rao_hooks_enabled && rao_rls_restrictive)
        rao_log("row_security_policy_hook_restrictive");

    if (rls_rest_prev)
        return rls_rest_prev(cmdtype, relation);

    return NIL;
}



/* ---------- fmgr ---------- */
static bool
rao_needs_fmgr_hook(Oid fn)
{
    if (rao_hooks_enabled && rao_needs_fmgr)
        rao_log("needs_fmgr_hook");

    if (needs_fmgr_prev)
        return needs_fmgr_prev(fn);

    return true;
}

static void
rao_fmgr_hook(FmgrHookEventType event, FmgrInfo *flinfo, Datum *arg)
{
    if (rao_hooks_enabled && rao_fmgr)
        rao_log("fmgr_hook");

    if (fmgr_prev)
        fmgr_prev(event, flinfo, arg);
}

/* ---------- explain ---------- */
static void
rao_explain_hook(Query *query, int cursorOptions, IntoClause *into,
                 ExplainState *es, const char *queryString,
                 ParamListInfo params, QueryEnvironment *env)
{
    if (rao_hooks_enabled && rao_explain)
        rao_log("ExplainOneQuery_hook");

    if (explain_prev)
        explain_prev(query, cursorOptions, into, es, queryString, params, env);
    else
        standard_ExplainOneQuery(query, cursorOptions, into, es, queryString, params, env);
}

/* ---------- planner ---------- */
static PlannedStmt *
rao_planner_hook(Query *parse,
                 const char *query_string,
                 int cursorOptions,
                 ParamListInfo params,
                 QueryEnvironment *queryEnv)
{
    if (rao_hooks_enabled && rao_planner)
        rao_log("planner_hook");

    if (planner_prev)
        return planner_prev(parse,
                            query_string,
                            cursorOptions,
                            params,
                            queryEnv);

    return standard_planner(parse,
                            query_string,
                            cursorOptions,
                            params,
                            queryEnv);
}


/* ---------- parse ---------- */
static void
rao_post_parse_hook(ParseState *pstate, Query *query, JumbleState *jstate)
{
    if (rao_hooks_enabled && rao_post_parse)
        rao_log("post_parse_analyze_hook");

    if (post_parse_prev)
        post_parse_prev(pstate, query, jstate);
}

/* ---------- executor ---------- */
static void
rao_exec_start_hook(QueryDesc *qd, int eflags)
{
    if (rao_hooks_enabled && rao_exec_start)
        rao_log("ExecutorStart_hook");

    if (exec_start_prev)
        exec_start_prev(qd, eflags);
    else
        standard_ExecutorStart(qd, eflags);
}

static void
rao_exec_run_hook(QueryDesc *qd,
                  ScanDirection direction,
                  uint64 count)
{
    if (rao_hooks_enabled && rao_exec_run)
        rao_log("ExecutorRun_hook");

    if (exec_run_prev)
        exec_run_prev(qd, direction, count);
    else
        standard_ExecutorRun(qd, direction, count);
}

static void
rao_exec_finish_hook(QueryDesc *qd)
{
    if (rao_hooks_enabled && rao_exec_finish)
        rao_log("ExecutorFinish_hook");

    if (exec_finish_prev)
        exec_finish_prev(qd);
    else
        standard_ExecutorFinish(qd);
}

static void
rao_exec_end_hook(QueryDesc *qd)
{
    if (rao_hooks_enabled && rao_exec_end)
        rao_log("ExecutorEnd_hook");

    if (exec_end_prev)
        exec_end_prev(qd);
    else
        standard_ExecutorEnd(qd);
}

/* ---------- utility ---------- */
static void
rao_utility_hook(PlannedStmt *pstmt, const char *qs, bool readOnly,
                 ProcessUtilityContext ctx, ParamListInfo params,
                 QueryEnvironment *env, DestReceiver *dest, QueryCompletion *qc)
{
    if (rao_hooks_enabled && rao_process_utility)
        rao_log("ProcessUtility_hook");

    if (utility_prev)
        utility_prev(pstmt, qs, readOnly, ctx, params, env, dest, qc);
    else
        standard_ProcessUtility(pstmt, qs, readOnly, ctx, params, env, dest, qc);
}

/* ============================================================
 *                         _PG_init
 * ============================================================ */

void
_PG_init(void)
{
    /* master */
    DefineCustomBoolVariable("rdb_hooks.enabled", "Master enable",
                             NULL, &rao_hooks_enabled, true,
                             PGC_SUSET, 0, NULL, NULL, NULL);

    /* per-hook GUCs (pattern repeated) */
#define RDB_GUC(name, var, def) \
    DefineCustomBoolVariable("rdb_hooks." name, NULL, NULL, \
                             &var, def, PGC_SUSET, 0, NULL, NULL, NULL)

    RDB_GUC("emit_log", rao_emit_log, false);
    RDB_GUC("shmem_request", rao_shmem_request, true);
    RDB_GUC("shmem_startup", rao_shmem_startup, true);
    RDB_GUC("shmem_shutdown", rao_shmem_shutdown, true);
    RDB_GUC("check_password", rao_check_password, true);
    RDB_GUC("client_auth", rao_client_auth, true);
    RDB_GUC("exec_check_perms", rao_exec_check_perms, true);
    RDB_GUC("object_access", rao_object_access, true);
    RDB_GUC("rls_permissive", rao_rls_permissive, true);
    RDB_GUC("rls_restrictive", rao_rls_restrictive, true);
    RDB_GUC("needs_fmgr", rao_needs_fmgr, true);
    RDB_GUC("fmgr", rao_fmgr, true);
    RDB_GUC("explain", rao_explain, true);
    RDB_GUC("planner", rao_planner, true);
    RDB_GUC("post_parse", rao_post_parse, true);
    RDB_GUC("exec_start", rao_exec_start, true);
    RDB_GUC("exec_run", rao_exec_run, true);
    RDB_GUC("exec_finish", rao_exec_finish, true);
    RDB_GUC("exec_end", rao_exec_end, true);
    RDB_GUC("process_utility", rao_process_utility, true);

#undef RDB_GUC

    /* ---- hook registration ---- */

    emit_log_prev = emit_log_hook;
    emit_log_hook = rao_emit_log_hook;

    shmem_request_prev = shmem_request_hook;
    shmem_request_hook = rao_shmem_request_hook;

    shmem_startup_prev = shmem_startup_hook;
    shmem_startup_hook = rao_shmem_startup_hook;

    check_password_prev = check_password_hook;
    check_password_hook = rao_check_password_hook;

    client_auth_prev = ClientAuthentication_hook;
    ClientAuthentication_hook = rao_client_auth_hook;

    exec_perms_prev = ExecutorCheckPerms_hook;
    ExecutorCheckPerms_hook = rao_exec_perms_hook;

    object_access_prev = object_access_hook;
    object_access_hook = rao_object_access_hook;

    rls_perm_prev = row_security_policy_hook_permissive;
    row_security_policy_hook_permissive = rao_rls_perm_hook;

    rls_rest_prev = row_security_policy_hook_restrictive;
    row_security_policy_hook_restrictive = rao_rls_rest_hook;

    needs_fmgr_prev = needs_fmgr_hook;
    needs_fmgr_hook = rao_needs_fmgr_hook;

    fmgr_prev = fmgr_hook;
    fmgr_hook = rao_fmgr_hook;

    explain_prev = ExplainOneQuery_hook;
    ExplainOneQuery_hook = rao_explain_hook;

    planner_prev = planner_hook;
    planner_hook = rao_planner_hook;

    post_parse_prev = post_parse_analyze_hook;
    post_parse_analyze_hook = rao_post_parse_hook;

    exec_start_prev = ExecutorStart_hook;
    ExecutorStart_hook = rao_exec_start_hook;

    exec_run_prev = ExecutorRun_hook;
    ExecutorRun_hook = rao_exec_run_hook;

    exec_finish_prev = ExecutorFinish_hook;
    ExecutorFinish_hook = rao_exec_finish_hook;

    exec_end_prev = ExecutorEnd_hook;
    ExecutorEnd_hook = rao_exec_end_hook;

    utility_prev = ProcessUtility_hook;
    ProcessUtility_hook = rao_utility_hook;
}

