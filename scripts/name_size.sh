#!/bin/bash
if [ $# -ne 1 ]
then
	echo "pass only one argument"
	exit
fi
dir_name=$1
list()
	{
		dir_name=$1
		find -type f -printf "%f  %s \n"|sort
	}
echo "the file is to be searched in $dir_name"
if [ -d "$dir_name" ]
then
	echo "directory exist"
	list "$dir_name"
else 
	echo "directory not found"
	exit
fi
