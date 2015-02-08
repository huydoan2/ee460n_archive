GCC=gcc
CFLAGS=-ansi
MAIN   =lc3bsim5.c 
DEBUG  =$(MAIN:.c=_debug.c)
OUTPUT =$(MAIN:.c=)
DEBUG_OUTPUT=debug

all:
	$(CC) $(CFLAGS) $(MAIN) -o $(OUTPUT)	
	$(CC) $(CFLAGS) $(DEBUG) -o $(DEBUG_OUTPUT)	

