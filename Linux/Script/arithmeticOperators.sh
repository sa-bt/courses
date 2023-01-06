#!/bin/bash

sum=$((10*2))
echo "Sum = "$sum

((sum=5*9))
echo "Sum = "$sum   

num1=4
num2=6
((sum=$num1+$num2))
echo "Sum = "$sum   


((sum=num1+num2))
echo "Sum = $sum"   



x=80  
y=20  
echo "x=8, y=2"  
echo "Addition of x & y"  
echo $(( $x + $y ))  
echo "Subtraction of x & y"  
echo $(( $x - $y ))  
echo "Multiplication of x & y"  
echo $(( $x * $y ))  
echo "Division of x by y"  
echo $(( $x / $y ))  
echo "Exponentiation of x,y"  
echo $(( $x ** $y ))  
echo "Modular Division of x,y"  
echo $(( $x % $y ))  
echo "Incrementing x by 5, then x= "  
(( x += 5 ))   
echo $x  
echo "Decrementing x by 5, then x= "  
(( x -= 5 ))  
echo $x  
echo "Multiply of x by 5, then x="  
(( x *= 5 ))  
echo $x  
echo "Dividing x by 5, x= "  
(( x /= 5 ))  
echo $x  
echo "Remainder of Dividing x by 5, x="  
(( x %= 5 ))  
echo $x  

