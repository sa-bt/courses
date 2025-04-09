#!/bin/bash
#read -p "Please enter your IP: " IP
IP="192d.168.1.1"

IP=`echo $IP | tr -d '[:alpha:]'`
echo "IP:>>>";
echo $IP;
DOTS= `echo $IP | tr -d '[:digit:]' | wc -c`

echo "DOTS=>>>>>>>>";
echo $DOTS;
if [$DOTS -eq 3 ]
then
for i in 1,2,3,4
do
echo $i
done
fi
# echo $DOTS
#Ip validation
echo "Hello World"