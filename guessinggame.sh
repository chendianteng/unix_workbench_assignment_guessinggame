#!/usr/bin/env bash
# guess the number of the files in the current directory
function guessinggame {
    echo "How many files are there in the current directory?"
    echo -n "Please enter your guess:"
    local guess
    read guess
    local ans=$(ls -l| egrep "^-"| wc -l)
    while [[ $guess -ne $ans ]]
    do
	if [[ $guess -gt $ans ]]
	then
	    echo "Your answer is too high!"
	    echo -n "Please enter your guess again:"
	    read guess
	else
	    echo "Your answer is too low!"
	    echo -n "Please enter your guess again:"
	    read guess
	fi
    done
    echo "Congratulations! Your answer is correct!"
}
guessinggame