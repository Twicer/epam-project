#!/bin/bash

# task 4.12.1
# Create an automatic user password generator. Users.txt login file that uses a list of users
# Automatically generate passwords for all users,
# create a linux-system with generated passwords in the users script
# so that you can log in with the name of each user with a password created for it
# (here it is supposed to work with openssl),
# and also create a user * file for each user -login-password.txt,
# in which to put the username and the generated password.

#   The constant that stores the path to the shell
shellPath="/bin/bash"

#   Data entry for user generation - name mask, number of created users and password length
read -p "Enter a mask to create users: " maskUsers                          #   name mask
read -p "Enter the number of users that need to create: " countUsers        #   number of created users
read -p "Enter the password length: " passwordLength                        #   password length

#   Validation of Entered Data
if [ -z "$countUsers" ] || [ -z "$maskUsers" ] || [ -z "$passwordLength" ]
then
    echo "No data entered"
    exit 0
fi

#   Creating users in a loop and writing generated data to a file
for ((count=1; count <= $countUsers; count++))
do
    #   Generate a random password
    passwordUser=$(openssl rand -base64 $passwordLength)
    #   Create a group for the user
    groupadd "$maskUsers$count"
    #   Creating a user with a specific set of parameters
    # the path to the home directory,
    # the path to the shell,
    # group membership,
    # the presence of a generated password
    useradd -d /home/"$maskUsers$count" -s $shellPath -g "$maskUsers$count" -p $(echo $passwordUser | openssl passwd -1 -stdin) -m "$maskUsers$count"
    #   Writing generated data to a file
    echo -e ""$maskUsers$count"   | $passwordUser"\n >> "$maskUsers$count"-login-password.txt
    echo -e "$maskUsers$count" >> users.txt
done
