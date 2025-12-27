/*------------------------------------------------------------------------------
 * rds_audit.c
 * An audit logging extension for PostgreSQL. 
 *------------------------------------------------------------------------------
 */
#include "postgres.h"
#include "storage/fd.h"
#include <time.h>
#include <unistd.h>
#include "utils/guc.h"
#include "access/htup_details.h"
#include "access/parallel.h"
#include "access/sysattr.h"
#include "access/xact.h"
#include "access/relation.h"
#include "catalog/catalog.h"
#include "catalog/objectaccess.h"
#include "catalog/pg_class.h"
#include "catalog/namespace.h"
#include "commands/dbcommands.h"
#include "commands/extension.h"
#include "catalog/pg_proc.h"
#include "commands/event_trigger.h"
#include "executor/executor.h"
#include "executor/spi.h"
#include "miscadmin.h"
#include "libpq/auth.h"
#include "nodes/nodes.h"
#include "nodes/params.h"
#include "parser/parse_relation.h"
#include "tcop/utility.h"
#include "tcop/deparse_utility.h"
#include "utils/acl.h"
#include "utils/builtins.h"
#include "utils/guc.h"
#include "utils/lsyscache.h"
#include "utils/memutils.h"
#include "utils/rel.h"
#include "utils/syscache.h"
#include "utils/timestamp.h"
#include "utils/varlena.h"
#include "executor/spi.h"

PG_MODULE_MAGIC_EXT(.name = "rdb_audit", .version = "1.0");

void _PG_init(void);

PG_FUNCTION_INFO_V1(rdb_audit_ddl_command_end);
PG_FUNCTION_INFO_V1(rdb_audit_sql_drop);

// --------------------------------------------------------------------------------
// Log Classes - READ, WRITE, DDL, FUNCTION calls, etc.
#define LOG_DDL (1 << 0) 	/* CREATE/DROP/ALTER objects */
#define LOG_FUNCTION (1 << 1) 	/* Functions and DO blocks */
#define LOG_MISC (1 << 2) 	/* Statements not covered */
#define LOG_READ (1 << 3) 	/* SELECTs */
#define LOG_ROLE (1 << 4) 	/* GRANT/REVOKE, CREATE/ALTER/DROP ROLE */
#define LOG_WRITE (1 << 5) 	/* INSERT, UPDATE, DELETE, TRUNCATE */
#define LOG_MISC_SET (1 << 6) 	/* SET ... */
#define LOG_NONE 0 		/* nothing */
#define LOG_ALL (0xFFFFFFFF) 	/* All */
// --------------------------------------------------------------------------------
#define CLASS_DDL "DDL"
#define CLASS_FUNCTION "FUNCTION"
#define CLASS_MISC "MISC"
#define CLASS_MISC_SET "MISC_SET"
#define CLASS_READ "READ"
#define CLASS_ROLE "ROLE"
#define CLASS_WRITE "WRITE"
#define CLASS_NONE "NONE"
#define CLASS_ALL "ALL"
#define AUDIT_TYPE_OBJECT "OBJECT"
#define AUDIT_TYPE_SESSION "SESSION"
#define OBJECT_TYPE_TABLE "TABLE"
#define OBJECT_TYPE_INDEX "INDEX"
#define OBJECT_TYPE_SEQUENCE "SEQUENCE"
#define OBJECT_TYPE_TOASTVALUE "TOAST TABLE"
#define OBJECT_TYPE_VIEW "VIEW"
#define OBJECT_TYPE_MATVIEW "MATERIALIZED VIEW"
#define OBJECT_TYPE_COMPOSITE_TYPE "COMPOSITE TYPE"
#define OBJECT_TYPE_FOREIGN_TABLE "FOREIGN TABLE"
#define OBJECT_TYPE_FUNCTION "FUNCTION"
#define OBJECT_TYPE_UNKNOWN "UNKNOWN"
#define TOKEN_PASSWORD "password"
#define TOKEN_REDACTED "<REDACTED>"
// --------------------------------------------------------------------------------
#define RDB_AUD_STR_MAX_LEN 4096
#define RDB_AUD_SQL_TEXT_LEN 2048
#define RDB_AUD_SQL_BIND_LEN 1024
#define TIME_STR_LEN 20
// --------------------------------------------------------------------------------
// GUC variables
static bool auditLogCatalog = true;
static bool auditLogClient = false;
static char * auditLogLevelString = NULL;
static int auditLogLevel = LOG;
static bool auditLogParameter = false;
static bool auditLogRelation = false;
static int auditLogParameterMaxSize = 0;
static bool auditLogRows = false;
static bool auditLogStatement = true;
static bool auditLogStatementOnce = false;
static char * auditRole = NULL;
static char * auditLogFormat = "default";
static char * auditLogDirectory = "log";
// --------------------------------------------------------------------------------
char aud_message_str[RDB_AUD_STR_MAX_LEN];
char sql_text[RDB_AUD_SQL_TEXT_LEN];
char sql_bind[RDB_AUD_SQL_BIND_LEN];
char ts[TIME_STR_LEN];
static char * auditLogScope = NULL;
static int auditLogBitmap = LOG_NONE;
// --------------------------------------------------------------------------------
/* AuditEvent represents an operation that potentially affects a single object.
 * If a statement affects multiple objects then multiple AuditEvents are created to represent them.
 */
typedef struct {
    int64 statementId; 		/* Simple counter */
    int64 substatementId; 	/* Simple counter */
    LogStmtLevel logStmtLevel; 	/* From GetCommandLogLevel when possible, generated when not. */
    NodeTag commandTag; 	/* same here */
    int command; 		/* same here */
    const char * objectType; 	/* From event trigger when possible, generated when not. */
    char * objectName; 		/* Fully qualified object identification */
    const char * commandText; 	/* sourceText / queryString */
    int commandLen; 		/* Length of commandText */
    ParamListInfo paramList; 	/* QueryDesc/ProcessUtility parameters */
    bool granted; 		/* Audit role has object permissions? */
    bool logged; 		/* Track if we have logged this event, used post-ProcessUtility to make sure we log */
    bool statementLogged; 	/* Track if we have logged the statement */
    int64 rows; 		/* Track rows processed by the statement */
    MemoryContext queryContext; /* Context for query tracking rows */
    Oid auditOid; 		/* Role running query tracking rows  */
    List * rangeTabls; 		/* Tables in query tracking rows */
    List * permInfos; /* Permission info rows for each table involved in the query */
}
AuditEvent;
// --------------------------------------------------------------------------------
// A simple FIFO queue to keep track of the current stack of audit events.
typedef struct AuditEventStackItem {
    struct AuditEventStackItem * next;
    AuditEvent auditEvent;
    int64 stackId;
    MemoryContext contextAudit;
    MemoryContextCallback contextCallback;
}
AuditEventStackItem;
static AuditEventStackItem * auditEventStack = NULL;

static bool internalStatement = false; 	/* rdb_audit runs queries of its own. don't log its own queries */
static int64 statementTotal = 0;	/* Track running total for statements and substatements and whether or not */
static int64 substatementTotal = 0;
static int64 stackTotal = 0;
static bool statementLogged = false;

/*
 * Check that the stack is not empty for hooks that add data to an audit event
 * that was started by the ProcessUtility or ExecutorCheckPerms hooks.
 *
 * We are unable to continue in this case without losing an audit record. If the
 * caller is purposefully breaking the hook sequence then they will need to
 * disable auditing for the duration of the operation.
 */
#define STACK_NOT_EMPTY()\
if (auditEventStack == NULL)\
    elog(ERROR, "rdb_audit stack is empty");

// --------------------------------------------------------------------------------
void current_timestamp(char * buf, size_t buflen) {
    time_t now;
    struct tm tm_now;
    time( & now);
    localtime_r( & now, & tm_now);
    strftime(buf, buflen, "%Y-%m-%d-%H:%M:%S", & tm_now);
}
// --------------------------------------------------------------------------------
/*
 * Stack functions
 *
 * Audit events can go down to multiple levels so a stack is maintained to keep
 * track of them.
 */

/*
 * Respond to callbacks registered with MemoryContextRegisterResetCallback().
 * Removes the event(s) off the stack that have become obsolete once the
 * MemoryContext has been freed.  The callback should always be freeing the top
 * of the stack, but the code is tolerant of out-of-order callbacks.
 */
static void
stack_free(void * stackFree) {
    AuditEventStackItem * nextItem = auditEventStack;

    /* Only process if the stack contains items */
    while (nextItem != NULL) {
        /* Check if this item matches the item to be freed */
        if (nextItem == (AuditEventStackItem * ) stackFree) {
            /* Move top of stack to the item after the freed item */
            auditEventStack = nextItem -> next;

            /* If the stack is now empty */
            if (auditEventStack == NULL) {
                /*
                 * Reset internal statement to false.  Normally this will be
                 * reset but in case of an error it might be left set.
                 */
                internalStatement = false;

                /*
                 * Reset sub statement total so the next statement will start
                 * from 1.
                 */
                substatementTotal = 0;

                /*
                 * Reset statement logged so that next statement will be
                 * logged.
                 */
                statementLogged = false;
            }

            return;
        }

        nextItem = nextItem -> next;
    }
}
// --------------------------------------------------------------------------------
static void
rdbaud_log_to_daily_file(const char * msg) {
    char filename[MAXPGPATH];
    char datestr[16];
    time_t now;
    struct tm tm;
    int fd;

    if (auditLogDirectory == NULL || auditLogDirectory[0] == '\0') return;
    now = time(NULL);
    localtime_r( & now, & tm);
    strftime(datestr, sizeof(datestr), "%Y_%m_%d", & tm);
    snprintf(filename, sizeof(filename), "%s/rdb_audit_%s.log", auditLogDirectory, datestr);
    fd = OpenTransientFile(filename, O_WRONLY | O_CREAT | O_APPEND);
    if (fd < 0) return;
    write(fd, msg, strlen(msg));
    write(fd, "\n", 1);
    CloseTransientFile(fd);
}
// --------------------------------------------------------------------------------
/*
 * Push a new audit event onto the stack and create a new memory context to
 * store it.
 */
