#!/bin/bash
if [ $# -ne 3 ]
then
        echo "enter exactly three argument"
        exit
fi
line_number=$1
file_name=$2
text=$3
get_line()
        {
                line_number=$1
                file_name=$2
                sed -i "${line_number} a $text" $file_name


        }


if [ -f "$file_name" ]
then
        echo "file exist"
        get_line "$line_number" $file_name $text
else
        echo "file does not exist"
fi


