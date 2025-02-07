#!/bin/bash

#### Checking whether arguments are passed to script or not.
if [ $# -eq 0 ]
then
    echo -e "ZERO arguments passed to script\npls pass the file names with location as arguments to shell script"
    exit
fi

for files in $@
do
    if [ -f $files ]
    then
        echo -e "$files file is exists"
    else
        echo -e "$files file is not exist"
    fi
done