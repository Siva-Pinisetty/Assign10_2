#!/bin/bash
echo "Flip Coin Simulation Problem"
HEAD=0
TAIL=0
read -p "Enter the value to flip coins: " nmb
for ((i=1; i<=$nmb; i++))
do
	face=$((RANDOM%2))
	if [ $face -eq 1 ]
	then
#		echo "HEAD is WINNNER"
		((++HEAD))
	else
#		echo "TAIL is WINNER"
		((++TAIL))
	fi
done
echo "HEAD won $HEAD times"
echo "TAIL won $TAIL times"
