#!/bin/bash

count_line(){
        file_path=$1
        number_of_lines=`wc -l < $file_name`
        echo "$number_of_lines"
}


get_word_in_line(){
        file_name=$1
        line_number=$2
        field=$3
        sed "${line_number}q;d" $file_name | cut -d ' ' -f $field
}

get_line_in_file(){
        file_path=$1
        line_number=$2
        line=`sed "${line_number}q;d" $file_path`
        echo "${line}"
}

count_words_in_line(){
        line_number=$1
        file_name=$2
        line=`get_line_in_file ${file_name} ${line_number}`
        number_of_words_in_line=`echo $line | wc -w`
        echo "${number_of_words_in_line}"
}
