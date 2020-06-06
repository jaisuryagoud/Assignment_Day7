#!/bin/bash -x
echo "Enter an integer:"
read input
if [ $input -lt 1 ];then
echo "Not Allowed!"
exit 1
fi

#find factors and prime
i=2
count=0
flag=0
for ((i; i<input; i++))
do
	if [ $(($input % $i)) -eq 0 ]
	then
		factor=$i
	for ((j=2; j<=$(($factor/2)); j++))
	do
		flag=0
	if [ $(($factor % $j)) -eq 0 ]
	then
		flag=1
		break
	fi
	done
if [ $flag -eq 0 ]
then
num[ss]=$factor
ss+=1
count=1
fi
fi
done
echo ${num[@]}

if [ $count -eq 0 ]
then
	echo "no prime factors found except 1 and $input"
fi
