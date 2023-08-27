#!/bin/bash

function operation()
{
   read -p "Enter the first number: " Fnum
   read -p "Enter the second number: " Snum
   echo "$Fnum $1 $Snum = $((Fnum$1Snum))"
}

while [[ $input!=4 ]]
do
	echo "1. Addition"
	echo "2. Subtraction"
	echo "3. Multiplication"
	echo "4. Exit"

	read -p "Enter your choice: " input
	
	case $input in 
		1)
		  operation +
		   ;;
		2)
		  operation -
		  ;;
		3)
		   operation \*
		  ;;
		*)
		  echo "Exiting..."
		  break 
		 ;;

	esac
done


