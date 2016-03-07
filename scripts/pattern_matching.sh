#!/bin/bash
if [ $# -ne 2 ]
then
	echo "enter two parameters"
	exit
fi
pattern=$1
file_name=$2
match()
	{
		pattern=$1
		file_name=$2
		grep -ni $pattern $file_name | cut -d ':' -f 1
	}

if [ -f "$file_name" ]
then
        echo "file exist"
        match "$pattern" $file_name 
else
        echo "file does not exist"
fi

