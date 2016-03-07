#!/bin/bash
if [ $# -ne 1 ]
then
	echo "enter only one argument"
	exit
fi
file_name=$1
count_line()
	{
		file_name=$1
		wc -l < $file_name
	}
echo "our file is $file_name"
if [ -f "$file_name" ]
then 
	echo "file exists"
	count_line $file_name
else
	echo "file not exist"
fi
