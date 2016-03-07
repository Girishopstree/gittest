#!/bin/bash
if [ $# -ne 2 ]
then
	echo "enter only two arguments"
	exit
fi

dir_path=$1
pattern=$2
match_pattern()
        {
		dir_path=$1
		pattern=$2
                find $dir_path -maxdepth 1 -type f | grep "$pattern"
        }

echo "directory is $dir_path"
if [ -d "$dir_path" ]
then
	echo "directory exists"
	match_pattern $dir_path ${pattern}
else
	echo "Directory not exist"
fi
