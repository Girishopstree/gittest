#!/bin/bash
if [ $# -ne 1 ]
then
	echo "pass one argument only"
	exit
fi
file_name=$1
remove()
	{
		file_name=$1
		rm -i $file_name
	}
if [ -f "$file_name" ]
then
        echo "file exist"
        remove $file_name
else
        echo "file does not exist"
fi


