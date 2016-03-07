#!/bin/bash
if [ $# -ne 2 ]
then 
	echo "enter exactly two argument"
	exit
fi
line_number=$1
file_name=$2
get_line()
	{
		line_number=$1
		file_name=$2
		sed "${line_number}q;d" $file_name
		echo "line to be searched is $line_number"
		echo "line to be searched in file is $file_name"
	}
if [ -f "$file_name" ]
then 
	echo "file exist"
	get_line "$line_number" $file_name
else
	echo "file does not exist"
fi