static AuditEventStackItem *
    stack_push() {
        MemoryContext contextAudit;
        MemoryContext contextOld;
        AuditEventStackItem * stackItem;

        /*
         * Create a new memory context to contain the stack item.  This will be
         * free'd on stack_pop, or by our callback when the parent context is
         * destroyed.
         */
        contextAudit = AllocSetContextCreate(CurrentMemoryContext, "rdb_audit stack context", ALLOCSET_DEFAULT_SIZES);

        /* Save the old context to switch back to at the end */
        contextOld = MemoryContextSwitchTo(contextAudit);

        /* Create our new stack item in our context */
        stackItem = palloc0(sizeof(AuditEventStackItem));
        stackItem -> contextAudit = contextAudit;
        stackItem -> stackId = ++stackTotal;

        // Setup a callback in case an error happens.  stack_free() will truncate the stack at this item.
        stackItem -> contextCallback.func = stack_free;
        stackItem -> contextCallback.arg = (void * ) stackItem;
        MemoryContextRegisterResetCallback(contextAudit, &
            stackItem -> contextCallback);

        /* Push new item onto the stack */
        stackItem -> next = auditEventStack;
        auditEventStack = stackItem;

        MemoryContextSwitchTo(contextOld);

        return stackItem;
    }
// --------------------------------------------------------------------------------
/*
 * Pop an audit event from the stack by deleting the memory context that
 * contains it.  The callback to stack_free() does the actual pop.
 */
static void
stack_pop(int64 stackId) {
    /* Make sure what we want to delete is at the top of the stack */
    if (auditEventStack != NULL && auditEventStack -> stackId == stackId)
        MemoryContextDelete(auditEventStack -> contextAudit);
    else
        elog(ERROR, "rdb_audit stack item "
            INT64_FORMAT " not found on top - cannot pop",
            stackId);
}
// --------------------------------------------------------------------------------
// Check that an item is on the stack.  If not, an error will be raised 
static void
stack_valid(int64 stackId) {
    AuditEventStackItem * nextItem = auditEventStack;
    while (nextItem != NULL && nextItem -> stackId != stackId) nextItem = nextItem -> next;
    if (nextItem == NULL)
        elog(ERROR, "rdb_audit stack item "
            INT64_FORMAT " not found - top of stack is "
            INT64_FORMAT "",
            stackId,
            auditEventStack == NULL ? (int64) - 1 : auditEventStack -> stackId);
}
// --------------------------------------------------------------------------------
// Find an item on the stack by the specified query memory context.
static AuditEventStackItem *
    stack_find_context(MemoryContext findContext) {
        AuditEventStackItem * nextItem = auditEventStack;
        while (nextItem != NULL && nextItem -> auditEvent.queryContext != findContext) nextItem = nextItem -> next;
        return nextItem;
}
// --------------------------------------------------------------------------------
// Set command text.
static void
command_text_set(AuditEvent * auditEvent, const char * commandText, int commandLoc, int commandLen) {
    /* If statements are being logged then set command text. */
    if (auditLogStatement) {
        char commandChr;

        /* If location is not -1 then offset. */
        if (commandLoc != -1) commandText += commandLoc;

        /* If len is zero then use the entire string. */
        if (commandLen == 0) commandLen = strlen(commandText);

        /* Trim leading whitespace.  */
        commandChr = * commandText;

        while (commandChr == ' ' || commandChr == '\t' || commandChr == '\n' || commandChr == '\r') {
            commandText++;
            commandLen--;
            commandChr = * commandText;
        }

        /* Trim trailing whitespace, semicolons since they */
        commandChr = * (commandText + commandLen - 1);

        while (commandLen > 0 &&
            (commandChr == ' ' || commandChr == ';' || commandChr == '\t' ||
                commandChr == '\n' || commandChr == '\r')) {
            commandLen--;
            commandChr = * (commandText + commandLen - 1);
        }

        /* Assign final command text and length. */
        auditEvent -> commandText = commandText;
        auditEvent -> commandLen = commandLen;
    }
}

// --------------------------------------------------------------------------------

/*
 * Takes an AuditEvent, classifies it, then logs it if appropriate.
 *
 * Logging is decided based on if the statement is in one of the classes being
 * logged or if an object used has been marked for auditing.
 *
 * Objects are marked for auditing by the auditor role being granted access
 * to the object.  The kind of access (INSERT, UPDATE, etc) is also considered
 * and logging is only performed when the kind of access matches the granted
 * right on the object.
 *
 * This will need to be updated if new kinds of GRANTs are added.
 */
