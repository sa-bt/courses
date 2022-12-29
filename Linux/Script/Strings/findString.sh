#! /bin/bash

: '
Bash StringLength
To calculate the length of a string, we can use any of the following syntax:

1.  ${#string}  
2.  expr length "$string"  
3.  expr "$string" :'.*'  
4.  $str | wc -c  
5.  $str |awk '{print length}'
'

#sample1
str="Welcome to Javatpoint"  
length=${#str}  
echo "Length of '$str' is $length"  


#sample2
length=`expr length "$str"`   
echo "Length of '$str' is $length"  


#sample3
length=`expr "$str" : '.*'`   
echo "Length of '$str' is $length"  


#sample4
length=`echo $str | wc -c`   
echo "Length of '$str' is $length"  


#sample5
length=`echo $str |awk '{print length}'`  
echo "Length of '$str' is $length"  