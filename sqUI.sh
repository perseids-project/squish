#!/bin/bash
squish() {
	# Get the current directory
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	cd $DIR
	
	# Extract the output filename from the list.
	list="../${1}"
	outName=$(basename "$list")
	
	ext="${outName##*.}"
	outName="../${outName%.*}"
	
	# Get the type
	typ="${outName##*.}"
	outName="${outName%.*}"
	
	# Build the output file.
	echo "Building ${outName}"
	python lib/make.py $list $outName
	if [ $typ=="JS" ];
	then
		lib/closure-compiler-cli/closure_compiler_cli.py --level=simple --file=$outName.js > $outName.min.js
		# Check for compiler errors... This is clumsy but ehhh.
		lib/closure-compiler-cli/closure_compiler_cli.py --level=simple --info=errors --file=$outName.js
	fi
}
squish $1