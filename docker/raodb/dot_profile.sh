export MYDIR=/opt/rdb
export PGCODE=$MYDIR/code
export PGDATA=$MYDIR/data
export PGSOFT=$MYDIR/soft
export PGLOG=$MYDIR/logs
export PGBIN=$PGSOFT/bin
export PGLIB=$PGSOFT/lib
export PGINC=$PGSOFT/include
export PGEXT=$PGSOFT/share/extension
export PATH=$PATH:$PGBIN
alias PGinit="${PGBIN}/initdb -D ${PGDATA}"
alias PGstart="${PGBIN}/pg_ctl -D ${PGDATA} start -l ${PGLOG}/postgres.log"
alias PGstop="${PGBIN}/pg_ctl -D ${PGDATA} stop"
alias PGstatus="${PGBIN}/pg_ctl -D ${PGDATA} status"
alias ll="ls -l "
alias vi="vim "
set -o vi
