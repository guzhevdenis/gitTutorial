#! /bin/bash

var = $1
if  [[ $var -eq 0 ]]
then 
	echo "No students"
else 
	case $var in
	1)
		echo "1 student"
		;;
	2) 
		echo "2 student"
		;;
	3)
		echo "3 student"
		;;
	4)
		echo "4 student"
		;;	
	*)
		echo "A lot of students"
	esac
fi
