#!/bin/bash
if [ $# -ne 2 ]
then
	echo "enter two arguments"
        exit
fi

file_name=$1
text=$2
append_last()
        {
                
                file_name=$1
        	text=$2
		 sed -i "$ a $text" $file_name
        }

if [ -f "$file_name" ]
then
        echo "file exist"
        append_last $file_name "$text"
else
        echo "file does not exist"
fi

