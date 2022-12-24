#!/bin/bash

: "
Syntax of For Loop
for (( expression1; expression2; expression3 ))  
do  
commands  
done  

Or

for (( expression1; expression2; expression3 ))  
do  
commands  
done  
"

#sample1
for number in {0..100..10}
do
    echo "Num:"${number}
    sleep 0.5s
: '
s - seconds
m - minutes
h - hours
d - days
'
done

#sample2
for number in {100..0..10}
do
    echo "Num:"${number}
    sleep 1s
done

#sample3
array=(  "element 1" "element 2" "element 3" "element 4" "element 5" "element 6" "element7" )  
  
for i in "${array[@]}"  
do  
echo $i  
done  

#sample4
#For Loop to Read white spaces in String as word separators
str="Let's start  
learning from Javatpoint."  
  
for i in $str;  
do  
echo "$i"  
done  


#sample5
#For Loop to Read each line in String as a word
str="Let's start  
learning from   
Javatpoint."  
  
for i in "$str";  
do  
echo "$i"  
done  


#sample6
for word in Hello World!!
do
    echo "Word:"$word
done
