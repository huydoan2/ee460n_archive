GCC=gcc
CFLAGS=-ansi
MAIN=lc3bsim5.c 
DEBUG=lc3bsim5_debug.c 
OTHERFILES=
OUTPUT=lc3bsim5
DEBUG_OUTPUT=debug

all:
	dos2unix $(MAIN) $(DEBUG)
	$(CC) $(CFLAGS) $(MAIN) -o $(OUTPUT)	
	$(CC) $(CFLAGS) $(DEBUG) -o $(DEBUG_OUTPUT)	