static void
log_audit_event(AuditEventStackItem * stackItem) {
    /* By default, put everything in the MISC class. */
    int class = LOG_MISC;
    const char * className = CLASS_MISC;
    MemoryContext contextOld;

    /*
     * Skip logging script statements if an extension is currently being created
     * or altered. PostgreSQL reports the statement text for each statement in
     * the script as the entire script text, which can blow up the logs. The
     * create/alter statement will still be logged.
     *
     * Since a superuser is responsible for determining which extensions are
     * available, and in most cases installing them, it should not be necessary
     * to log each statement in the script.
     */
    if (creating_extension)
        return;

    /* If this event has already been logged don't log it again */
    if (stackItem -> auditEvent.logged)
        return;

    /* Classify the statement using log stmt level and the command tag */
    switch (stackItem -> auditEvent.logStmtLevel) {
        /* All mods go in WRITE class, except EXECUTE */
    case LOGSTMT_MOD:
        className = CLASS_WRITE;
        class = LOG_WRITE;

        switch (stackItem -> auditEvent.commandTag) {
            /* Currently, only EXECUTE is different */
        case T_ExecuteStmt:
            className = CLASS_MISC;
            class = LOG_MISC;
            break;
        default:
            break;
        }
        break;

        /* These are DDL, unless they are ROLE */
    case LOGSTMT_DDL:
        className = CLASS_DDL;
        class = LOG_DDL;

        /* Identify role statements */
        switch (stackItem -> auditEvent.commandTag) {
            /* In the case of create and alter role or user mapping redact all text in the
             * command after the password token for security.  This doesn't
             * cover all possible cases where passwords can be leaked but
             * should take care of the most common usage.
             */
        case T_CreateRoleStmt:
        case T_AlterRoleStmt:
        case T_CreateUserMappingStmt:
        case T_AlterUserMappingStmt:

            if (stackItem -> auditEvent.commandText != NULL) {
                char * commandStr;
                char * passwordToken;
                int i;
                int passwordPos;

                /* Copy the command string and convert to lower case */
                commandStr = pnstrdup(stackItem -> auditEvent.commandText,
                    stackItem -> auditEvent.commandLen);

                for (i = 0; commandStr[i]; i++)
                    commandStr[i] =
                    (char) pg_tolower((unsigned char) commandStr[i]);

                /* Find index of password token */
                passwordToken = strstr(commandStr, TOKEN_PASSWORD);

                if (passwordToken != NULL) {
                    /* Copy command string up to password token */
                    passwordPos = (passwordToken - commandStr) +
                        strlen(TOKEN_PASSWORD);

                    pfree(commandStr);
                    commandStr = palloc(passwordPos + 1 +
                        strlen(TOKEN_REDACTED) + 1);

                    strncpy(commandStr,
                        stackItem -> auditEvent.commandText,
                        passwordPos);

                    /* And append redacted token */
                    commandStr[passwordPos] = ' ';

                    strcpy(commandStr + passwordPos + 1, TOKEN_REDACTED);

                    /* Assign new command string */
                    stackItem -> auditEvent.commandText = commandStr;
                    stackItem -> auditEvent.commandLen = strlen(commandStr);
                } else
                    pfree(commandStr);
            }

            /* Fall through */

            /* Classify role statements */
        case T_GrantStmt:
        case T_GrantRoleStmt:
        case T_DropRoleStmt:
        case T_AlterRoleSetStmt:
        case T_AlterDefaultPrivilegesStmt:
            className = CLASS_ROLE;
            class = LOG_ROLE;
            break;

            /*
             * Rename and Drop are general and therefore we have to do
             * an additional check against the command string to see
             * if they are role or regular DDL.
             */
        case T_RenameStmt:
        case T_DropStmt:
            if (stackItem -> auditEvent.command == CMDTAG_ALTER_ROLE ||
                stackItem -> auditEvent.command == CMDTAG_DROP_ROLE) {
                className = CLASS_ROLE;
                class = LOG_ROLE;
            }
            break;

        default:
            break;
        }
        break;

        /* Classify the rest */
    case LOGSTMT_ALL:
        switch (stackItem -> auditEvent.commandTag) {
            /* READ statements */
        case T_CopyStmt:
        case T_DeclareCursorStmt:
        case T_SelectStmt:
        case T_PrepareStmt:
        case T_PlannedStmt:
            className = CLASS_READ;
            class = LOG_READ;
            break;

            /* FUNCTION statements */
        case T_DoStmt:
            className = CLASS_FUNCTION;
            class = LOG_FUNCTION;
            break;

            /*
             * SET statements reported as MISC but filtered by MISC_SET
             * flags to maintain existing functionality.
             */
        case T_VariableSetStmt:
            className = CLASS_MISC;
            class = LOG_MISC_SET;
            break;

        default:
            break;
        }
        break;

    case LOGSTMT_NONE:
        break;
    }

    /*
     * Only log the statement if:
     *
     * 1. The object was selected for audit logging (granted), or
     * 2. The statement belongs to a class that is being logged
     *
     * If neither of these is true, return.
     */
    if (!stackItem -> auditEvent.granted && !(auditLogBitmap & class))
        return;

    /*
     * Use audit memory context in case something is not free'd while
     * appending strings and parameters.
     */
    contextOld = MemoryContextSwitchTo(stackItem -> contextAudit);

    /* Set statement and substatement IDs */
    if (stackItem -> auditEvent.statementId == 0) {
        /* If nothing has been logged yet then create a new statement Id */
        if (!statementLogged) {
            statementTotal++;
            statementLogged = true;
        }

        stackItem -> auditEvent.statementId = statementTotal;
        stackItem -> auditEvent.substatementId = ++substatementTotal;
    }

    /*
     * Create the audit substring
     *
     * The type-of-audit-log and statement/substatement ID are handled below,
     * this string is everything else.
     */

    /*
     * If auditLogStatementOnce is true, then only log the statement and
     * parameters if they have not already been logged for this substatement.
     */
    if (auditLogStatement && !(stackItem -> auditEvent.statementLogged && auditLogStatementOnce)) {
        /* Log the command. */
        snprintf(sql_text, RDB_AUD_SQL_TEXT_LEN, "%s",
            pnstrdup(stackItem -> auditEvent.commandText, stackItem -> auditEvent.commandLen));

        /* Handle parameter logging, if enabled. */
        if (auditLogParameter) {
            int paramIdx;
            int numParams;
            //StringInfoData paramStrResult;
            ParamListInfo paramList = stackItem -> auditEvent.paramList;

            numParams = paramList == NULL ? 0 : paramList -> numParams;

            /* Create the param substring */
            //initStringInfo( & paramStrResult);
	    sql_bind[0] = '\0';

            /* Iterate through all params */
            for (paramIdx = 0; paramList != NULL && paramIdx < numParams; paramIdx++) {
                ParamExternData * prm = & paramList -> params[paramIdx];
                Oid typeOutput;
                bool typeIsVarLena;

                /* Add a comma for each param */
                if (paramIdx != 0)  {
			//appendStringInfoCharMacro( & paramStrResult, ',');
			strcat(sql_bind,",");
		}

                /* Skip if null or if oid is invalid */
                if (prm -> isnull || !OidIsValid(prm -> ptype))
                    continue;

                /*
                 * Append the param, suppressing long params if the appropriate
                 * GUC is set.
                 */
                getTypeOutputInfo(prm -> ptype, & typeOutput, & typeIsVarLena);

                if (auditLogParameterMaxSize > 0 &&
                    typeIsVarLena &&
                    VARSIZE_ANY_EXHDR(prm -> value) > auditLogParameterMaxSize) {
		    strcat(sql_bind,"<long param suppressed>");
                } else {
                    char * paramStr = OidOutputFunctionCall(typeOutput, prm -> value);
		    strcat(sql_bind,paramStr);
                    pfree(paramStr);
                }
            }

            if (numParams == 0) {
                snprintf(sql_bind, RDB_AUD_SQL_BIND_LEN, "<none>");
            } 
	    /* else {
                snprintf(sql_bind, RDB_AUD_SQL_BIND_LEN, "%s", paramStrResult.data);
            } */

        } else {
            snprintf(sql_bind, RDB_AUD_SQL_BIND_LEN, "<not logged>");
        }

        stackItem -> auditEvent.statementLogged = true;
    }
    /* we were asked to not log it */
    else if (!auditLogStatement) {
        snprintf(sql_text, RDB_AUD_SQL_TEXT_LEN, "<not logged>");
        snprintf(sql_bind, RDB_AUD_SQL_BIND_LEN, "<not logged>");
    } else {
        snprintf(sql_text, RDB_AUD_SQL_TEXT_LEN, "<previously logged>");
        snprintf(sql_bind, RDB_AUD_SQL_BIND_LEN, "<previously logged>");
    }

    // get timestamp for logging
    current_timestamp(ts, sizeof(ts));

    // ----------------------------------------------------------------------
    if (strcmp(auditLogFormat, "table") == 0) {
            int ret;
            Datum values[16];
            bool nulls[16] = {false};

            if ((ret = SPI_connect()) != SPI_OK_CONNECT) elog(ERROR, "SPI_connect failed: %d", ret);

            const char insert_sql[300] =
                "INSERT INTO rdb_audit_log "
                "(pid, stmt_id, substmt_id, db_name, db_user, os_user, app_name, client_host, num_rows,"
                " audit_type, class, obj_type, obj_name, action_name, sql_text, sql_bind) "
                "VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15, $16)";

            Oid argtypes[16] = { INT4OID, TEXTOID, TEXTOID, TEXTOID, TEXTOID, TEXTOID, INT8OID, INT8OID, 
        	    		 INT8OID, TEXTOID, TEXTOID, TEXTOID, TEXTOID, TEXTOID, TEXTOID, TEXTOID };

            values[0]  = Int32GetDatum(MyProcPid);
            values[1] = Int64GetDatum(stackItem->auditEvent.statementId);
            values[2] = Int64GetDatum(stackItem->auditEvent.substatementId);
            values[3]  = CStringGetTextDatum((MyProcPort && MyProcPort->database_name) ? MyProcPort->database_name : " ");
            values[4]  = CStringGetTextDatum(GetUserNameFromId(GetUserId(), false));
            values[5]  = CStringGetTextDatum((MyProcPort && MyProcPort->user_name) ? MyProcPort->user_name : " ");
            values[6]  = CStringGetTextDatum((MyProcPort && MyProcPort->application_name)?MyProcPort->application_name:" ");
            values[7]  = CStringGetTextDatum((MyProcPort && MyProcPort->remote_host) ? MyProcPort->remote_host : " "),
            values[8] = Int64GetDatum(stackItem->auditEvent.rows);
            values[9]  = CStringGetTextDatum((stackItem->auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION));
            values[10]  = CStringGetTextDatum(className);
            values[11]  = CStringGetTextDatum(stackItem -> auditEvent.objectType); //object_type
            values[12]  = CStringGetTextDatum(stackItem -> auditEvent.objectName); //object_name
            values[13] = CStringGetTextDatum(GetCommandTagName(stackItem->auditEvent.command));
            values[14] = CStringGetTextDatum(sql_text);
            values[15] = CStringGetTextDatum(sql_bind);

             ret = SPI_execute_with_args(insert_sql, 16, argtypes, values, nulls, false, 0);

             if (ret != SPI_OK_INSERT) elog(ERROR, "SPI insert failed: %d", ret);

            SPI_finish();

        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN, "rdb_audit.log_format=%s", auditLogFormat);

    } // ----------------------------------------------------------------------
    else if (strcmp(auditLogFormat, "expand") == 0) {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN,
            "\nRDB-AUDIT: \nts=%s \npid=%d \nstmt_id=%ld \nsubstmt_id=%ld \ndb_name=%s \ndb_user=%s \nos_user=%s "
	    "\napp_name=%s \nclient_host=%s \nrows=%ld \naudit_type=%s "
            "\nclass=%s \nobj_type=%s \nobj_name=%s \naction_name=%s \nsql_text=%s \nsql_bind=%s",
            ts,
            MyProcPid,
            stackItem -> auditEvent.statementId,
            stackItem -> auditEvent.substatementId,
            (MyProcPort && MyProcPort -> database_name) ? MyProcPort -> database_name : "",
            GetUserNameFromId(GetUserId(), false),
            (MyProcPort && MyProcPort -> user_name) ? MyProcPort -> user_name : "",
            (MyProcPort && MyProcPort -> application_name) ? MyProcPort -> application_name : "",
            (MyProcPort && MyProcPort -> remote_host) ? MyProcPort -> remote_host : "",
            stackItem -> auditEvent.rows,
            (stackItem -> auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION),
            className,
            stackItem -> auditEvent.objectType,
            stackItem -> auditEvent.objectName,
            GetCommandTagName(stackItem -> auditEvent.command),
            sql_text,
            sql_bind
        );
    } // ----------------------------------------------------------------------
    else if (strcmp(auditLogFormat, "csv") == 0) {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN,
            "\nRDB-AUDIT,%s,%d,%ld,%ld,%s,%s,%s,%s,%s,%ld,%s,%s,%s,%s,%s,%s,%s",
            ts,
            MyProcPid,
            stackItem -> auditEvent.statementId,
            stackItem -> auditEvent.substatementId,
            (MyProcPort && MyProcPort -> database_name) ? MyProcPort -> database_name : "",
            GetUserNameFromId(GetUserId(), false),
            (MyProcPort && MyProcPort -> user_name) ? MyProcPort -> user_name : "",
            (MyProcPort && MyProcPort -> application_name) ? MyProcPort -> application_name : "",
            (MyProcPort && MyProcPort -> remote_host) ? MyProcPort -> remote_host : "",
            stackItem -> auditEvent.rows,
            (stackItem -> auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION),
            className,
            stackItem -> auditEvent.objectType,
            stackItem -> auditEvent.objectName,
            GetCommandTagName(stackItem -> auditEvent.command),
            sql_text,
            sql_bind
        );
    } // ----------------------------------------------------------------------
    else if (strcmp(auditLogFormat, "json") == 0) {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN,
            "{"
            "\"event\":\"RDB-AUDIT\","
            "\"ts\":\"%s\","
            "\"pid\":%d,"
            "\"stmt_id\":%ld,"
            "\"substmt_id\":%ld,"
            "\"db_name\":\"%s\","
            "\"db_user\":\"%s\","
            "\"os_user\":\"%s\","
            "\"app_name\":\"%s\","
            "\"client_host\":\"%s\","
            "\"rows\":%ld,"
            "\"audit_type\":\"%s\","
            "\"class\":\"%s\","
            "\"obj_type\":\"%s\","
            "\"obj_name\":\"%s\","
            "\"action_name\":\"%s\","
            "\"sql_text\":\"%s\","
            "\"sql_bind\":\"%s\""
            "}",
            ts,
            MyProcPid,
            stackItem -> auditEvent.statementId,
            stackItem -> auditEvent.substatementId,
            (MyProcPort && MyProcPort -> database_name) ? MyProcPort -> database_name : "",
            GetUserNameFromId(GetUserId(), false),
            (MyProcPort && MyProcPort -> user_name) ? MyProcPort -> user_name : "",
            (MyProcPort && MyProcPort -> application_name) ? MyProcPort -> application_name : "",
            (MyProcPort && MyProcPort -> remote_host) ? MyProcPort -> remote_host : "",
            stackItem -> auditEvent.rows,
            (stackItem -> auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION),
            className,
            stackItem -> auditEvent.objectType,
            stackItem -> auditEvent.objectName,
            GetCommandTagName(stackItem -> auditEvent.command),
            sql_text,
            sql_bind
        );
    } // ----------------------------------------------------------------------
    else if (strcmp(auditLogFormat, "xml") == 0) {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN,
            "<RDB_AUDIT>"
            "<ts>%s</ts>"
            "<pid>%d</pid>"
            "<stmt_id>%ld</stmt_id>"
            "<substmt_id>%ld</substmt_id>"
            "<db_name>%s</db_name>"
            "<db_user>%s</db_user>"
            "<os_user>%s</os_user>"
            "<app_name>%s</app_name>"
            "<client_host>%s</client_host>"
            "<rows>%ld</rows>"
            "<audit_type>%s</audit_type>"
            "<class>%s</class>"
            "<obj_type>%s</obj_type>"
            "<obj_name>%s</obj_name>"
            "<action_name>%s</action_name>"
            "<sql_text>%s</sql_text>"
            "<sql_bind>%s</sql_bind>"
            "</RDB_AUDIT>",
            ts,
            MyProcPid,
            stackItem -> auditEvent.statementId,
            stackItem -> auditEvent.substatementId,
            (MyProcPort && MyProcPort -> database_name) ? MyProcPort -> database_name : "",
            GetUserNameFromId(GetUserId(), false),
            (MyProcPort && MyProcPort -> user_name) ? MyProcPort -> user_name : "",
            (MyProcPort && MyProcPort -> application_name) ? MyProcPort -> application_name : "",
            (MyProcPort && MyProcPort -> remote_host) ? MyProcPort -> remote_host : "",
            stackItem -> auditEvent.rows,
            (stackItem -> auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION),
            className,
            stackItem -> auditEvent.objectType,
            stackItem -> auditEvent.objectName,
            GetCommandTagName(stackItem -> auditEvent.command),
            sql_text,
            sql_bind
        );
    } // ----------------------------------------------------------------------
    else if (strcmp(auditLogFormat, "default") == 0) {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN,
            "\nRDB-AUDIT: ts=%s pid=%d db_name=%s db_user=%s os_user=%s app_name=%s "
            "client_host=%s stmt_id=%ld substmt_id=%ld rows=%ld audit_type=%s "
            "class=%s obj_type=%s obj_name=%s action_name=%s sql_text=%s sql_bind=%s ",
            ts,
            MyProcPid,
            (MyProcPort && MyProcPort -> database_name) ? MyProcPort -> database_name : "",
            GetUserNameFromId(GetUserId(), false),
            (MyProcPort && MyProcPort -> user_name) ? MyProcPort -> user_name : "",
            (MyProcPort && MyProcPort -> application_name) ? MyProcPort -> application_name : "",
            (MyProcPort && MyProcPort -> remote_host) ? MyProcPort -> remote_host : "",
            stackItem -> auditEvent.statementId,
            stackItem -> auditEvent.substatementId,
            stackItem -> auditEvent.rows,
            (stackItem -> auditEvent.granted ? AUDIT_TYPE_OBJECT : AUDIT_TYPE_SESSION),
            className,
            stackItem -> auditEvent.objectType,
            stackItem -> auditEvent.objectName,
            GetCommandTagName(stackItem -> auditEvent.command),
            sql_text,
            sql_bind
        );
    } // ----------------------------------------------------------------------
    else {
        snprintf(aud_message_str, RDB_AUD_STR_MAX_LEN, "unknown rdb_audit.log_format=%s", auditLogFormat);
    } // ----------------------------------------------------------------------

    rdbaud_log_to_daily_file(aud_message_str);

    stackItem -> auditEvent.logged = true;

    MemoryContextSwitchTo(contextOld);
}

