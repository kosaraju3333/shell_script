#!/bin/bash

read -p 'Enter the Name of the person_1: ' person1_name
read -p 'Enter the Name of the person_2: ' person2_name

echo $person1_name
echo $person2_name

echo 

echo "Checking variable person1_name has non-zero length or not"
if [ -z $person1_name ];
then 
    echo "person1_name variable is empty"
    exit

fi

echo "Checking variable person2_name has non-zero length or not"

if [ -n $person2_name ];
then 
    echo "person2_name variable is not empty"

fi