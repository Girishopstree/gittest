#!/bin/bash
if [ $# -ne 1 ]
then
	echo "enter only one argument"
	exit
fi
dir_name=$1
create_directory()
{
			
	if [ -d "$dir_name" ]
	then 
		echo "directory already exist"
		exit
	else
		mkdir $dir_name
	fi
}
 
create_directory $dir_name
