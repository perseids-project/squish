import subprocess
import sys

fs = []
with open ( sys.argv[1] ) as f:
    fs = [ line.rstrip() for line in f ]

outData = ''
for f in fs:
    code = open( '../' + f, "r")
    outData = outData + code.read() + "\n"

outName = sys.argv[2]
ext = sys.argv[3]
outFile = open( outName + "." + ext, "w" )
outFile.write( outData )