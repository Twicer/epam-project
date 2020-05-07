#!/bin/bash

# task 4.11.4
# Print the number of processes running as current and as root in the format:
# User Processes:
# <User>
# XX
# Root user processes:
# Yy

#   Output of processes launched from the current user
echo "User Processes: " `ps -fu $USER | wc -l`
echo $USER
ps -fu $USER

#   Output of processes launched from the root user
echo -e "\nRoot user processes: " `ps -fu root | wc -l`
ps -fu root