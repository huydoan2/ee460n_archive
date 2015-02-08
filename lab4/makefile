GCC=gcc
CFLAGS=-ansi
MAIN=lc3bsim4.c 
DEBUG=lc3bsim4_debug.c 
OTHERFILES=
OUTPUT=lc3bsim4
DEBUG_OUTPUT=debug

all:
	dos2unix $(MAIN) $(DEBUG)
	$(CC) $(CFLAGS) $(MAIN) -o $(OUTPUT)	
	$(CC) $(CFLAGS) $(DEBUG) -o $(DEBUG_OUTPUT)	

