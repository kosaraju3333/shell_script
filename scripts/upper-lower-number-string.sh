##########################################################################
###									 #
### Count Number of Upper,Lower,numbers,Special, chars in given string   #
###									 #
##########################################################################

#!/bin/bash

upper=0
lower=0
number=0
special=0

read -p 'Enter your USERNAME: ' username
read -s -p 'Enter your PASSWORD: ' password
#echo "USERNAME: $username"

echo "Length of username is: ${#username}"

for (( i=0; i<${#username}; i++ ));
do

	char=${username:i:1}
	#echo $char
	if [[ $char =~ [A-Z] ]] ;
	then
		upper=$(( $upper + 1))
	elif [[ $char =~ [a-z] ]];
	then
		lower=$(( $lower + 1 ))
	elif [[ $char =~ [0-9] ]];
	then
		number=$(( $number + 1 ))
	else
		special=$(( $special + 1 ))
	fi
	 
done

echo number 0f upper case letters are: $upper
echo number 0f lower case letters are: $lower
echo number 0f numbers are: $number
echo number 0f special char are: $special
