#!/bin/bash

# task 4.8.1
# Variable for storing the path to the source file.
path="$HOME/scripts/rezult.txt"
# Advanced recursive listing of home directory.
ls -alhR > $path

# task 4.8.2a
# Replacing a username using the command sed.
sed 's/asemencha/alex/g' $path > rez02A.txt

# task 4.8.2b
# Replacing a username using the command awk.
awk 'gsub("asemencha","root")' $path > rez02B.txt

# task 4.8.3
# Delete a line with the total number of files.
sed '/total/d' $path > rez03.txt

# task 4.8.4
# Display columns: file creation date and its name.
awk '{print $6, $7, $8, $9}' $path > rez04.txt

# task 4.8.5
# Find and display all file names that contain numbers.
find -iname '*[0-9].*' > rez05.txt

#task 4.8.6
# Find and display all file names that have the extension.
find -iname '*.*' > rez06.txt
