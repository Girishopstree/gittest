#!/bin/bash
if [ $# -ne 2 ]
then
	echo "enter two arguments"
	exit
fi
source_file=$1
target_file=$2
synchronize()
{
	rsync  $source_file/* $target_file/
}

if [ -d "$source_file" -a -d "$target_file" ]
then
	echo "both directories  exists"
	synchronize $source_file $target_file
else
	echo "directories missing"
fi
