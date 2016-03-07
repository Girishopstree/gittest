#!/bin/bash
if [ $# -ne 2 ]
then
	echo "pass two parameters"
	exit
fi
source_file=$1
target=$2
move()
	{
		source_file=$1
		target=$2
		mv $source_file $target
	}
if [ -f "$source_file" -a -f "$target" ]
then
        echo "both file exist"
        move "$source_file" "$target"
else
        echo "file does not exist"
fi


