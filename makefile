README.md: guessinggame.sh
	echo "# Project: the guessing game" > README.md
	echo >> README.md
	echo "## The date and time at which make was run: " >> README.md
	date >> README.md
	echo >> README.md
	echo "## The number of lines of code contained in guessinggame.sh is: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
