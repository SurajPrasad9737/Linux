#!/bin/bash
read -p "Enter a string : " str
len=${#str}
echo $len
reversed=""

while [ $len -gt 0 ];do
    len=$((len-1))
    echo "$len"
    reversed="$reversed${str:len:1}"
done
echo "$reversed"