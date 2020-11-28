#! /bin/bash
while [[ 1 -eq 1 ]]
do
read A B C

if [[ $A == "exit" ]]
then
 echo "bye"
 exit
fi

if [[ -z $A || -z $B || -z $C ]]
then 
	echo "error"
	exit
fi

if [[ $B != "+" && $B !=  "-" && $B !=  "*" && $B !=  "/" && $B != "%" && $B != "**" ]]
then 
	echo "error"
	exit
fi

if [[ $B == "+" ]]
then 
	let "D=A+C"
	echo "$D"
fi
if [[ $B == "-" ]]
then 
	let "D=A-C"
	echo "$D"
fi
if [[ $B == "*" ]]
then 
	let "D=A*C"
	echo "$D"
fi
if [[ $B == "/" ]]
then
	let "D=A/C"
	echo "$D"
fi
if [[ $B == "**" ]]
then 
	let "D=A**C"
	echo "$D"
fi
if [[ $B == "%" ]]
then 
	let "D=A%C"
	echo "$D"
fi
done
