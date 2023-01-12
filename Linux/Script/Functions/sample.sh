#!/bin/bash


#Syntax
: '
function_name () {  
commands  
}  

OR

function function_name {  
commands  
}  

'

#sample1
function hello {
    echo "Hello World"
}
hello

#sample2 =>passing argument
function passArgument {
    echo $1
    echo $2
    echo $3
    echo $4
    echo $5
    echo $6
    echo $7
    echo $8

}
passArgument "I" "am" "a" "developer"


#sample3 => variable scope
v1="AA"
v2="BB"

myFunction(){
    local v1="CC"
    v2="DD"
    echo "Inside Function"  
echo "v1 is $v1."  
echo "v2 is $v2."  
}

echo "Before Executing the Function"  
echo "v1 is $v1."  
echo "v2 is $v2."  
  
myFunction 
echo "After Executing the Function"  
echo "v1 is $v1."  
echo "v2 is $v2."  


#Setting up a return status for a function  
  
print_it () {  
    echo Hello $1  
    return 5  
}  
  
print_it User  
print_it Reader  
echo The previous function returned a value of $?  