/*
 * Check if the role or any inherited role has any permission in the mask.  The
 * public role is excluded from this check and superuser permissions are not
 * considered.
 */
static bool
audit_on_acl(Datum aclDatum,
    Oid auditOid,
    AclMode mask) {
    bool result = false;
    Acl * acl;
    AclItem * aclItemData;
    int aclIndex;
    int aclTotal;

    /* Detoast column's ACL if necessary */
    acl = DatumGetAclP(aclDatum);

    /* Get the acl list and total number of items */
    aclTotal = ACL_NUM(acl);
    aclItemData = ACL_DAT(acl);

    /* Check privileges granted directly to auditOid */
    for (aclIndex = 0; aclIndex < aclTotal; aclIndex++) {
        AclItem * aclItem = & aclItemData[aclIndex];
        if (aclItem -> ai_grantee == auditOid && aclItem -> ai_privs & mask) {
            result = true;
            break;
        }
    }

    /*
     * Check privileges granted indirectly via role memberships. We do this in
     * a separate pass to minimize expensive indirect membership tests.  In
     * particular, it's worth testing whether a given ACL entry grants any
     * privileges still of interest before we perform the has_privs_of_role
     * test.
     */
    if (!result) {
        for (aclIndex = 0; aclIndex < aclTotal; aclIndex++) {
            AclItem * aclItem = & aclItemData[aclIndex];

            /* Don't test public or auditOid (it has been tested already) */
            if (aclItem -> ai_grantee == ACL_ID_PUBLIC ||
                aclItem -> ai_grantee == auditOid)
                continue;

            /*
             * Check that the role has the required privileges and that it is
             * inherited by auditOid.
             */
            if (aclItem -> ai_privs & mask &&
                has_privs_of_role(auditOid, aclItem -> ai_grantee)) {
                result = true;
                break;
            }
        }
    }

    /* If we have a detoasted copy, free it */
    if (acl && (Pointer) acl != DatumGetPointer(aclDatum))
        pfree(acl);

    return result;
}

// --------------------------------------------------------------------------------
// Check if a role has any of the permissions in the mask on a relation.
static bool
audit_on_relation(Oid relOid, Oid auditOid, AclMode mask) {
    bool result = false;
    HeapTuple tuple;
    Datum aclDatum;
    bool isNull;

    /* Get relation tuple from pg_class */
    tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
    if (!HeapTupleIsValid(tuple)) return false;

    /* Get the relation's ACL */
    aclDatum = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_relacl, &
        isNull);

    /* Only check if non-NULL, since NULL means no permissions */
    if (!isNull) result = audit_on_acl(aclDatum, auditOid, mask);

    /* Free the relation tuple */
    ReleaseSysCache(tuple);

    return result;
}
// --------------------------------------------------------------------------------
// Check if a role has any of the permissions in the mask on a column.
static bool
audit_on_attribute(Oid relOid, AttrNumber attNum, Oid auditOid, AclMode mask) {
    bool result = false;
    HeapTuple attTuple;
    Datum aclDatum;
    bool isNull;

    /* Get the attribute's ACL */
    attTuple = SearchSysCache2(ATTNUM,
        ObjectIdGetDatum(relOid),
        Int16GetDatum(attNum));
    if (!HeapTupleIsValid(attTuple))
        return false;

    /* Only consider attributes that have not been dropped */
    if (!((Form_pg_attribute) GETSTRUCT(attTuple)) -> attisdropped) {
        aclDatum = SysCacheGetAttr(ATTNUM, attTuple, Anum_pg_attribute_attacl, &
            isNull);

        if (!isNull)
            result = audit_on_acl(aclDatum, auditOid, mask);
    }

    /* Free attribute */
    ReleaseSysCache(attTuple);

    return result;
}
// --------------------------------------------------------------------------------
/*
 * Check if a role has any of the permissions in the mask on a column in
 * the provided set.  If the set is empty, then all valid columns in the
 * relation will be tested.
 */
