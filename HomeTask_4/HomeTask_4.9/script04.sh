#!/bin/bash

# task 4.9.4
# Create a script that displays the following message: In my home directory <n> subdirectory: <name>.
# n - quantity, name - the name of the directory.

# =========== Search Function ==========
search () {
   for dir in `echo *`                          #   A list of all files in the current directory, without line feed characters.
   do
      if [ -d "$dir" ] ; then                   #   If this is a directory
         temp=0                                 #   Temporary variable to maintain directory nesting level
         while [ $temp != $deep ]               #   Keep track of inner nested loop.
         do
            echo -n "|   "                      #   Show vertical link character, with 2 spaces and no line feed
            temp=`expr $temp + 1`               #   Increase temp.
         done
         if [ -L "$dir" ] ; then                #   If a symbolic link to a directory
            #   Show horizontal connector and linked directory name but without date/time
            echo "+---$dir" `ls -l $dir | sed 's/^.*'$dir' //'`
         else
            echo "+---$dir"                     #   Print the horizontal connector and the name of the directory
            if cd "$dir" ; then                 #   If you can enter the directory
               deep=`expr $deep + 1`            #   Increase nesting level
               search                           #   Recursion call
               numDirs=`expr $numDirs + 1`      #   Increase Directory Counter
            fi
         fi
      fi
   done
   cd ..                                        #   Rise one level up
   if [ "$deep" ] ; then                        #   If deep = 0 (returns TRUE)
      searchFinal=1                             #   set the sign of the end of the search
   fi
   deep=`expr $deep - 1`                        #   Reduce nesting level
}

# ========== Main Funcrion ==========
if [ $# = 0 ] ; then
   cd `pwd`                                     #   If the command line argument is missing, then the current directory is used
else
   cd $1                                        #   otherwise go to the specified directory
fi
echo "Start directory = `pwd`"
searchFinal=0                                   #   Search term sign
deep=0                                          #   Nesting level
numDirs=0
temp=0

while [ "$searchFinal" != 1 ]                   #   Пока поиск не закончен
do
   search                                       #   Call the search function
done
echo "Total Directories = $numDirs"

exit 0
