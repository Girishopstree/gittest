#!/bin/bash
if [ $# -ne 1 ]
then
	echo "pass exactly one argument"
	exit
fi

file_name=$1
existence(){
	if [ -f "$file_name" ]
	then
		echo "file exist"
	else 
		echo "file does not exist"
	fi
}
existence $file_name
