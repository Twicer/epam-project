#!/bin/bash

# task 4.10.1
# Write a script that displays prompts for data entry until quit is entered

exitCode=quit

while true
do
    read -p "Enter a value: " value
    if [ $# -eq 0] || ["$value" -ne "$exitCode"]
    then
        continue
    else
        exit 0
    fi
done