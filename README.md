# squish
squish is a very simple project build system for Javascript and CSS.
It takes a list of Javascript files, squishes all the code in each file together, and then minifies everything.
It will output two *.js* files.  One is just squished, and the other squished and minified.
It can also squish CSS files together without minification.

## Requirements
* Unix
* Python
* Internet Connection

## Warning
squish uses Google's closure-compiler web API.
This means your code will be exposed to them,
so don't use squish if you don't trust Google.

## Installation
Navigate to the root of your project directory and run.

	git clone https://github.com/caesarfeta/squish squish

Or if you know how to use git submodules.

	git submodule add https://github.com/caesarfeta/squish squish

If you want sample Javascript files to play with instead of using your own run...

	cd squish; git submodule update --init;

## How to use.
### Javascript
Open your text editor and make a list of paths to the Javascript files you want.
If you're using relative paths make sure they are relative to the project root.

	squish/samples/jslib/src/js/AutoCanvas.js
	squish/samples/jslib/src/js/Culuh.js
	squish/samples/jslib/src/js/TimeStamp.js

Name your list after your project and add *.js.list* and save it somewhere inside your project's directory.
I like to create a directory called *build* in the project root to store the *.list* files.

	build/project.js.list

Run the *squish/squi.sh* script from your project root passing along the list you just created.

	squish/squi.sh build/project.js.list

After the script completes you should see the following in your project root.

	project.js
	project.min.js

### CSS
Same as above except you save your list as *.css.list* instead of *.js.list*
That's it! Enjoy!