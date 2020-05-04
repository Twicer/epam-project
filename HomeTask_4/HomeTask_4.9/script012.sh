#!/bin/bash

# task 4.9.12
# Try to display the value of a variable not previously declared and get the error message you specified.

variable=true
echo ${variable?}
echo ${nonVariable?}


