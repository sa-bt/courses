#!/bin/bash
 str1="Pourya1"
 str2="pourya"

 if [ $str1 = $str2 ];
 then
 echo "two strings are equal"
 else
 echo "Not Equal"
 fi

 if [[ $str1 != $str2 ]];
 then 
 echo "Not Equal"
 else
 echo "two strings are equal"
 fi

if [ $str1 \< $str2 ];
then   
    echo "$str1 is less then $str2"  
else  
    echo "$str1 is not less then $str2"  
fi  
 

if [ $str1 \> $str2 ];  
then   
    echo "$str1 is greater then $str2"  
else  
    echo "$str1 is less then $str2"  
fi  



str="WelcometoJavatpoint"  
  
if [ -n $str ];  
then   
    echo "String is not empty"  
else  
    echo "String is empty"  
fi   


str=""  
  
if [ -z $str ];  
then   
    echo "String is empty."  
else  
    echo "String is non-empty."  
fi   