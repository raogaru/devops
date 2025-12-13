for tabnum in {1..1000}
do 
echo "select count(1) from pxses.t${tabnum};" > sql/t${tabnum}.sql
echo "analyze pxses.t${tabnum};" >> sql/t${tabnum}.sql
echo "select pg_sleep((random()*1)::int);" >> sql/t${tabnum}.sql

done

exit

rm -f x.yaml
for tabnum in {1..1000}
do
echo "      - id: table_t${tabnum}" >> x.yaml
echo "        sql_file: \"scripts/pxses/sql/t${tabnum}.sql\"" >> x.yaml
done
