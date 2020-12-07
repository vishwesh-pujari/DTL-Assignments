#!/bin/bash

# Name     : Vishwesh Vivek Pujari
# MIS      : 111910127
# Division : 2
# Batch    : S4

# Calculator in shell scrpiting

while true
do
	echo "============Calculator============"
	echo "Press + to perform addition"
	echo "Press - to perform subtraction"
	echo "Press * to perform multipication"
	echo "Press / to perform division"
	echo "Press % to perform modulo"
	echo "Press q to quit"

	read choice

	case $choice in
		"+" )
			read -p "Enter first number : " num1
			read -p "Enter second number : " num2
			echo $((num1 + num2));;
		"-" )
			read -p "Enter first number : " num1
			read -p "Enter second number : " num2
			echo $((num1 - num2));;
		"*" )
			read -p "Enter first number : " num1
			read -p "Enter second number : " num2
			echo $((num1 * num2));;
		"/" )
			read -p "Enter first number : " num1
			read -p "Enter second number : " num2
			echo $((num1 / num2));;
		"%" )
			read -p "Enter first number : " num1
			read -p "Enter second number : " num2
			echo $((num1 % num2));;
		"q" )
			break;;

		* )
			echo "Invalid choice";;
	esac
	read -p "Press any key to continue" 
	clear
done
