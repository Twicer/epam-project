#!/bin/bash

# task 4.11.4
# Print the number of processes running as current and as root in the format:
# User Processes:
# <User>
# XX
# Root user processes:
# Yy

#   Output of processes launched from the current user
echo "Number of user $USER processes: " `ps -fu $USER | wc -l`
#   Display username
echo "Username: $USER"
#   Search for data and write it to a file
ps -fu $USER > rez04_1.txt

#   Output of processes launched from the root user
echo "Number of root user processes: " `ps -fu root | wc -l`
#   Search for data and write it to a file
ps -fu root > rez04_2.txt