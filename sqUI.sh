#!/bin/bash
squish() {
	# Get the current directory
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	cd $DIR
	
	# Make the build directory
	mkdir -p $DIR/build
	
	# Extract the output filename from the list.
	list=$1
	outName=$(basename "$list")
	ext="${outName##*.}"
	outName="${outName%.*}"
	
	# Build the output file.
	python lib/make.py $list $outName
	lib/closure-compiler-cli/closure_compiler_cli.py --level=simple --file=build/$outName.js > build/$outName.min.js
}
squish $1