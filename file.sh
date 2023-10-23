#!/bin/bash
#creating a menu with  different options
echo "User enter full names!!!"
read names
echo "Hello $names, you are welcome to our menu. Here we automate file operations "

echo "Menu:"
echo "1. Date"
echo "2. Search for files by extension within the specified directory (/Home/Desktop/practice)"
echo "3. Count to 100 in file.sh"
echo "4.Backup a Desktop directory to a choosen location"
echo "5.Exit the Menu"
echo -n "Enter your Menu choice [1-5]"
echo "which option will you love to choose?"

# Running a forever loop using While statement
while :
do

read choice

case  $choice in
#pattern 1 
1) echo "you have selected the option 1"
   echo `date`;;
#pattern 2
2) echo "You have selected option 2"
echo "Enter the extension to search for: "
             read extension
            Path1=/home/ogen/Desktop/practice
            echo "Searching for files with .$extension in $Path1..."
	    ls -l | grep "$extension"	
	    ;;
   

   
#pattern 3
3)  echo "You have selected option 3"
            Path=/home/ogen/Desktop/practice
            echo "Counting to 100 in file.sh..."
               wc -l file.sh;;

#pattern 4
4)
            echo "You have selected option 4"
            Path=/Home/Desktop/notes/LPI
            echo "Enter the destination location to backup the  directory ($Path): "
            read destination
            echo "Backing up the Desktop directory to $destination $Path...";;
#pattern 5
5)
            echo "You have selected option 5"
            echo "Quitting..."
            exit;;
        *)
            echo "Invalid option";;
    esac
done
#1)date >> Menu.log;;
#2)find >> Menu.log;;
#3)wc >> Menu.log;;
#4)cp >> Menu.log;;
#@5)Exit >> Menu.log;; 
 
#"exit status code"
