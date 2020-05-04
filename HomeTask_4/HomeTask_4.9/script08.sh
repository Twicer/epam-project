#!/bin/bash

# task 4.9.8
# Check what position the 'a' character is in path.

path=$(pwd)
echo "Position of 'a' character in the path variable: `expr index $path a`"
