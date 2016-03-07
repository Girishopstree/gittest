#!/bin/bash
echo -n "enter the directory path where u want to store the file>"
read directory_path
echo -n "enter the name of the file which yuou want to store>"
read file_name
if [ -d "$directory_path" ]
then
	echo " directory $directory_path exists."
else
	echo " error: directory $directory_path does not exist."
	
	echo " Enter y to create the new directory else press any key"
	read response

	if [ "$response" == "y" ]
	then 
		echo "create new directory"
		mkdir -p $directory_path
	else
		exit
	fi
fi
if [ -f "$directory_path/$file_name" ]
	then
		echo " file already exists. do you want to overwrite"
		read response1
		if [ "$response1" == "y" ]
		 then 
			rm $directory_path/$file_name
			touch $directory_path/$file_name
			echo "File Overwritten"
		else
			exit
		fi
	else 
		touch $directory_path/$file_name
		echo "File created"
fi
