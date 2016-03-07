#!/bin/bash
if [ $# -ne 1 ]
then
	echo "enter only one argument"
	exit
fi
dir_name=$1
create_dir(){
	dir_name=$1

	mkdir /home/girish/$dir_name
}

if [ -d "$dir_name" ]
then
 	echo "directory exist"
	exit
else
	create_dir $dir_name
fi
