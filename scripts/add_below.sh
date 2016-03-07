#!/bin/bash
if [ $# -ne 3 ]
then
	echo "enter exactly three arguments"
	exit
fi
line_number=$1
file_name=$2
text=$3
add_below()
	{
		line_number=$1
		file_name=$2
		text=$3

		sed -i "${line_number}i${text}" $file_name
	}

if [ -f "$file_name" ]
then
        echo "file exist"
        add_below $line_number $file_name $text
else
        echo "file does not exist"
fi

