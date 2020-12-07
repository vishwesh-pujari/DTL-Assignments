#!/bin/bash

# Name     : Vishwesh Vivek Pujari
# MIS      : 111910127
# Division : 2
# Batch    : S4

# String MAnipulation in shell scrpiting

while true
do
	echo "String Manipulation Program"
	echo "1. Compare two strings"
	echo "2. Join two strings"
	echo "3. Find length of String"
	echo "4. Occurence of character"
	echo "5. Occurence of word"
	echo "6. Reverse String"
	echo "7. Quit"

	read -p "Enter your choice : " choice

	case $choice in 
		"1" )
			read -p "Enter first string : " str1
			read -p "Enter second string : " str2 
			if [ $str1 == $str2 ]
			then
				echo "Strings are equal"
			else
				echo "Strings are unequal"
			fi
			;;

		"2" )

			read -p "Enter first string : " str1
			read -p "Enter second string : " str2
			str3=$str1" "$str2
			echo "Joint string is $str3"
			;;

		"3" )
			read -p "Enter a string : " str
			length=${#str}
			echo "Length of string is $length"
			;;

		"4" )
			read -p "Enter the string : " str
			read -p "Enter the character to be searched : " ch
			length=${#str}
			for ((i = 0; i < $length; i++))
			do
				if [ ${str:$i:1} == $ch ]
				then
					echo "$ch is found at index $i"
					break
				fi
			done
			if [ $i -eq $length ]
			then
				echo "$ch not found"
			fi
			;;

		"5" )
			read -p "Enter the string : " str
			read -p "Enter the word to be searched : " word
			lengthOfStr=${#str}
			lengthOfWord=${#word}
			i=0
			while [ $i -lt $lengthOfStr ] && [ $((lengthOfStr - i)) -ge $lengthOfWord ]
			do
				if [ "${str:$i:$lengthOfWord}" == "$word" ]
				then
					echo "$word is found at index $i"
					break
				fi
				((i++))
			done
	
			if [ $i -eq $lengthOfStr ] || [ $((lengthOfStr - i)) -lt $lengthOfWord ] # if no matching word was found 
			then
				echo "$word not found"
			fi	
			;;

		"6" )
			read -p "Enter the string : " str
			lengthOfStr=${#str}
			revStr=""
	
			for ((i = $lengthOfStr - 1; i >= 0; i--))
			do
				revStr=$revStr${str:$i:1}
			done
			echo "$revStr"
			;;

		"7" )
			break;;
		
		
		* )
			echo "Invalid Choice";;
	esac
	read -p "Press any key to continue"
	clear
done
