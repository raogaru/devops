# --------------------------------------------------------------------------------
# prepare procedures test data
cat p.lst | while read p_name
do
echo $p_name 
cp p.csv ${p_name}.csv
done
# --------------------------------------------------------------------------------
# prepare functions test data
cat f.lst | while read f_name
do
echo $f_name 
cp f.csv ${f_name}.csv
done
