#!/bin/bash

# task 4.11.2
# Count the number of files, the number of hidden files in the current user's home directory and display the result in the format:
# User home directory
# <User>
# contains regular files:
# XX
# hidden files:
# Yy

#   Output path to user home directory
echo "$USER home directory: " $HOME
#   Display username
echo "Username: $USER"
#   Display the number of files found
echo "Contains regular files: " `find $HOME -type f | wc -l`
#   Search for files and write data to a file
find $HOME -type f > rez02_1.txt
#   Display the number of hidden files
echo "Contains hidden files: " `find $HOME -name ".*" -type f | wc -l`
#   Search for hidden files and write data to a file
find $HOME -name ".*" -type f > rez02_2.txt
