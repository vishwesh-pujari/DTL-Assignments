#!/bin/bash

# Program to convert a text file to a csv file

# Name     : Vishwesh Vivek Pujari
# MIS      : 111910127
# Division : 2
# Batch    : S4

echo "Method,Url,User-Agent,Pragma,Cache-Control,Accept,Accept-Encoding,Accept-Charset,Accept-Language,Host,Cookie,Content-Type,Connection,Content-Length" >> output.csv

count=0

read -p "Enter the name of the file : " fileName

while read line
do
	if [ `printf "%d" "'$line'"` -eq 13 ] # for blank line
	then
		continue
	fi

	if [ "${line:0:2}" == "id" ] || [ "${line:0:4}" == "modo" ] || [ "${line:0:8}" == "errorMsg" ] || [ "${line:0:2}" == "B2" ]
	then
		continue
	fi

	if [ $count -eq 0 ] # first line of record
	then
		if [ "${line:0:3}" == "GET" ]
		then
			echo -n "GET," >> output.csv  
			echo -n "\"""${line:4:${#line}}""\"," >> output.csv  	
			flag=1

		elif [ "${line:0:4}" == "POST" ]
		then 
			echo -n "POST," >> output.csv
			echo -n "\"""${line:5:${#line}}""\"," >> output.csv 
			flag=2
		fi
		((count++))
		
	else 
		if [ $flag -eq 1 ] # if method is GET
		then
			if [ $count -eq 10 ] 
			then
				echo -n "\"""${line#*:}""\"," >> output.csv 
				echo "\"""\"" >> output.csv
				count=0

			elif [ $count -eq 9 ]
			then
				echo -n "\"""${line#*:}""\"," >> output.csv 
				echo -n "\"""\"""," >> output.csv
				((count++))
				
			else
				echo -n "\"""${line#*:}""\"," >> output.csv
				((count++))
			fi

		elif [ $flag -eq 2 ] # if the method is POST 
		then
			if [ $count -eq 12 ]
			then
				echo  "\"""${line#*:}""\"" >> output.csv
				count=0
			else
				echo -n "\"""${line#*:}""\"," >> output.csv
				((count++))			
			fi

		fi	
	fi
done < $fileName
