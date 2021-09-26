all: create title timestamp

create:
	touch README.md

title:
	echo '# Guessing Game' >> README.md

timestamp:
	date +'%c' >> README.md

clean:
	rm README.md
