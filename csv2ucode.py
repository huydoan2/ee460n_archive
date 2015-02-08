import sys
import csv

# Edit this variable to set the end column of the .csv file.
# Note: In Python convention it must be ONE BEYOND the last column, zero-based
# for example, the column runs from column 1 to column 23, then column_end must be 24
column_end = 24

if len(sys.argv) != 3:
	print('usage: ', __file__, ' <csv file> <ucode file>')
	sys.exit(1)

with open(sys.argv[1]) as csvfile, open(sys.argv[2], 'w') as ucode:
	cr = csv.reader(csvfile, delimiter=',')
	
	next(cr) # ignore first line
	for row in cr:
		for x in row[1:column_end]:
			ucode.write(x.strip())
		ucode.write('\n')
			
