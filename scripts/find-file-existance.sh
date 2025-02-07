#!/bin/bash

file_name=$1

if [ -z $file_name ];
then
    echo -e "argumet is not passed\npass the file name with path as the argument with script"
    exit
else
    if [ -f $file_name ];
    then
        echo "$file_name file is exists"
    else
        echo "$file_name file is  not exist"
    fi
fi

