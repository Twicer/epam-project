#!/bin/bash
# Create a script that displays a square of the numbers entered as arguments (positional parameters), regardless of their number.

#   Checking of incoming data
if [ $# -eq 0 ]
    then
        echo "No incoming data"
        exit 0
fi
#   Set the initial value of the counter
count=1

#   Output of all parameters to a string   
for param in "$*"                                                                                                                                           for param in "$*"
do
    echo "Parameters = $param"
    count=$(($count + 1))
done

#   Reset counter
count=1

#   Display the squares of the entered parameters
for param in "$@"
do
    temp=$param
    let "temp=temp**2"
    echo "Parameter square  #$count = $temp"
    count=$(($count + 1))
done