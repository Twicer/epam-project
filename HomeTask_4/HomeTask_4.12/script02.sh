#!/bin/bash

# task 4.12.2
# Take as a basis the project https://habr.com/en/post/155201/.
# Write a script that does the following:
# 1. At the initial start-up - calculation of checksums and archiving of the project.
# 2. periodic review of the project for changes.
# 3. If the project has changed, then write the new version to a new archive and start recompiling the project.

if [ -e sum_prod.txt ]
then
    md5sum $HOME/project/* > sum_prod_new.txt
    if [ "$(md5sum sum_prod.txt | awk '{print $1}')" != "$(md5sum sum_file_new.txt | awk '{print $1}')" ]
    then
        tar cvfz $HOME/backup/project-$(date +%Y-%m-%d_%k:%M:%S).tar.gz $HOME/project
        g++ $HOME/project/main.cpp $HOME/project/hello.cpp $HOME/project/factorial.cpp $HOME/project/functions.h -o $HOME/release/hello-$(date +%Y-%m-%d_%k:%M:%S)
    fi
else
    md5sum $HOME/project/* > sum_prod.txt
    tar cvfz $HOME/backup/project-source.tar.gz $HOME/project
    g++ $HOME/project/main.cpp $HOME/project/hello.cpp $HOME/project/factorial.cpp $HOME/project/functions.h -o $HOME/release/hello
fi
