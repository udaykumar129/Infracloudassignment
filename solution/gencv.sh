#!/bin/sh

if [ "$1" = "" ]; then
num=1
    while [ $num -le 10 ]; do
        echo "$num, $(( $RANDOM ))" >> inputFile
        num=$(($num+1))
    done
fi
