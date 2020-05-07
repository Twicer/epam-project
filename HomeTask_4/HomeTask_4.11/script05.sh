#!/bin/bash

# task 4.11.5
# Find and display 5 processes that consume the most memory in the system.

#   Enter the number of displayed lines
read -p "Enter the number of displayed lines: " size
#   Validation of input data
if [[ -z "$size" ]] || [[ "$size" -le 7 ]]
then
    echo "Unknown number of displayed words"
    exit 0
fi
#   Search for data and write it to a file
top -b -o +%MEM | head -n $size > rez05.txt