#!/bin/bash
if [ $# -ne 2 ]
then
	echo "enter exactly two arguments"
	exit
fi
name=$1
lines="$2"
append()
	{
		name=$1
		lines=$2
		if grep -x "$lines" $name
		then
			echo "line already exist"
			exit

		else
			echo "$lines" >> $name
			echo "$lines appended"
		fi
	}
if [ -f "$name" ]
then 
	echo "file exist"
	append $name "$lines"
else
	echo "file not exist"
fi
