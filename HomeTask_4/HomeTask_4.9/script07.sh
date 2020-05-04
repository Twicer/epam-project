#!/bin/bash

# task 4.9.7
# Write a script that sequentially takes two arguments and displays the larger one.
# If there are more than two arguments, display an error message.

#       Check accepted parameters 
if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo "More than three parameters entered"
else
    echo "First value: $1"
    firstValue=$1
    echo "Second value: $2"
    secondValue=$2
    #   Comparison of two parameters, and the highest output
    if [ $firstValue -gt $secondValue ] ; then
            echo "The greatest value is first value: $firstValue"
    else
            echo "The greatest value is second value: $secondValue"
    fi
fi
