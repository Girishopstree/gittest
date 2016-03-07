#!/bin/bash
if [ $# -ne 2 ]
then
	echo "give two agrument"
	exit
fi
file_name=$1
no_of_lines=$2

method()
	{
		sort -r $file_name | head -$no_of_lines
	#	head -5 $file_name
	}
if [ -f "$file_name" ]
then
	echo "file exist"
	method $file_name $no_of_lines
else
	echo "file does not exist"
fi
	
