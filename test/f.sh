clear
echo "Enter a file name"
read file
w=`cat $file | wc -w`
c=`cat $file | wc -c`
echo "Words = $w"
echo "Characters = `expr $c - 1`"
s=0
j=' '
n=1
a=0
while [ $n -lt $c ]
do
ch=`cat $file | cut -c $n`
if [ "$ch" == "$j" ]
then
s=`expr $s + 1`
fi
case $ch in
(a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|r|s|t|u|v|w|x|y|z) a=`expr $a + 1`
esac
n=`expr $n + 1`
done
echo "Whitespaces = $s"
echo "Special characters = `expr $c - $s - $a - 1` "
