#include "postgres.h"
#include "fmgr.h"
PG_MODULE_MAGIC;
#include "miscadmin.h"
#include "utils/guc.h"
#include "utils/elog.h"
#include "libpq/auth.h"
#include "libpq/crypt.h"
#include "commands/user.h"

typedef struct VariableStatData VariableStatData;
typedef void (*ClientAuthentication_hook_type)(Port *port, int status);

static bool ext3_enabled = true;

static ClientAuthentication_hook_type client_auth_prev = NULL;

static inline void
ext3_log(const char *hook)
{
    elog(LOG, "ext3_%s", hook);
}


static void
ext3_client_auth_hook(Port *port, int status) {
    if (ext3_enabled) ext3_log("start ClientAuthentication_hook");
    if (client_auth_prev) client_auth_prev(port, status);
    if (ext3_enabled) ext3_log("end ClientAuthentication_hook");
}

void
_PG_init(void) {
    DefineCustomBoolVariable("ext3.enabled", "ext3 enable", NULL, &ext3_enabled, true, PGC_SUSET, 0, NULL, NULL, NULL);
    client_auth_prev = ClientAuthentication_hook;
    ClientAuthentication_hook = ext3_client_auth_hook;
}

