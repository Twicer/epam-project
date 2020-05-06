#!/bin/bash

# Create a script to solve a linear equation using a function.

#   Entering a linear equation in the format ax+b=0
read -p "Entering a linear equation in the format ax+b=0: "value
#   Calculation of the value of a linear equation
echo $value | sed -e 's/[\+\-\*x\=]/ /g' | awk '{ print ($3-$2)/$1; }'