static bool
audit_on_any_attribute(Oid relOid, Oid auditOid, Bitmapset * attributeSet, AclMode mode) {
    bool result = false;
    AttrNumber index = -1;
    Bitmapset * tmpSet;

    /* If bms is empty then check for any column match */
    if (bms_is_empty(attributeSet)) {
        HeapTuple classTuple;
        AttrNumber nattrs;
        AttrNumber curr_att;

        /* Get relation to determine total columns */
        classTuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));

        if (!HeapTupleIsValid(classTuple))
            return false;

        nattrs = ((Form_pg_class) GETSTRUCT(classTuple)) -> relnatts;
        ReleaseSysCache(classTuple);

        /* Check each column */
        for (curr_att = 1; curr_att <= nattrs; curr_att++)
            if (audit_on_attribute(relOid, curr_att, auditOid, mode))
                return true;
    }

    /* bms_first_member is destructive, so make a copy before using it. */
    tmpSet = bms_copy(attributeSet);

    /* Check each column */
    while ((index = bms_next_member(tmpSet, index)) >= 0) {
        const AttrNumber col = index + FirstLowInvalidHeapAttributeNumber;

        if (col != InvalidAttrNumber &&
            audit_on_attribute(relOid, col, auditOid, mode)) {
            result = true;
            break;
        }
    }

    bms_free(tmpSet);

    return result;
}
// --------------------------------------------------------------------------------
// Create AuditEvents for SELECT/DML operations via executor permissions checks.
static void
log_select_dml(Oid auditOid, List * rangeTabls, List * permInfos) {
    ListCell * lr;
    bool first = true;
    bool found = false;

    /* Do not log if this is an internal statement */
    if (internalStatement)
        return;

    foreach(lr, rangeTabls) {
        Oid relOid;
        Oid relNamespaceOid;
        RangeTblEntry * rte = lfirst(lr);
        const RTEPermissionInfo * perminfo;

        /*
         * We only care about tables/views, which have perminfoindex set. This
         * excludes table partitions, which do not have perminfoindex set.
         */
        if (rte -> perminfoindex == 0)
            continue;

        Assert(rte -> rtekind == RTE_RELATION || (rte -> rtekind == RTE_SUBQUERY && rte -> relkind == RELKIND_VIEW));
        found = true;

        /*
         * Don't log if the session user is not a member of the current
         * role.  This prevents contents of security definer functions
         * from being logged and suppresses foreign key queries unless the
         * session user is the owner of the referenced table.
         */
        if (!is_member_of_role(GetSessionUserId(), GetUserId())) return;

        /*
         * If we are not logging all-catalog queries (auditLogCatalog is
         * false) then filter out any system relations here.
         */
        relOid = rte -> relid;
        relNamespaceOid = get_rel_namespace(relOid);
        if (!auditLogCatalog && IsCatalogNamespace(relNamespaceOid)) continue;

        /*
         * Default is that this was not through a grant, to support session
         * logging.  Will be updated below if a grant is found.
         */
        auditEventStack -> auditEvent.granted = false;

        /*
         * If this is the first RTE then session log unless auditLogRelation
         * is set.
         */
        if (first && !auditLogRelation) {
            log_audit_event(auditEventStack);

            first = false;
        }

        /*
         * We don't have access to the parse tree here, so we have to generate
         * the node type, object type, and command tag by decoding
         * rte->requiredPerms and rte->relkind. For updates we also check
         * rellockmode so that only true UPDATE commands (not
         * SELECT FOR UPDATE, etc.) are logged as UPDATE.
         */
        perminfo = getRTEPermissionInfo(permInfos, rte);

        if (perminfo -> requiredPerms & ACL_INSERT) {
            auditEventStack -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            auditEventStack -> auditEvent.commandTag = T_InsertStmt;
            auditEventStack -> auditEvent.command = CMDTAG_INSERT;
        } else if (perminfo -> requiredPerms & ACL_UPDATE &&
            rte -> rellockmode >= RowExclusiveLock) {
            auditEventStack -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            auditEventStack -> auditEvent.commandTag = T_UpdateStmt;
            auditEventStack -> auditEvent.command = CMDTAG_UPDATE;
        } else if (perminfo -> requiredPerms & ACL_DELETE) {
            auditEventStack -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            auditEventStack -> auditEvent.commandTag = T_DeleteStmt;
            auditEventStack -> auditEvent.command = CMDTAG_DELETE;
        } else if (perminfo -> requiredPerms & ACL_SELECT) {
            auditEventStack -> auditEvent.logStmtLevel = LOGSTMT_ALL;
            auditEventStack -> auditEvent.commandTag = T_SelectStmt;
            auditEventStack -> auditEvent.command = CMDTAG_SELECT;
        } else {
            auditEventStack -> auditEvent.logStmtLevel = LOGSTMT_ALL;
            auditEventStack -> auditEvent.commandTag = T_Invalid;
            auditEventStack -> auditEvent.command = CMDTAG_UNKNOWN;
        }

        /* Use the relation type to assign object type */
        switch (rte -> relkind) {
        case RELKIND_RELATION:
        case RELKIND_PARTITIONED_TABLE:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_TABLE;
            break;

        case RELKIND_INDEX:
        case RELKIND_PARTITIONED_INDEX:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_INDEX;
            break;

        case RELKIND_SEQUENCE:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_SEQUENCE;
            break;

        case RELKIND_TOASTVALUE:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_TOASTVALUE;
            break;

        case RELKIND_VIEW:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_VIEW;
            break;

        case RELKIND_COMPOSITE_TYPE:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_COMPOSITE_TYPE;
            break;

        case RELKIND_FOREIGN_TABLE:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_FOREIGN_TABLE;
            break;

        case RELKIND_MATVIEW:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_MATVIEW;
            break;

        default:
            auditEventStack -> auditEvent.objectType = OBJECT_TYPE_UNKNOWN;
            break;
        }

        /* Get a copy of the relation name and assign it to object name */
        auditEventStack -> auditEvent.objectName =
            quote_qualified_identifier(
                get_namespace_name(relNamespaceOid), get_rel_name(relOid));

        /* Perform object auditing only if the audit role is valid */
        if (auditOid != InvalidOid) {
            AclMode auditPerms =
                (ACL_SELECT | ACL_UPDATE | ACL_INSERT | ACL_DELETE) &
                perminfo -> requiredPerms;

            /*
             * If any of the required permissions for the relation are granted
             * to the audit role then audit the relation
             */
            if (audit_on_relation(relOid, auditOid, auditPerms))
                auditEventStack -> auditEvent.granted = true;

            /*
             * Else check if the audit role has column-level permissions for
             * select, insert, or update.
             */
            else if (auditPerms != 0) {
                /*
                 * Check the select columns
                 */
                if (auditPerms & ACL_SELECT)
                    auditEventStack -> auditEvent.granted =
                    audit_on_any_attribute(relOid, auditOid,
                        perminfo -> selectedCols,
                        ACL_SELECT);

                /*
                 * Check the insert columns
                 */
                if (!auditEventStack -> auditEvent.granted &&
                    auditPerms & ACL_INSERT)
                    auditEventStack -> auditEvent.granted =
                    audit_on_any_attribute(relOid, auditOid,
                        perminfo -> insertedCols,
                        auditPerms);

                /*
                 * Check the update columns
                 */
                if (!auditEventStack -> auditEvent.granted &&
                    auditPerms & ACL_UPDATE)
                    auditEventStack -> auditEvent.granted =
                    audit_on_any_attribute(relOid, auditOid,
                        perminfo -> updatedCols,
                        auditPerms);
            }

            /*
             * SELECT FOR UPDATE is not logged when SELECT is not granted
             */
            if (rte -> rellockmode == RowShareLock &&
                !audit_on_relation(relOid, auditOid, ACL_SELECT))
                auditEventStack -> auditEvent.granted =
                audit_on_any_attribute(relOid, auditOid,
                    perminfo -> selectedCols,
                    ACL_SELECT);
        }

        /* Do relation level logging if a grant was found */
        if (auditEventStack -> auditEvent.granted) {
            auditEventStack -> auditEvent.logged = false;
            log_audit_event(auditEventStack);
        }

        /* Do relation level logging if auditLogRelation is set */
        if (auditLogRelation) {
            auditEventStack -> auditEvent.logged = false;
            auditEventStack -> auditEvent.granted = false;
            log_audit_event(auditEventStack);
        }

        pfree(auditEventStack -> auditEvent.objectName);
    }

    /*
     * If no tables were found that means that RangeTbls was empty or all
     * relations were in the system schema.  In that case still log a session
     * record.
     */
    if (!found) {
        auditEventStack -> auditEvent.granted = false;
        auditEventStack -> auditEvent.logged = false;

        log_audit_event(auditEventStack);
    }
}
// --------------------------------------------------------------------------------
// Create AuditEvents for non-catalog function execution, as detected by log_object_access() below.
static void
log_function_execute(Oid objectId) {
    HeapTuple proctup;
    Form_pg_proc proc;
    AuditEventStackItem * stackItem;

    /* Get info about the function. */
    proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(objectId));

    if (!proctup)
        elog(ERROR, "cache lookup failed for function %u", objectId);

    proc = (Form_pg_proc) GETSTRUCT(proctup);

    /*
     * Logging execution of all pg_catalog functions would make the log
     * unusably noisy.
     */
    if (IsCatalogNamespace(proc -> pronamespace)) {
        ReleaseSysCache(proctup);
        return;
    }

    /* Push audit event onto the stack */
    stackItem = stack_push();

    /* Generate the fully-qualified function name. */
    stackItem -> auditEvent.objectName =
        quote_qualified_identifier(get_namespace_name(proc -> pronamespace),
            NameStr(proc -> proname));
    ReleaseSysCache(proctup);

    /* Log the function call */
    stackItem -> auditEvent.logStmtLevel = LOGSTMT_ALL;
    stackItem -> auditEvent.commandTag = T_DoStmt;
    stackItem -> auditEvent.command = CMDTAG_EXECUTE;
    stackItem -> auditEvent.objectType = OBJECT_TYPE_FUNCTION;
    stackItem -> auditEvent.commandText = stackItem -> next -> auditEvent.commandText;
    stackItem -> auditEvent.commandLen = stackItem -> next -> auditEvent.commandLen;

    log_audit_event(stackItem);

    /* Pop audit event from the stack */
    stack_pop(stackItem -> stackId);
}
// --------------------------------------------------------------------------------
// Hook functions
static ExecutorCheckPerms_hook_type next_ExecutorCheckPerms_hook = NULL;
static ProcessUtility_hook_type next_ProcessUtility_hook = NULL;
static object_access_hook_type next_object_access_hook = NULL;
static ExecutorStart_hook_type next_ExecutorStart_hook = NULL;
/* The following hook functions are required to get rows */
static ExecutorRun_hook_type next_ExecutorRun_hook = NULL;
static ExecutorEnd_hook_type next_ExecutorEnd_hook = NULL;

// --------------------------------------------------------------------------------
/*
 * Hook ExecutorStart to get the query text and basic command type for queries
 * that do not contain a table and so can't be idenitified accurately in
 * ExecutorCheckPerms.
 */
