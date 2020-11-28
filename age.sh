#! /bin/bash

while [[ 1 == 1 ]]
do
echo "enter your name:"
read name
if [[ $name != "" ]]
	then
	echo "enter your age:"
	read age
	if [[ $age != 0 ]]
		then 
			if [[ $age -le 16 ]]
			 then 
				echo "$name, your group is child"
			elif [[ $age -le 25 ]]
			then
				echo "$name, your group is youth"
			else
				echo "$name, your group is adult"
			fi
		else
			echo "bye"
			break
			
	fi
	else 
		echo "bye"
		break 
fi
done
