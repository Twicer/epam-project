#!/bin/bash

# task 4.9.1
# Check the location of the bash shell and use this path in scripts #!/Full_path_to_program program_option
echo "Path to shell: $BASH" > rez_4.9.1.txt

# task 4.9.2
# We verify that bash is running using a special built-in variable.
ps -aux | grep 'bash' > rez_4.9.2.txt;

#task 4.9.3
# Create a directory where your scripts will be stored, for example /tmp/scripts.
mkdir $HOME/scripts/temp
ls -ld $HOME/scripts/temp > rez_4.9.3.txt