static void
rdbaud_ExecutorStart_hook(QueryDesc * queryDesc, int eflags) {
    AuditEventStackItem * stackItem = NULL;

    if (!internalStatement && !IsParallelWorker()) {
        /* Push the audit event onto the stack */
        stackItem = stack_push();

        /* Initialize command using queryDesc->operation */
        switch (queryDesc -> operation) {
        case CMD_SELECT:
            stackItem -> auditEvent.logStmtLevel = LOGSTMT_ALL;
            stackItem -> auditEvent.commandTag = T_SelectStmt;
            stackItem -> auditEvent.command = CMDTAG_SELECT;
            break;

        case CMD_INSERT:
            stackItem -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            stackItem -> auditEvent.commandTag = T_InsertStmt;
            stackItem -> auditEvent.command = CMDTAG_INSERT;
            break;

        case CMD_UPDATE:
            stackItem -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            stackItem -> auditEvent.commandTag = T_UpdateStmt;
            stackItem -> auditEvent.command = CMDTAG_UPDATE;
            break;

        case CMD_DELETE:
            stackItem -> auditEvent.logStmtLevel = LOGSTMT_MOD;
            stackItem -> auditEvent.commandTag = T_DeleteStmt;
            stackItem -> auditEvent.command = CMDTAG_DELETE;
            break;

        default:
            stackItem -> auditEvent.logStmtLevel = LOGSTMT_ALL;
            stackItem -> auditEvent.commandTag = T_Invalid;
            stackItem -> auditEvent.command = CMDTAG_UNKNOWN;
            break;
        }

        /* Initialize the audit event */
        command_text_set( & stackItem -> auditEvent, queryDesc -> sourceText,
            queryDesc -> plannedstmt -> stmt_location,
            queryDesc -> plannedstmt -> stmt_len);
        stackItem -> auditEvent.paramList = copyParamList(queryDesc -> params);
    }

    /* Call the previous hook or standard function */
    if (next_ExecutorStart_hook)
        next_ExecutorStart_hook(queryDesc, eflags);
    else
        standard_ExecutorStart(queryDesc, eflags);

    /*
     * Move the stack memory context to the query memory context.  This needs
     * to be done here because the query context does not exist before the
     * call to standard_ExecutorStart() but the stack item is required by
     * rdbaud_ExecutorCheckPerms_hook() which is called during
     * standard_ExecutorStart().
     */
    if (stackItem) {
        MemoryContextSetParent(stackItem -> contextAudit,
            queryDesc -> estate -> es_query_cxt);

        /* Set query context for tracking rows processed */
        if (auditLogRows)
            stackItem -> auditEvent.queryContext = queryDesc -> estate -> es_query_cxt;
    }
}
// --------------------------------------------------------------------------------
// Hook ExecutorCheckPerms to do session and object auditing for DML.
static bool
rdbaud_ExecutorCheckPerms_hook(List * rangeTabls, List * permInfos, bool ereport_on_violation) {
    Oid auditOid;

    /* Get the audit oid if the role exists */
    auditOid = get_role_oid(auditRole, true);

    /* Log DML if the audit role is valid or session logging is enabled */
    if ((auditOid != InvalidOid || auditLogBitmap != 0) &&
        !IsAbortedTransactionBlockState() && !IsParallelWorker()) {
        /* If auditLogRows is on, wait for rows processed to be set */
        if (auditLogRows && auditEventStack != NULL) {
            /* Check if the top item is SELECT/INSERT for CREATE TABLE AS */
            if (auditEventStack -> auditEvent.commandTag == T_SelectStmt &&
                auditEventStack -> next != NULL &&
                auditEventStack -> next -> auditEvent.command == CMDTAG_CREATE_TABLE_AS &&
                auditEventStack -> auditEvent.rangeTabls != NULL) {
                /*
                 * First, log the INSERT event for CREATE TABLE AS here.
                 * The SELECT event for CREATE TABLE AS will be logged
                 * in rdbaud_ExecutorEnd_hook() later to get rows.
                 */
                log_select_dml(auditOid, rangeTabls, permInfos);
            } else {
                /*
                 * Save auditOid, rangeTabls, and permInfos to call
                 * log_select_dml() in rdbaud_ExecutorEnd_hook() later.
                 */
                auditEventStack -> auditEvent.auditOid = auditOid;
                auditEventStack -> auditEvent.rangeTabls = rangeTabls;
                auditEventStack -> auditEvent.permInfos = permInfos;
            }
        } else {
            STACK_NOT_EMPTY();
            log_select_dml(auditOid, rangeTabls, permInfos);
        }
    }

    /* Call the next hook function */
    if (next_ExecutorCheckPerms_hook &&
        !( * next_ExecutorCheckPerms_hook)(rangeTabls, permInfos,
            ereport_on_violation))
        return false;

    return true;
}
// --------------------------------------------------------------------------------
// Hook ExecutorRun to get rows processed by the current statement.
static void
rdbaud_ExecutorRun_hook(QueryDesc * queryDesc, ScanDirection direction, uint64 count) {
    AuditEventStackItem * stackItem = NULL;

    /* Call the previous hook or standard function */
    if (next_ExecutorRun_hook)
        next_ExecutorRun_hook(queryDesc, direction, count);
    else
        standard_ExecutorRun(queryDesc, direction, count);

    if (auditLogRows && !internalStatement && !IsParallelWorker()) {
        /* Find an item from the stack by the query memory context */
        stackItem = stack_find_context(queryDesc -> estate -> es_query_cxt);

        /* Accumulate the number of rows processed */
        if (stackItem != NULL) {
            STACK_NOT_EMPTY();
            stackItem -> auditEvent.rows += queryDesc -> estate -> es_processed;
        }
    }
}
// --------------------------------------------------------------------------------
// Hook ExecutorEnd to get rows processed by the current statement.
static void
rdbaud_ExecutorEnd_hook(QueryDesc * queryDesc) {
    AuditEventStackItem * stackItem = NULL;
    AuditEventStackItem * auditEventStackFull = NULL;

    if (auditLogRows && !internalStatement && !IsParallelWorker()) {
        /* Find an item from the stack by the query memory context */
        stackItem = stack_find_context(queryDesc -> estate -> es_query_cxt);

        if (stackItem != NULL && stackItem -> auditEvent.rangeTabls != NULL) {
            STACK_NOT_EMPTY();

            /* Reset auditEventStack to use in log_select_dml() */
            auditEventStackFull = auditEventStack;
            auditEventStack = stackItem;

            /* Log SELECT/DML audit entry */
            log_select_dml(stackItem -> auditEvent.auditOid,
                stackItem -> auditEvent.rangeTabls,
                stackItem -> auditEvent.permInfos);

            /* Switch back to the previous auditEventStack */
            auditEventStack = auditEventStackFull;
        }
    }

    /* Call the previous hook or standard function */
    if (next_ExecutorEnd_hook)
        next_ExecutorEnd_hook(queryDesc);
    else
        standard_ExecutorEnd(queryDesc);
}
// --------------------------------------------------------------------------------
// Hook ProcessUtility to do session auditing for DDL and utility commands.
static void
rdbaud_ProcessUtility_hook(PlannedStmt * pstmt,
    const char * queryString,
    bool readOnlyTree,
    ProcessUtilityContext context,
    ParamListInfo params,
    QueryEnvironment * queryEnv,
    DestReceiver * dest,
    QueryCompletion * qc) {
    AuditEventStackItem * stackItem = NULL;
    int64 stackId = 0;

    /*
     * Don't audit substatements.  All the substatements we care about should
     * be covered by the event triggers.
     */
    if (context <= PROCESS_UTILITY_QUERY && !IsAbortedTransactionBlockState()) {
        /* Process top level utility statement */
        if (context == PROCESS_UTILITY_TOPLEVEL) {
            /*
             * If the stack is not empty then the only allowed entries are call
             * statements or open, select, show, and explain cursors
             */
            if (auditEventStack != NULL) {
                AuditEventStackItem * nextItem = auditEventStack;

                do {
                    if (nextItem -> auditEvent.commandTag != T_SelectStmt &&
                        nextItem -> auditEvent.commandTag != T_VariableShowStmt &&
                        nextItem -> auditEvent.commandTag != T_ExplainStmt &&
                        nextItem -> auditEvent.commandTag != T_CallStmt) {
                        elog(ERROR, "rdb_audit stack is not empty");
                    }

                    nextItem = nextItem -> next;
                }
                while (nextItem != NULL);
            }

            stackItem = stack_push();
            stackItem -> auditEvent.paramList = copyParamList(params);
        } else
            stackItem = stack_push();

        stackId = stackItem -> stackId;
        stackItem -> auditEvent.logStmtLevel = GetCommandLogLevel(pstmt -> utilityStmt);
        stackItem -> auditEvent.commandTag = nodeTag(pstmt -> utilityStmt);
        stackItem -> auditEvent.command = CreateCommandTag(pstmt -> utilityStmt);
        command_text_set( & stackItem -> auditEvent, queryString,
            pstmt -> stmt_location, pstmt -> stmt_len);

        /*
         * If this is a DO block log it before calling the next ProcessUtility
         * hook.
         */
        if (auditLogBitmap & LOG_FUNCTION &&
            stackItem -> auditEvent.commandTag == T_DoStmt &&
            !IsAbortedTransactionBlockState())
            log_audit_event(stackItem);

        /*
         * If this is a create/alter extension command log it before calling
         * the next ProcessUtility hook. Otherwise, any warnings will be emitted
         * before the create/alter is logged and errors will prevent it from
         * being logged at all.
         */
        if (auditLogBitmap & LOG_DDL &&
            (stackItem -> auditEvent.commandTag == T_CreateExtensionStmt ||
                stackItem -> auditEvent.commandTag == T_AlterExtensionStmt) &&
            !IsAbortedTransactionBlockState())
            log_audit_event(stackItem);

        /*
         * A close will free the open cursor which will also free the close
         * audit entry. Immediately log the close and set stackItem to NULL so
         * it won't be logged later.
         */
        if (stackItem -> auditEvent.commandTag == T_ClosePortalStmt) {
            if (auditLogBitmap & LOG_MISC && !IsAbortedTransactionBlockState())
                log_audit_event(stackItem);

            stackItem = NULL;
        }
    }

    /* Call the standard process utility chain. */
    if (next_ProcessUtility_hook)
        ( * next_ProcessUtility_hook)(pstmt, queryString, readOnlyTree, context,
            params, queryEnv, dest, qc);
    else
        standard_ProcessUtility(pstmt, queryString, readOnlyTree, context,
            params, queryEnv, dest, qc);

    /*
     * Process the audit event if there is one.  Also check that this event
     * was not popped off the stack by a memory context being free'd
     * elsewhere.
     */
    if (stackItem && !IsAbortedTransactionBlockState()) {
        /*
         * Make sure the item we want to log is still on the stack - if not
         * then something has gone wrong and an error will be raised.
         */
        stack_valid(stackId);

        /*
         * Log the utility command if logging is on, the command has not
         * already been logged by another hook, and the transaction is not
         * aborted.
         */
        if (auditLogBitmap != 0 && !stackItem -> auditEvent.logged)
            log_audit_event(stackItem);
    }
}
// --------------------------------------------------------------------------------
// Hook object_access_hook to provide fully-qualified object names for function calls.
static void
rdbaud_object_access_hook(ObjectAccessType access, Oid classId, Oid objectId, int subId, void * arg) {
    if (auditLogBitmap & LOG_FUNCTION && access == OAT_FUNCTION_EXECUTE &&
        auditEventStack && !IsAbortedTransactionBlockState())
        log_function_execute(objectId);

    if (next_object_access_hook)
        ( * next_object_access_hook)(access, classId, objectId, subId, arg);
}
// --------------------------------------------------------------------------------
/*
 * Event trigger functions
 */

