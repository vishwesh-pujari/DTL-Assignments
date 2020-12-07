#!/bin/bash

# Name     : Vishwesh Vivek Pujari
# MIS      : 111910127
# Division : 2
# Batch    : S4

# Bubble Sort Program

array=(1 2 3 4 5 6 7 8 9)
length=${#array[@]}

for ((i = 0; i < length; i++))
do
	isSorted=1
	for ((j = 0; j < length - 1 - i; j++))
	do
		if [ "${array[j]}" -gt "${array[j + 1]}" ]
		then
			isSorted=0
			temp=${array[j]}
			array[j]=${array[j + 1]}
			array[j + 1]=$temp
		fi	
	done

	if [ "$isSorted" -eq 1 ]
	then
		break
	fi
done

echo "${array[@]}"
