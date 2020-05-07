#!/bin/bash

# task 4.11.3
# Display the date, time, list of registered users, uptime systems.

echo -e "Current date: " `date` "\n"
echo "List of registered users in the system:"
who -a
echo -e "\nUptime systems: " `uptime`