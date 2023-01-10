#!/bin/bash

rectangle() {
    area=$(($1 * $2))
    echo "Rectangle Area is : $area"
}
square() {
    area=$(($1 * $1))
    echo "Square Area is : $area"
}
triangle() {
    area=$(($(($1 * $2)) / 2))
    echo "Triangle Area is : $area"
}

while [ -n "$1" ]; do
    case $1 in
    'rectangle')
        rectangle $2 $3
        shift
        shift
        ;;
    'square')
        square $2
        shift
        ;;
    'triangle')
        triangle $2 $3
        shift
        shift
        ;;
    esac
    shift
done
