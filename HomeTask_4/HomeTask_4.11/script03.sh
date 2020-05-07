#!/bin/bash

# task 4.11.3
# Display the date, time, list of registered users, uptime systems.

#   Display current date and time
echo -e "Current date and time: " `date` "\n"

#   Displays a list of registered users in the system
echo "List of registered users in the system:"
who -a

#   Display uptime systems
echo -e "\nUptime systems: " `uptime`