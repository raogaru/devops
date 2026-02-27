# --------------------------------------------------------------------------------
# prepare procedures test data
cat procedures.lst | while read p_name
do
echo $p_name 
cp procedures.csv ${p_name}.csv
done
# --------------------------------------------------------------------------------
# prepare functions test data
cat functions.lst | while read f_name
do
echo $f_name 
cp functions.csv ${f_name}.csv
done
# --------------------------------------------------------------------------------
