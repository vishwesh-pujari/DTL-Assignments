#!/bin/bash

# Name     : Vishwesh Vivek Pujari
# MIS      : 111910127
# Division : 2
# Batch    : S4

# FILE HANDLING Assignment

read -p "Enter the name of file : " fileName

if [ -e $fileName ]
then
	echo "$fileName exists"
else
	echo "$fileName does not exist"
fi

if [ -f $fileName ]
then
	echo "$fileName exists and is a regular file"
else
	echo "$fileName doesn't exist or is not a regular file"
fi

if [ -d $fileName ]
then
	echo "$fileName exists and is a directory"
else
	echo "$fileName doesn't exist or is not a directory"
fi

if [ -s $fileName ]
then
	echo "$fileName is not empty"
else
	echo "$fileName is empty"
fi

if [ -r $fileName ]
then
	echo "$fileName has read permission"
else
	echo "$fileName doesn't have read permission"
fi

if [ -w $fileName ]
then
	echo "$fileName has write permission"
else
	echo "$fileName doesn't have write permission"
fi

if [ -x $fileName ]
then
	echo "$fileName has execute permission"
else
	echo "$fileName doesn't have execute permission"
fi