/*
 * Supply additional data for (non drop) statements that have event trigger
 * support and can be deparsed.
 *
 * Drop statements are handled below through the older sql_drop event trigger.
 */
Datum
rdb_audit_ddl_command_end(PG_FUNCTION_ARGS) {
    EventTriggerData * eventData;
    int result,
    row;
    TupleDesc spiTupDesc;
    const char * query;
    MemoryContext contextQuery;
    MemoryContext contextOld;

    /* Continue only if session DDL logging is enabled */
    if (~auditLogBitmap & LOG_DDL && ~auditLogBitmap & LOG_ROLE)
        PG_RETURN_NULL();

    /* Be sure the module was loaded */
    if (!auditEventStack) elog(ERROR, "rdb_audit not loaded before call to rdb_audit_ddl_command_end()");

    /* This is an internal statement - do not log it */
    internalStatement = true;

    /* Make sure the fuction was fired as a trigger */
    if (!CALLED_AS_EVENT_TRIGGER(fcinfo)) elog(ERROR, "not fired by event trigger manager");

    /* Switch memory context for query */
    contextQuery = AllocSetContextCreate(
        CurrentMemoryContext,
        "rdbaud_func_ddl_command_end temporary context",
        ALLOCSET_DEFAULT_SIZES);
    contextOld = MemoryContextSwitchTo(contextQuery);

    /* Get information about triggered events */
    eventData = (EventTriggerData * ) fcinfo -> context;

    auditEventStack -> auditEvent.logStmtLevel = GetCommandLogLevel(eventData -> parsetree);
    auditEventStack -> auditEvent.commandTag = nodeTag(eventData -> parsetree);
    auditEventStack -> auditEvent.command = CreateCommandTag(eventData -> parsetree);

    /* Return objects affected by the (non drop) DDL statement */
    query = "SELECT pg_catalog.upper(object_type),\n"
    "       object_identity,\n"
    "       pg_catalog.upper(command_tag)\n"
    "  FROM pg_catalog.pg_event_trigger_ddl_commands()";

    /* Attempt to connect */
    result = SPI_connect();
    if (result < 0) elog(ERROR, "rdb_audit_ddl_command_end: SPI_connect returned %d", result);

    /* Execute the query */
    result = SPI_execute(query, true, 0);
    if (result != SPI_OK_SELECT) elog(ERROR, "rdb_audit_ddl_command_end: SPI_execute returned %d", result);

    /* Iterate returned rows */
    spiTupDesc = SPI_tuptable -> tupdesc;
    for (row = 0; row < SPI_processed; row++) {
        HeapTuple spiTuple;

        spiTuple = SPI_tuptable -> vals[row];

        /* Supply object name and type for audit event */
        auditEventStack -> auditEvent.objectType = SPI_getvalue(spiTuple, spiTupDesc, 1);
        auditEventStack -> auditEvent.objectName = SPI_getvalue(spiTuple, spiTupDesc, 2);
        auditEventStack -> auditEvent.command = GetCommandTagEnum(SPI_getvalue(spiTuple, spiTupDesc, 3));
        auditEventStack -> auditEvent.logged = false;

        /*
         * Identify grant/revoke commands - these are the only non-DDL class
         * commands that should be coming through the event triggers.
         */
        if (auditEventStack -> auditEvent.command == CMDTAG_GRANT ||
            auditEventStack -> auditEvent.command == CMDTAG_REVOKE) {
            NodeTag currentCommandTag = auditEventStack -> auditEvent.commandTag;
            auditEventStack -> auditEvent.commandTag = T_GrantStmt;
            log_audit_event(auditEventStack);
            auditEventStack -> auditEvent.commandTag = currentCommandTag;
        } else
            log_audit_event(auditEventStack);
    }

    /* Complete the query */
    SPI_finish();

    MemoryContextSwitchTo(contextOld);
    MemoryContextDelete(contextQuery);

    /* No longer in an internal statement */
    internalStatement = false;

    PG_RETURN_NULL();
}
// --------------------------------------------------------------------------------
// Supply additional data for drop statements that have event trigger support.
Datum
rdb_audit_sql_drop(PG_FUNCTION_ARGS) {
    int result,
    row;
    TupleDesc spiTupDesc;
    const char * query;
    MemoryContext contextQuery;
    MemoryContext contextOld;

    if (~auditLogBitmap & LOG_DDL)
        PG_RETURN_NULL();

    /* Be sure the module was loaded */
    if (!auditEventStack) elog(ERROR, "rdb_audit not loaded before call to rdb_audit_sql_drop()");

    /* This is an internal statement - do not log it */
    internalStatement = true;

    /* Make sure the fuction was fired as a trigger */
    if (!CALLED_AS_EVENT_TRIGGER(fcinfo)) elog(ERROR, "not fired by event trigger manager");

    /* Switch memory context for the query */
    contextQuery = AllocSetContextCreate(
        CurrentMemoryContext,
        "rdbaud_func_ddl_command_end temporary context",
        ALLOCSET_DEFAULT_SIZES);
    contextOld = MemoryContextSwitchTo(contextQuery);

    /* Return objects affected by the drop statement */
    query = "SELECT pg_catalog.upper(object_type),\n"
    "       object_identity\n"
    "  FROM pg_catalog.pg_event_trigger_dropped_objects()\n"
    " WHERE pg_catalog.lower(object_type) operator(pg_catalog.<>) 'type'\n"
    "   AND schema_name operator(pg_catalog.<>) 'pg_toast'";

    /* Attempt to connect */
    result = SPI_connect();
    if (result < 0) elog(ERROR, "rdbaud_ddl_drop: SPI_connect returned %d", result);

    /* Execute the query */
    result = SPI_execute(query, true, 0);
    if (result != SPI_OK_SELECT) elog(ERROR, "rdbaud_ddl_drop: SPI_execute returned %d", result);

    /* Iterate returned rows */
    spiTupDesc = SPI_tuptable -> tupdesc;
    for (row = 0; row < SPI_processed; row++) {
        HeapTuple spiTuple;
        spiTuple = SPI_tuptable -> vals[row];
        auditEventStack -> auditEvent.objectType = SPI_getvalue(spiTuple, spiTupDesc, 1);
        auditEventStack -> auditEvent.objectName = SPI_getvalue(spiTuple, spiTupDesc, 2);
        auditEventStack -> auditEvent.logged = false;
        log_audit_event(auditEventStack);
    }

    /* Complete the query */
    SPI_finish();

    MemoryContextSwitchTo(contextOld);
    MemoryContextDelete(contextQuery);

    /* No longer in an internal statement */
    internalStatement = false;

    PG_RETURN_NULL();
}
// --------------------------------------------------------------------------------
// GUC check and assign functions

/*
 * Take a rdb_audit.log value such as "read, write, dml", verify that each of the
 * comma-separated tokens corresponds to a LogClass value, and convert them into
 * a bitmap that log_audit_event can check.
 */
static bool
check_rdbaud_log_scope(char ** newVal, void ** extra, GucSource source) {
    List * flagRawList;
    char * rawVal;
    ListCell * lt;
    int * flags;

    /* Make sure newval is a comma-separated list of tokens. */
    rawVal = pstrdup( * newVal);
    if (!SplitIdentifierString(rawVal, ',', & flagRawList)) {
        GUC_check_errdetail("List syntax is invalid");
        list_free(flagRawList);
        pfree(rawVal);
        return false;
    }

    /*
     * Check that we recognise each token, and add it to the bitmap we're
     * building up in a newly-allocated int *f.
     */
    if (!(flags = (int * ) guc_malloc(FATAL, sizeof(int))))
        return false;

    * flags = 0;

    foreach(lt, flagRawList) {
        char * token = (char * ) lfirst(lt);
        bool subtract = false;
        int class;

        /* If token is preceded by -, then the token is subtractive */
        if (token[0] == '-') {
            token++;
            subtract = true;
        }

        /* Test each token */
        if (pg_strcasecmp(token, CLASS_NONE) == 0) class = LOG_NONE;
        else if (pg_strcasecmp(token, CLASS_ALL) == 0) class = LOG_ALL;
        else if (pg_strcasecmp(token, CLASS_DDL) == 0) class = LOG_DDL;
        else if (pg_strcasecmp(token, CLASS_FUNCTION) == 0) class = LOG_FUNCTION;
        else if (pg_strcasecmp(token, CLASS_MISC) == 0) class = LOG_MISC | LOG_MISC_SET;
        else if (pg_strcasecmp(token, CLASS_MISC_SET) == 0) class = LOG_MISC_SET;
        else if (pg_strcasecmp(token, CLASS_READ) == 0) class = LOG_READ;
        else if (pg_strcasecmp(token, CLASS_ROLE) == 0) class = LOG_ROLE;
        else if (pg_strcasecmp(token, CLASS_WRITE) == 0) class = LOG_WRITE;
        else { guc_free(flags); pfree(rawVal); list_free(flagRawList); return false; }

        /* Add or subtract class bits from the log bitmap */
        if (subtract)
            *
            flags &= ~class;
        else
            *
            flags |= class;
    }

    pfree(rawVal);
    list_free(flagRawList);

    /* Store the bitmap for assign_rdbaud_log_scope */
    * extra = flags;

    return true;
}
// --------------------------------------------------------------------------------
/*
 * Set rdbaud_log from extra (ignoring newVal, which has already been
 * converted to a bitmap above). Note that extra may not be set if the
 * assignment is to be suppressed.
 */
