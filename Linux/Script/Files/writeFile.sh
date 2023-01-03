#!/bin/bash

#Script to write the output into a file  
  
#Create output file, override if already present  
output=output_file.txt  
  
#Write data to a file  
ls > $output  

   
#Printing the content of the file  
cat $output  


#Appending the system information  
uname -a >> $output  

#Printing the content of the file  
cat $output  

#Checking the content of the file  
gedit output_file.txt  

#Write data to a file  
ls | tee $output 

echo "<<<List of Files and Folders>>>" | tee -a $output  
#Write data to a file  
ls | tee $output  
  
echo | tee -a $output  
#Append System Information to the file  
echo "<<<OS Name>>>" | tee -a $output  
uname | tee -a $output  