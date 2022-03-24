#!/bin/bash

if [[ "$#" -ne 0 ]]; then
	echo "I don't want you to give any arguments!";
	exit 1;
fi

for i in $0; do
	chmod +x "$i";
done
while :
do
	echo;
	echo "=============== MENU ================";
	echo "1. To find factorial of given number";
	echo "2. To find greatest of three number";
	echo "3. To print given number in reverse order ";
	echo "4. To find even and odd numbers from given array";
	echo "5. Exit";
	echo "=====================================";
	echo -n "Enter your menu choice [1-5]: "
	
	read -r choice;
	case $choice in
		1)	#!/bin/bash
 
read -p "Enter a number -->" num
fact=1
 
for((i=2;i<=num;i++))
{
  fact=$((fact*i))
}
 
echo $fact
		;;
		
		2)	echo "Enter Num1"
read num1
echo "Enter Num2"
read num2
echo "Enter Num3"
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo $num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo $num2
else
    echo $num3
fi
		;;
		
		3)	echo enter n
read n
num=0
while [ $n -gt 0 ]
do
num=$(expr $num \* 10)
k=$(expr $n % 10)
num=$(expr $num + $k)
n=$(expr $n / 10)
done
echo number is $num
		;;
		
		4)	echo -n "Enter a number:"
read n
echo -n "RESULT: "
if [ `expr $n % 2` == 0 ]
then
	echo "$n is even"
else
	echo "$n is Odd"
fi

		;;
		
		
		5)	echo "Bye Bye!"; echo; exit 1;;
		
		*)	echo;
			echo "Please give an input between 1-5!";;
	esac
done