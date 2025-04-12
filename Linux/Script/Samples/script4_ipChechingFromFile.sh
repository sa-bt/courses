#!/bin/bash


PATH=$(pwd)
FILE="ipList.txt"
IP_OUTPUT="${PATH}/output.txt"


IP_LIST="${PATH}/${FILE}"
while read LINE
do
    /bin/ping -c 1 $LINE > /dev/null
    if [ $? -eq 0 ]; then
        echo "`/bin/date +%Y/%m/%d-%H:%M:%S `IP $LINE is pingable "| /bin/tee -a "$IP_OUTPUT"
    else
      echo "`/bin/date +%Y/%m/%d-%H:%M:%S `IP $LINE is not reachable" |/bin/tee -a "$IP_OUTPUT"
    fi
done < "$IP_LIST"

