#!/bin/bash

# task 4.11.1
# Find and display paths to files from the / usr directory (including subdirectories) that are larger than 20 MB in size.

read -p "Enter the search path: " path
if [ -z "$path" ]
then
    echo "Unknown location finder"
    exit 0
fi

read -p "Enter the size of the searched files: " sizeFile
if [-z "$sizeFile" ]
then
    echo "Unknown size of the file"
    exit 0
fi

find $path -size $sizeFile