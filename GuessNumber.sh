#!/bin/bash
# Guess a number between 0 and 32767

RANDOM_NUMBER=$(expr $RANDOM % 1000)
TIMES=0

echo "RANDOM is $RANDOM_NUMBER"

echo "Already product a random number, called RANDOM"

while true 
do
	read -p "Please input your guess number between 0 and 999: " GUESS
	let TIMES++
	if [ $GUESS -eq $RANDOM_NUMBER ] ; then
		echo "Your guess number is right!"
		echo "Your total answer $TIMES"
		break
	elif [ $GUESS -lt $RANDOM_NUMBER ] ; then
		echo "Your guess number is less than the RANDOM, again"
	elif [ $GUESS -gt $RANDOM_NUMBER ] ; then
		echo "Your guess number is greater than the RANDOM, again"
	fi
done

