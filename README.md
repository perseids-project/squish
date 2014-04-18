# sqUIsh

### Build minified Javascript files.

Build a minified and a non-minified Javascript file.
Make a list of Javascript files and run the sqUI.sh shell script.

### Build squished-up CSS files

So you can also use sqUIsh to "squish" CSS files together.
Turn multiple CSS files into one without minifying them.

## Requirements
* Unix
* Python
* Internet Connection

## Warning

This script uses a library which uses Google's closure-compiler API.
This means your code will be exposed to them potentially.
Hopefully your code doesn't need to be super duper secret.

## Installation
Navigate to your project directory and run.

	git clone https://github.com/caesarfeta/sqUIsh build

Or if you know how to use git submodules.

	git submodule add https://github.com/caesarfeta/sqUIsh build

If you want sample Javascript files to play with instead of using your own run...

	cd sqUIsh; git submodule update --init;

## How to use.
## Javascript
Open your text editor and make a list of paths to the Javascript files you want.

	conf/samples/jslib/src/js/AutoCanvas.js
	conf/samples/jslib/src/js/Culuh.js
	conf/samples/jslib/src/js/TimeStamp.js

* Notice you can use paths relative to the sqUIsh directory.

Name your list something descriptive add *.js.list* and save it in the conf directory.

	conf/sample-v1.js.list

Run the sqUI.sh script passing along your the list you just created.

	./sqUI.sh conf/sample-v1.js.list

After the script completes, take a peak inside the build folder.  You will see the following.

	build/sample-v1.js
	build/sample-v1.min.js

## CSS

Same as above except you save your list as *.css.list* instead of *.js.list*

That's it!  You know what to do from here.