#!/bin/bash
if [ $# -ne 1 ]
then
	echo "enter only one parameter"
	exit
fi

dir_name=$1
remove_dir(){
	if [ -d "$dir_name" ]
	then 
		echo "directory exist"
		rm -rf "$dir_name"
		echo "directory removed"
	else
		echo "directory does not exist"
		exit

	fi
		
}

remove_dir $dir_name
