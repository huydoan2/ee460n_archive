# EE460N Archive

This is an archive for the University of Texas at Austin EE460N Computer Architecture course lab assignments and uploaded with the intention to help future students taking the course to get started with the labs.

As said in the **disclaimer**, I have already removed or redacted files that contain actual answers. Students of the class will **NOT** find answers in this archive and should not worry about using this as a help tool.

## Background information
The EE460N class as developed by Prof. Yale Patt contain six programming assignments as shown on his course webpage.
[http://users.ece.utexas.edu/~patt/14f.460N/labs.html](http://users.ece.utexas.edu/~patt/14f.460N/labs.html)

The course is based on a simplified computer architecture named **LC3b** devised by Dr. Patt for educational purpose. The first lab is to write an assembler that assembles a set of LC3b assembly language into .hex format. Subsequent labs implements LC3b simulators with different levels of simulation and with different additional feaatures (Interrupt and exception for Lab 4, Virtual Memory for Lab 5). Lab 6 is special in that it has a different implementation that supports pipling.

The lab assignments should be programmed in **ANSI C** standard.

## File Organization, and how to use the archive
### ./
`ansify.py` is a help script that converts the non-ANSI `// comment` into ANSI compliant `/* comment */`.

`csv2ucode.py` is a help script that converts the `control_store.csv` in lab 3-6 into useable *ucode* file. The script omits the first line (header) and converts each line in a csv file to a string of 0 and 1. This removes human error from the making of ucode file. However the code is not as general as it can be, and only scans for 24 columns. If you are adding more column to the csv file. You must edit the code to reflect that change.

`upload` is a one-liner help script that uploads the file to the UT ECE remote server. You need to edit it with your own username and set up the corresponding folder in the server for it to work.

### ./lab1
The `makefile` should be self-explanatory. The `check_error_code` script runs the built program `assemble` against a series of faulty assemby code files and check the error code that it spits out. This is effective in ruling out corner cases.

### ./lab2  ./lab3
contains the makefiles. 

### ./lab4 and ./lab5
Makefile in Lab 4 and 5 builds a **debug copy** of the simulator that outputs more internal information than required for better debugging.

`tst` is just a one-liner that runs the **debug copy** of the code, loads it with the ucode file and takes any argument. This can 

### ./lab6
`control_store.odt` is a file of [Libre Office Calc*](http://www.libreoffice.org/discover/calc/), an able and **free** substitute of MS Excel. It along with `control_store.csv`, `ucode6` shows the `csv2ucode.py` script in action. I only filled in the first group of rows.

`autotest` is somewhat of a testing script that uses the Expect utility to automate testing for the built program.