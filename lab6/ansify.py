import re
import sys

if len(sys.argv) != 2:
	print('Usage: ', __file__, ' <file.c>')
	sys.exit(1)
	
with open(sys.argv[1], 'r+') as cfile:
	newccode = []
	for line in cfile:
		newccode.append(re.sub(r'//(.*)$', r'/* \1 */', line, re.MULTILINE))
	
	cfile.seek(0)
	cfile.write(''.join(newccode))