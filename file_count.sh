#!/bin/bash

file_count () {
        local dir_path=$1
	echo "the number of files in the $dir_path directory"
	num_files=$(ls $dir_path -lht | wc -l)
	echo $num_files

}

file_count /home/ubuntu/my_work

file_count /etc

file_count /var

file_count /usr/bin
