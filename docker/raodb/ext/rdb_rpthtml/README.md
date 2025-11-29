# --------------------------------------------------------------------------------
# make
cd $PGCODE/contrib/rdb_rpthtml
make install

# --------------------------------------------------------------------------------
# create extension
psql 
drop extension if exists rdb_rpthtml;
create extension if not exists rdb_rpthtml;
select * from v$functions where function_name like 'rpt$%';

# --------------------------------------------------------------------------------
# run report from container
vi call.sql && \
rm -f /opt/rdb/rpt.tmp && \
/opt/rdb/rpt.html && \
psql -f call.sql -q -o /opt/rdb/rpt.tmp && \
psql -f /opt/rdb/rpt.tmp > /opt/rdb/rpt.html
# --------------------------------------------------------------------------------
# run report from host
SQL=.
TMP=.
RPT=.
export PGPASSWORD=postgres
psql -h localhost -p 8434 -d postgres -U postgres -f ${SQL}/${1}.sql -q -o ${TMP}/${1}.tmp
psql -h localhost -p 8434 -d postgres -U postgres -f ${TMP}/${1}.tmp > ${RPT}/${1}.html


# --------------------------------------------------------------------------------
