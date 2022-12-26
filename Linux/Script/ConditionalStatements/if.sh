#!/bin/bash

: '
Syntax:
if [ expression ];  
then  
statements  
fi  

if [ expression_1 ] && [ expression_2 ];  
then  
statements  
fi  
'

read -p "Enter Number: " number

if [ $number -eq 100 ];
then
echo "Your Number is equal "$number
fi

  
#if condition (greater than) is true  
if [ 10 -gt 3 ];  
then  
echo "10 is greater than 3."  
fi  
  
#if condition (greater than) is false  
if [ 3 -gt 10 ];  
then  
echo "3 is not greater than 10."  
fi  
  
#if condition (lesser than) is true  
if [ 3 -lt 10 ];  
then  
echo "3 is less than 10."  
fi  
  
#if condition (lesser than) is false  
if [ 10 -lt 3 ];  
then  
echo "10 is not less than 3."  
fi  
  
#if condition (equal to) is true  
if [ 10 -eq 10 ];  
then  
echo "10 is equal to 10."  
fi  
  
#if condition (equal to) is false  
if [ 10 -eq 9 ];  
then  
echo "10 is not equal to 9"  
fi  