CC=gcc
FLAG=-Wall -ansi
SRC=lc3bsim6.c
OUTPUT=lc3bsim6

all:
	cp ~/workspace/compArch/pipeline/src/$(SRC) .
	python ansify.py $(SRC)
	$(CC) $(FLAG) $(SRC) -o $(OUTPUT)
