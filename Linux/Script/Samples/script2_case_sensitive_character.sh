#!/bin/bash

while [ -z $VAR1 ]; do
  echo "This app change your input to lower case character, also this app delete space character and digit input"
    read -p "Please Enter Your Name: " VAR1
    VAR1=`echo $VAR1 | tr -d [:digit:][:blank:]`
done
echo $VAR1 | tr [:upper:] [:lower:]


