#!/bin/bash
read -n 3 -p "Please enter your alias name: " INP
echo $INP
echo
read -t 60 -p "Please enter your command: " COM
echo $COM
echo
`echi $INP`