all: create title timestamp codeline

create:
	touch README.md

title:
	echo '# Guessing Game' >> README.md

timestamp:
	date +'%c' >> README.md

codeline:
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
