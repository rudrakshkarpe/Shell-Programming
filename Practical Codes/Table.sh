echo "Enter NO.:"

read no             

echo "Enter range:"

read r

i=1


while test $i -le $r           
do

   temp=`expr $no \* $i`

   echo "$no * $i = $temp"

   i=`expr $i + 1`

done

