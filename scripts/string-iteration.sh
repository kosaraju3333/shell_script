#!/bin/bash

name=Ramakrishna

echo $name

echo "length of name string is : ${#name}"

#echo ${name[3]}

for (( i=0; i<${#name}; i++ ));
do

	echo "${name:$i:1}" 

done


echo 
echo

echo ${name:4:2} 
#echo ${name:3:7}
#echo ${name:7:11}
