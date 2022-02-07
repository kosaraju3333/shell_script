#!/bin/bash
read -p 'Enter file path: ' FILE_PATH

echo $FILE_PATH

if [ -f "$FILE_PATH" ]
  then
     echo "$FILE_PATH is regural file"
elif [ -d "$FILE_PATH" ]
   then	
      echo "$FILE_PATH is directory"
else
   echo "$FILE_PATH is another type of file "
fi

ls -lht $FILE_PATH   

