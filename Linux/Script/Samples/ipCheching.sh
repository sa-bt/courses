#!/bin/bash
read -p "Please enter your IP: " IP
#IP="192d.168.27.500"

IP=`echo $IP | tr -d '[:alpha:]'`

DOTS=`echo $IP | tr -d [:digit:] | tr -d [:space:] | wc -c`

if [ $DOTS -eq 3 ]; then
  for i in 1 2 3 4
  do
    NUMBER=`echo $IP | cut -d '.' -f $i`
    if [ $NUMBER -gt 255 ]
     then
        echo "IP is not valid"
        exit 1
    fi
  done
  echo "IP is validated...."
  ping -c 1 $IP >>/dev/null
  if [ $? -eq 0 ]
  then
    echo "IP is pingable..."
  else
    echo "IP is not pingable"
  fi
  exit 0
  else
    echo "IP is not validated, Please try again"
fi