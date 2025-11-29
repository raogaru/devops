SQL=/Users/rao/GitHub/devops/docker/raodb/ext/rdb_rpthtml
TMP=.
RPT=.
export PGPASSWORD=postgres
psql -h localhost -p 8434 -d postgres -U postgres -f ${SQL}/${1}.sql -q -o ${TMP}/${1}.tmp
psql -h localhost -p 8434 -d postgres -U postgres -f ${TMP}/${1}.tmp > ${RPT}/${1}.html

