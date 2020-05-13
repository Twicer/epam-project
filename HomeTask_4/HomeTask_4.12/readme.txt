Task 4.12.1
In the first task, passwords are generated, all data is written to a file,
but it is not possible to log in as a user with the created data.
I tried different designs, but still I can’t log in with the created password.
echo "YourPassword" | passwd -stdin UserName
echo "newuser:newpassword" | chpasswd
$(openssl passwd -1 $passwordUser)
$(echo "password" | openssl passwd -1 -stdin)
echo -e "YourPassword\nYourPassword\n" | passwd -stdin UserName

Task 4.12.2
For some reason, the conditions for comparison are not quite worked out correctly.

Task 4.12.3
Unfortunately I did not have time to perform this task.