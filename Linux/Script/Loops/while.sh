#!/bin/bash

#syntax
: '
while [ expression ];  
do  
commands;  
multiple commands;  
done  
'

while test $# -gt 0 
do 
echo $1
shift
done
read -p "Enter starting number: " snum  
read -p "Enter ending number: " enum  
  
while [[ $snum -le $enum ]];  
do  
echo $snum  
((snum++))  
done  
  
echo "This is the sequence that you wanted."  

