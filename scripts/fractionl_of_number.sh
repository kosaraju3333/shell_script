#!/bin/bash

fractional=1
for (( i=1; i<=$1; i++ ))
do
	fractional=$((fractional * i))
done
echo "Fractional of $1 is $fractional"
