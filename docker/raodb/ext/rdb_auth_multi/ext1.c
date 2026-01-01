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

static bool ext1_enabled = true;

static ClientAuthentication_hook_type client_auth_prev = NULL;

static inline void
ext1_log(const char *hook)
{
    elog(LOG, "ext1_%s", hook);
}


static void
ext1_client_auth_hook(Port *port, int status) {
    if (ext1_enabled) ext1_log("start ClientAuthentication_hook");
    if (client_auth_prev) client_auth_prev(port, status);
    if (ext1_enabled) ext1_log("end ClientAuthentication_hook");
}

void
_PG_init(void) {
    DefineCustomBoolVariable("ext1.enabled", "ext1 enable", NULL, &ext1_enabled, true, PGC_SUSET, 0, NULL, NULL, NULL);
    client_auth_prev = ClientAuthentication_hook;
    ClientAuthentication_hook = ext1_client_auth_hook;
}

