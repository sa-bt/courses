#!/bin/bash

#Example 1: Write Variables Side by Side

#Declaring the first String   
str1="We welcome you"  
  
#Declaring the Second String  
str2=" on Javatpoint."  
  
#Combining first and second string  
str3="$str1$str2"  
  
#Printing a new string by combining both   
echo $str3  




#Example 2: Using Double Quotes

#Declaring String Variable  
str="We welcome you"  
  
#Add the variable within the string  
echo "$str on Javatpoint." 

#Example 3: Using Append Operator with Loop

echo "Printing the name of the programming languages"  
#Initializing the variable before combining  
lang=""  
#for loop for reading the list  
for value in 'java''python''C''C++';  
do  
lang+="$value "  #Combining the list values using append operator  
done  
#Printing the combined values  
echo "$lang"  


#Example 4: Using the Printf Function
str="Welcome"  
printf -v new_str "$str to Javatpoint."  
echo $new_str  


#Example 5: Using Literal Strings

str="Welcome to"  
  
newstr="${str} Javatpoint."  
echo "$newstr"








