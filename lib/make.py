import subprocess
import sys

fs = []
with open ( sys.argv[1] ) as f:
    fs = [ line.rstrip() for line in f ]

outData = ''
for f in fs:
    code = open( f, "r")
    outData = outData + code.read() + "\n"

outName = sys.argv[2]
outFile = open( '../' + outName + ".js", "w" )
outFile.write( outData )