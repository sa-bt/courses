#!/bin/bash

: '
Syntax:

if [ condition ];  
then  
   <if block commands>  
else  
  <else block commands>  
fi  

'

#when the condition is true  
if [ 10 -gt 3 ];  
then  
  echo "10 is greater than 3."  
else  
  echo "10 is not greater than 3."  
fi  
  
#when the condition is false  
if [ 3 -gt 10 ];  
then  
  echo "3 is greater than 10."  
else  
  echo "3 is not greater than 10."  
fi  

read -p "Enter a value:" value  
if [ $value -gt 9 ];  
then  
  if [ $value -lt 11 ];  
  then  
     echo "$value>9, $value<11"  
  else  
    echo "The value you typed is greater than 9."  
  fi  
else echo "The value you typed is not greater than 9."  
fi  