import subprocess
import sys
import urllib
from urlparse import urlparse

fs = []
list = sys.argv[1]

# File is a local path
with open ( list ) as f:
    fs = [ line.rstrip() for line in f ]

# Append the output file
outData = ''
for f in fs:
    # File is a url?
    url = urlparse( f )
    if url.scheme == 'http': 
        code = urllib.urlopen( f )
    # File is a local path
    else:
        code = open( '../' + f, "r")
    outData = outData + code.read() + "\n"
outName = sys.argv[2]
ext = sys.argv[3]
outFile = open( outName + "." + ext, "w" )
outFile.write( outData )