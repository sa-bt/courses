#!/bin/bash

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
        ;;
    esac

else
    priority=L
fi

echo $priority
case $1 in
add)
    case $2 in
    -t | --title)
        echo "0,$5,$3" >>tasks.csv
        echo "Add"
        ;;

    esac
    ;;
esac
