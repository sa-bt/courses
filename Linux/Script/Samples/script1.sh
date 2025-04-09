#!/bin/bash

while [ -z $VAR1 ]; do
    read -p "Please enter 1th number: " VAR1
    VAR1=`echo $VAR1 | tr -d [:alpha:][:blank:]`
done

while [ -z $VAR2 ]; do
    read -p "Please enter 2nd number: " VAR2
    VAR2=`echo $VAR2 | tr -d [:alpha:][:blank:]`
done

# no space between = and sides a=12 is valid and a= 45 is invalid
VAR3=`expr $VAR1 \* $VAR2`
if [ $VAR1 -gt $VAR2 ]; then
    VAR4=$[$VAR1/$VAR2]
else
    VAR4=$[$VAR2/$VAR1]
fi
echo "Multiply is: $VAR3"

echo "Dividing is: $VAR4"