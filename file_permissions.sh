#!/bin/bash

FILE=$1


if [ -f "$FILE" ]
   then
      echo "$FILE file is exists"
else
   echo "$FILE file does not exist"
   exit   
fi

if [ -w "$FILE" ]
     then
        echo "$FILE file has write permissions"

else
    echo "$FILE file does not have write permission"	

fi

if [ -x "FILE" ]
   then
      echo "$FILE file has execute permission"
else
    echo "$FILE file don't havde execute permission"	

fi


