sum=0
for i in $*
do
sum=`expr $sum + $i`
done
echo "Average:"
echo `echo "scale=2; $sum/$#" |bc`

