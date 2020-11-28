#!  /bin/bash

gcd ()
{
	if [[ -z $M ]]
	then
		echo "bye"
		exit
	
       elif [[ $M -eq $N ]]
        then
                echo "GCD is $M"
        elif [[ $M -gt $N ]]
	then
		let "M = M-N"
		gcd
	else
		let "N = N-M"
		gcd
	fi
}

while [[ 1 -eq 1 ]]
do
read M N

gcd
done
 



