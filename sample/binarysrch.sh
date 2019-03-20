echo "Enter array limit"
read limit
echo "Enter array elements"
n=1
while [ $n -le $limit ]
do
read num
eval arr$n=$num
n=`expr $n + 1`
done

i=1
y=`expr $limit - 1`
while [ $i -le $y ]
do 
j=`expr $i + 1`
while [ $j -le $limit ]
do 
eval m=\$arr$i
eval p=\$arr$j
if [ $m -gt $p ]
then 
eval arr$i=$p
eval arr$j=$m
fi
j=`expr $j + 1`
done
i=`expr $i + 1`
done
echo "Sorted list is:"
b=1
while [ $b -le $limit ]
do
eval m=\$arr$b
echo "$m"
b=`expr $b + 1`
done


echo "Enter element to be searched"
read key
low=1
high=$n
found=0
while [ $found -eq 0 -a $high -ge $low ]
do
mid=`expr \( $low + $high \) / 2`
eval t=\$arr$mid
if [ $key -eq $t ]
then
found=1
elif [ $key -lt $t ]
then
high=`expr $mid - 1`
else
low=`expr $mid + 1`
fi
done

if [ $found -eq 0 ]
then
echo "Unsuccessfull search"
else
echo "Successfull search, $key found at the position:`expr $mid`"
fi

