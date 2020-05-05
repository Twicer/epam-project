#!/bin/bash

# task 4.10.2
# Write a script that writes the current time and date and the number of processes to the file every minute.
# In this case, the file should be created in the directory /home/user/tmp regardless of the user and the system.
# Run it in the background.

echo "`mkdir /home/$USER/temp`"
echo "`touch /home/$USER/temp/rezult.txt`"
echo "ID-процесса - $$" >> /home/$USER/temp/rezult.txt
while (true)
do
    echo "Current time: `date +%H:%M:%S`" >> /home/$USER/temp/rezult.txt
    echo "Current date: `date +%D`" >> /home/$USER/temp/rezult.txt
    echo "Processes in the system: `ps -e | wc -l`" >> /home/$USER/temp/rezult.txt
    echo "=---=---=---=---=---=---=---=---=" >> /home/$USER/temp/rezult.txt
sleep 60
done