static void
assign_rdbaud_log_scope(const char * newVal, void * extra) {
    if (extra)
        auditLogBitmap = * (int * ) extra;
}
// --------------------------------------------------------------------------------
/*
 * Take a rdb_audit.log_level value such as "debug" and check that is is valid.
 * Return the enum value so it does not have to be checked again in the assign
 * function.
 */
static bool
check_rdbaud_log_level(char ** newVal, void ** extra, GucSource source) {
    int * logLevel;

    /* Allocate memory to store the log level */
    if (!(logLevel = (int * ) guc_malloc(FATAL, sizeof(int))))
        return false;

    /* Find the log level enum */
    if (pg_strcasecmp( * newVal, "debug") == 0) * logLevel = DEBUG2;
    else if (pg_strcasecmp( * newVal, "debug5") == 0) * logLevel = DEBUG5;
    else if (pg_strcasecmp( * newVal, "debug4") == 0) * logLevel = DEBUG4;
    else if (pg_strcasecmp( * newVal, "debug3") == 0) * logLevel = DEBUG3;
    else if (pg_strcasecmp( * newVal, "debug2") == 0) * logLevel = DEBUG2;
    else if (pg_strcasecmp( * newVal, "debug1") == 0) * logLevel = DEBUG1;
    else if (pg_strcasecmp( * newVal, "info") == 0) * logLevel = INFO;
    else if (pg_strcasecmp( * newVal, "notice") == 0) * logLevel = NOTICE;
    else if (pg_strcasecmp( * newVal, "warning") == 0) * logLevel = WARNING;
    else if (pg_strcasecmp( * newVal, "log") == 0) * logLevel = LOG;

    /* Error if the log level enum is not found */
    else { guc_free(logLevel); return false; }

    /* Return the log level enum */
    * extra = logLevel;

    return true;
}
// --------------------------------------------------------------------------------
/*
 * Set rdbaud_log from extra (ignoring newVal, which has already been
 * converted to an enum above). Note that extra may not be set if the
 * assignment is to be suppressed.
 */
static void
assign_rdbaud_log_level(const char * newVal, void * extra) {
    if (extra) auditLogLevel = * (int * ) extra;
}
// --------------------------------------------------------------------------------
// Define GUC variables and install hooks upon module load.
void
_PG_init(void) {
    /* Be sure we do initialization only once */
    static bool inited = false;

    if (inited)
        return;

    /* Must be loaded with shared_preload_libraries */
    if (!process_shared_preload_libraries_in_progress)
        ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
            errmsg("rdb_audit must be loaded via shared_preload_libraries")));

    /* Define rdb_audit.log_scope */
    DefineCustomStringVariable(
        "rdb_audit.log_scope",

        "Specifies which classes of statements will be logged by session audit "
        "logging. Multiple classes can be provided using a comma-separated "
        "list and classes can be subtracted by prefacing the class with a "
        "- sign.",

        NULL, &
        auditLogScope,
        "none",
        PGC_SUSET,
        GUC_LIST_INPUT | GUC_NOT_IN_SAMPLE,
        check_rdbaud_log_scope,
        assign_rdbaud_log_scope,
        NULL);

    /* Define rdb_audit.log_catalog */
    DefineCustomBoolVariable(
        "rdb_audit.log_catalog",

        "Specifies that session logging should be enabled in the case where "
        "all relations in a statement are in pg_catalog.  Disabling this "
        "setting will reduce noise in the log from tools like psql and PgAdmin "
        "that query the catalog heavily.",

        NULL, &
        auditLogCatalog,
        true,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_client */
    DefineCustomBoolVariable(
        "rdb_audit.log_client",

        "Specifies whether audit messages should be visible to the client. "
        "This setting should generally be left disabled but may be useful for "
        "debugging or other purposes.",

        NULL, &
        auditLogClient,
        false,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_level */
    DefineCustomStringVariable(
        "rdb_audit.log_level",

        "Specifies the log level that will be used for log entries. This "
        "setting is used for regression testing and may also be useful to end "
        "users for testing or other purposes.  It is not intended to be used "
        "in a production environment as it may leak which statements are being "
        "logged to the user.",

        NULL, &
        auditLogLevelString,
        "log",
        PGC_SUSET,
        GUC_LIST_INPUT | GUC_NOT_IN_SAMPLE,
        check_rdbaud_log_level,
        assign_rdbaud_log_level,
        NULL);

    /* Define rdb_audit.log_parameter */
    DefineCustomBoolVariable(
        "rdb_audit.log_parameter",

        "Specifies that audit logging should include the parameters that were "
        "passed with the statement. When parameters are present they will be "
        "be included in CSV format after the statement text.",

        NULL, &
        auditLogParameter,
        false,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_parameter_max_size */
    DefineCustomIntVariable(
        "rdb_audit.log_parameter_max_size",

        "Specifies, in bytes, the maximum length of variable-length parameters "
        "to log.  If 0 (the default), parameters are not checked for size.  If "
        "set, when the size of the parameter is longer than the setting, the "
        "value in the audit log is replaced with a placeholder. Note that for "
        "character types, the length is in bytes for the parameter's encoding, "
        "not characters.",

        NULL, &
        auditLogParameterMaxSize,
        0,
        0,
        (1 << 30) - 1,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_relation */
    DefineCustomBoolVariable(
        "rdb_audit.log_relation",

        "Specifies whether session audit logging should create a separate log "
        "entry for each relation referenced in a SELECT or DML statement. "
        "This is a useful shortcut for exhaustive logging without using object "
        "audit logging.",

        NULL, &
        auditLogRelation,
        false,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_rows */
    DefineCustomBoolVariable(
        "rdb_audit.log_rows",

        "Specifies whether logging will include the rows retrieved or "
        "affected by a statement.",

        NULL, &
        auditLogRows,
        false,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_statement */
    DefineCustomBoolVariable(
        "rdb_audit.log_statement",

        "Specifies whether logging will include the statement text and "
        "parameters.  Depending on requirements, the full statement text might "
        "not be required in the audit log.",

        NULL, &
        auditLogStatement,
        true,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_statement_once */
    DefineCustomBoolVariable(
        "rdb_audit.log_statement_once",

        "Specifies whether logging will include the statement text and "
        "parameters with the first log entry for a statement/substatement "
        "combination or with every entry.  Enabling this setting will result "
        "in less verbose logging but may make it more difficult to determine "
        "the statement that generated a log entry, though the "
        "statement/substatement pair along with the process id should suffice "
        "to identify the statement text logged with a previous entry.",

        NULL, &
        auditLogStatementOnce,
        false,
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.role */
    DefineCustomStringVariable(
        "rdb_audit.role",

        "Specifies the master role to use for object audit logging.  Multiple "
        "audit roles can be defined by granting them to the master role. This "
        "allows multiple groups to be in charge of different aspects of audit "
        "logging.",

        NULL, &
        auditRole,
        "",
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_format */
    DefineCustomStringVariable(
        "rdb_audit.log_format",

        "Specifies the format in which audit log entries to be made.  role to use for object audit logging.  Multiple "
        "allowed values are: default | expand | csv | json | xml | table ",

        NULL, &
        auditLogFormat,
        "default",
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    /* Define rdb_audit.log_directory */
    DefineCustomStringVariable(
        "rdb_audit.log_directory",

        "Specifies the directory where audit logs are produced",

        NULL, &
        auditLogDirectory,
        "log",
        PGC_SUSET,
        GUC_NOT_IN_SAMPLE,
        NULL, NULL, NULL);

    // Install our hook functions after saving the existing pointers to preserve the chains.
    next_ExecutorStart_hook = ExecutorStart_hook;
    ExecutorStart_hook = rdbaud_ExecutorStart_hook;

    next_ExecutorCheckPerms_hook = ExecutorCheckPerms_hook;
    ExecutorCheckPerms_hook = rdbaud_ExecutorCheckPerms_hook;

    next_ProcessUtility_hook = ProcessUtility_hook;
    ProcessUtility_hook = rdbaud_ProcessUtility_hook;

    next_object_access_hook = object_access_hook;
    object_access_hook = rdbaud_object_access_hook;

    /* The following hook functions are required to get rows */
    next_ExecutorRun_hook = ExecutorRun_hook;
    ExecutorRun_hook = rdbaud_ExecutorRun_hook;

    next_ExecutorEnd_hook = ExecutorEnd_hook;
    ExecutorEnd_hook = rdbaud_ExecutorEnd_hook;

    /* Log that the extension has completed initialization */
    #ifndef EXEC_BACKEND
    ereport(LOG, (errmsg("rdb_audit extension initialized")));
    #else
    ereport(DEBUG1, (errmsg("rdb_audit extension initialized")));
    #endif /* EXEC_BACKEND */

    inited = true;
}
// --------------------------------------------------------------------------------
