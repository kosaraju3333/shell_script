#!/bin/bash

##### Declearing Variable #####

name=ramakrishna

echo "##### Accessing Variable #####"
echo "Variable name:$name"

##### Declearing Variables at once in array
names=(Rama Krishna RK)


echo "array index 0 variable: ${names[0]}"

echo "array index 1 variable: ${names[1]}"

echo "array index 2 variable: ${names[2]}"

echo "accessing all variable from array at once ${names[@]}"


##### Declearing array variables individually #####

fruits[0]=Mango
fruits[1]=Apple
fruits[2]=Bananna
fruits[3]=Watermelon

echo "##### printing the Decleared fruits array variables individually #####"
echo ${fruits[@]}


echo "length of fruits array is: ${#fruits[@]}"
