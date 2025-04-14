#!/bin/bash

while  true
do
USE_SPACE=`df -Th| grep "/$"| awk '{print $6}' | tr -d [:punct:]`
FREE_SPACE=$[100-$USE_SPACE]
echo "` date +%Y/%m/%d-%H:%M:%S` => Available Disk Space: ${FREE_SPACE}%"
sleep 1
done