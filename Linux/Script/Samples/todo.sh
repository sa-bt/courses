#!/bin/bash

while test $# -gt 0 
do 
if [ $5 ]; then
    case $5 in
    L)
        priority=L
        ;;
    M)
        priority=M
        ;;

    H)
        priority=H
        ;;
    *)
        echo "Option -p|--priority Only Accept L|M|H"
        exit 0
        ;;
    esac

else
    priority=L
fi
case $1 in
add)
    case $2 in
    -t | --title)
        echo "0,$priority,\"$3\"" >>tasks.csv
        echo "Add"
        ;;
        *)
        echo "Option -t|--title Needs a Parameter"
        exit 0
    esac
    ;;
esac
shift
done




