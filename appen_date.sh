#!/bin/bash

DAY=$(date +"%Y-%m-%d")

cd ~/

for file in *.sh
do
  mv $file $DAY-$file
done  
