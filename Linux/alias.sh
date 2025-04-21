#!/bin/bash
read -n 3 -p "Please enter your alias name: " INP
echo $INP
echo
if [ -z "$INP" ]; then
    echo "Alias name can not be empty."
    exit 1
fi

read -t 60 -p "Please enter your command for $INP: " COM
echo $COM
echo
if [ -z "$COM" ]; then
    echo "Command can not be empty."
    exit 1
fi
echo "alias $INP=\"$COM\"" | bash
