#!/bin/bash
echo "Flip Coin Simulation Problem"
HEAD=0
TAIL=0
while [[ $HEAD -lt 21 && $TAIL -lt 21 ]]
do
	face=$((RANDOM%2))
	if [ $face -eq 1 ]
	then
		((++HEAD))
	else
		((++TAIL))
	fi
done
echo "HEAD faces $HEAD times"
echo "TAIL faces $TAIL times"
if [ $HEAD -gt $(($TAIL+2)) ]
then
	dif=$(($HEAD-$TAIL))
	echo "Heads won by $dif times more than Tails"
elif [ $TAIL -gt $(($HEAD+2)) ]
then
	dif=$(($TAIL-$HEAD))
	echo "Tails won by $dif times more than Headss"
else
	echo "Its TIE since their difference is <=2"
	echo "By again flipping to make difference >2"
	while [ 1 ]
	do
		face=$((RANDOM%2))
		if [ $face -eq 1 ]
		then
			((++HEAD))
		else
			((++TAIL))
		fi
		dif1=$(($HEAD-$TAIL))
		dif2=$(($TAIL-$HEAD))
		if [[ $dif1 -gt 2 || $dif2 -gt 2 ]]
		then
			break;
		fi
	done
	echo "HEAD faces $HEAD times"
	echo "TAIL faces $TAIL times"
	if [ $HEAD -gt $(($TAIL)) ]
	then
	dif=$(($HEAD-$TAIL))
	echo "Heads won by $dif times more than Tails"
	else
	dif=$(($TAIL-$HEAD))
	echo "Tails won by $dif times more than Heads"
	fi
fi
