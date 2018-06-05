all: README.md

README.md: guessinggame.sh
	echo "## Guessing game assignment" > README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Lines of code in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
