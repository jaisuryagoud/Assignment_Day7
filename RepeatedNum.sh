#!/bin/bash -x
num=10
Maxcount=100
while [ $num -le $Maxcount ]
do
sum=0
temp=$num
	while [ $num -gt 0 ]
	do
		r=$(($num%10))
		sum=$(($sum*10+$r))
		num=$(($num/10))
	done
num=$temp
if [ $num -eq $sum ]
then
	arr[ss]=$r
	((ss++))
fi
((num++))
done
echo ${arr[@]}

