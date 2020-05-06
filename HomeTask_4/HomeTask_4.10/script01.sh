#!/bin/bash

# task 4.10.1
# Write a script that displays prompts for data entry until quit is entered

exitCode=quit

while [ "$value" != "$exitCode" ]
do
  read -p "Enter a value: " value
done