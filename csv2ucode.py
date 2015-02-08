import sys
import csv

if len(sys.argv) != 3:
	print('usage: ', __file__, ' <csv file> <ucode file>')
	sys.exit(1)

with open(sys.argv[1]) as csvfile, open(sys.argv[2], 'w') as ucode:
	cr = csv.reader(csvfile, delimiter=',')
	
	next(cr) # ignore first line
	for row in cr:
		for x in row[1:24]:
			ucode.write(x.strip())
		ucode.write('\n')
			