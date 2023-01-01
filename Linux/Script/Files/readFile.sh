#!/bin/bash

#Bash Read File
value=`cat ../userInput.sh`
echo "$value"



#Reading File Using '$(<fileName>)
value=$(<../userInput.sh)
echo "$value"



#Reading File Content Using Script
file='../userInput.sh'  
  
i=1 
while read line; do  
  
#Reading each line  
echo "Line No. $i : $line"  
i=$((i+1))  
done < $file  



#Passing filename from Command line and reading the File

file=$1 
i=1 
while read  line; do  
  
#Readind each line in sequence 
echo "Line No. $i : $line"  
i=$((i+1)) 
echo $line  
done <$file  



#Reading file by omitting Backslash Escape
file=$1 
i=1 
while read -r line; do  
  
#Readind each line in sequence 
echo "Line No. $i : $line"  
i=$((i+1)) 
echo $line  
done <$file  

