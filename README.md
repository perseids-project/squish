# squish
squish is a super simple project build system for Javascript.
Your requirements are a Unix shell, Python, and an Internet connection.
Chances are if you're a web-developer you have these tools at your fingertips.

## What does squish actually do?
It takes a list of Javascript files, squishes all the code in each file together, and then minifies everything into one glorious Javascript file..

You can also use sqUIsh to "squish" CSS files together without the minification.

## Requirements
* Unix
* Python
* Internet Connection

## Warning
squish uses Google's closure-compiler web API.
This means your code will be exposed to them potentially.

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

Run the squish/squi.sh script from your project root passing along the list you just created.

	squish/squi.sh project.js.list

After the script completes you should see the following.

	project.js
	project.min.js

## CSS
Same as above except you save your list as *.css.list* instead of *.js.list*
That's it! 
You know what to do from here.