#!/bin/bash -x
echo "Flip Coin Simulation Problem"

face=((RANDOM%2))
if [ $face -eq 1 ]
then
	echo "HEAD is WINNNER"
else
	echo "TAIL is WINNER"
fi
