#!/bin/bash  
  

#date +%a   Weekday  Mon
#date +%A   Weekday  Monday

#date +%b   Month  Jan
#date +%B   Month  January

#date +%d   Day  Day of the month(e.g 25)
#date +%D   Current Date  MM/DD/YY	
#date +%F   Current Date  shown in YYYY-MM-DD	
	







d=`date +%m-%d-%Y`  
  
echo "Date in format MM-DD-YYYY"  
echo $d #MM-DD-YYYY  


d=`date '+%A %d-%B, %Y'`  
  
echo "Date in format Weekday DD-Month, YYYY"  
echo $d # Weekday DD-Month, YYYY

d=`date +%D`

echo $d





