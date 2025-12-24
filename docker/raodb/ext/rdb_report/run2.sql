SQL=.
TMP=.
RPT=.
psql -f ${SQL}/${1}.sql -q -o ${TMP}/${1}.tmp
psql -f ${TMP}/${1}.tmp > ${RPT}/${1}.html

