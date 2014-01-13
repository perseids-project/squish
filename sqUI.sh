#!/bin/bash
squish() {
	# Get the current directory
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	cd $DIR
	
	# Make the build directory
	mkdir -p build
	
	# Extract the output filename from the list.
	list=$1
	outName=$(basename "$list")
	ext="${outName##*.}"
	outName="${outName%.*}"
	echo "Building ${outName}"
	
	# Build the output file.
	python lib/make.py $list $outName
	lib/closure-compiler-cli/closure_compiler_cli.py --level=simple --file=build/$outName.js > build/$outName.min.js
	
	# Check for compiler errors... This is clumsy but ehhh.
	lib/closure-compiler-cli/closure_compiler_cli.py --level=simple --info=errors --file=build/$outName.js
}
squish $1