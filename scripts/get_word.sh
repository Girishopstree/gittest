#!/bin/bash
if [ $# -ne 3 ]
then
	echo "enter  three parameters"
	exit
fi

file_name=$1
line_number=$2
field=$3

if [ ${line_number} -eq 0 ]
then
	echo "line 0 does not exist"
	exit
fi

if [ ${field} -eq 0 ]
then
        echo "word 0 does not exist"
        exit
fi
source utils.sh

if [ -f "$file_name" ]
then
        echo "file exist"
	total_lines=`count_line ${file_name}`
	if [ ${line_number} -gt ${total_lines} ]
	then
		echo "Line not found"
		exit
	else
		total_words_in_line=`count_words_in_line ${line_number} ${file_name}`
		if [ ${field} -gt ${total_words_in_line} ]
		then
			echo "word not found"
			exit
		else
			get_word_in_line ${file_name} ${line_number} ${field} 
		fi
	fi
	
else
        echo "file does not exist"
fi
