#!/bin/bash -x
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$((($RANDOM%899)+100))
 let "count += 1"
done

echo "${number[*]}"

secondgreatest=$(printf '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
echo $secondgreatest

secondsmall=$(printf '%s\n' "${number[@]}" | sort -r -n | tail -2 | head -1)
echo $secondsmall
