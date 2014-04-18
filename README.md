# squish
Squish is a simple build system for Javascript.

### Build minified Javascript files.
Build a minified and a non-minified Javascript file.
Make a list of Javascript files and run the squish/squi.sh shell script.

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
Navigate to the root of your project directory and run.

	git clone https://github.com/caesarfeta/squish squish

Or if you know how to use git submodules.

	git submodule add https://github.com/caesarfeta/squish squish

If you want sample Javascript files to play with instead of using your own run...

	cd squish; git submodule update --init;

## How to use.
## Javascript
Open your text editor and make a list of paths to the Javascript files you want.

	squish/samples/jslib/src/js/AutoCanvas.js
	squish/samples/jslib/src/js/Culuh.js
	squish/samples/jslib/src/js/TimeStamp.js

Name your list after your project and add *.js.list* and save it in your project root.

	project.js.list

Run the squish/squi.sh script passing along your the list you just created.

	squish/squi.sh project.js.list

After the script completes, look at the root of your project folder.  You will see the following.

	project.js
	project.min.js

## CSS
Same as above except you save your list as *.css.list* instead of *.js.list*
That's it!  You know what to do from here.