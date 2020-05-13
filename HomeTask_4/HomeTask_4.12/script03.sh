#!/bin/bash

# task 4.12.3
# Create a script to collect system statistics
# At the initialization stage:
#   Create a task for cron,
# according to which every 5 minutes the file ~/memory/stat,
# as well as the logs received by the main script, will be packed into the archive.
#   Create a task for cron,
# according to which every 2 minutes information about the current state of memory
# will be added to the ~/memory/stat file,
# without taking into account the size of the swap and header.

# The main stage is performed every two minutes:
#   Using the vmstat command, for 30 s with an interval of 3 s,
# collect statistics on the use of system resources.
#   Calculate the average number of kernel context switches per second over a given time interval.
# Information in the log.
#   Get information about the average processor over the past 15s.
# Information in the log.
#   Describe the current status of the memory pages available on your system.
# Information in the log.
#   Describe the current status of the hard disk partitions available on your system.
# Information in the log.

vmstat -wdt 3 30 > vmstat_disk.log
vmstat -wt 3 30 > vmstat_memory.log