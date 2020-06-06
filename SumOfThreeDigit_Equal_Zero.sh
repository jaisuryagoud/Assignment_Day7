#!/bin/bash -x
arr=(1 2 -2 -3 -4 4 -1)
n=${#arr[@]}
for ((i=0; i<n-2; i++))
do
	for ((j=i+1; j<n-1; j++))
	do
		for ((k=j+1; k<n; k++))
		do
			if [ $((${arr[$i]}+${arr[$j]}+${arr[$k]})) -eq 0 ]
			then
				echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
			fi
		done
	done
done
