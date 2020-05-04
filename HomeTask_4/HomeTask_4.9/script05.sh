#!/bin/bash

# task 4.9.5
# Create a script that reads a word from the screen and displays the number of characters in that word.

read -p "Enter a value: " value
echo "Number of characters per line: $(expr length $value)"
