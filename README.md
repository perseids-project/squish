# sqUIsh

### Build minified Javascript files.

You're good about breaking up your code into manageable chunks.  You have separate files for every Javascript class you use in your project.  Your manager, whether he's another person or just lives in your brain, is happy.  Your code can now be easily reused and repurposed.  All you have to do is remember to include all the separate files.  No big, right?

Ehh.  Not in the Javascript world.  Most popular Javascript libraries are distributed as one minified file.  Why?

If you want other people to use your code you need to lower the barrier of entry.  Being able to import one Javascript file and have a working app/widget/library will go a long way in convincing people to build upon your work.  Plus it's faster for webservers to serve up just one minified file than two-dozen separate Javascript files.  Treat your webserver and your other developers well... use sqUIsh.

All you have to do is make a list of Javascript files and run the sqUI.sh shell script and you'll have a Javascript file that other developers will want to use and webservers will want to... ummmmm... serve.

## Requirements
* Unix
* Python

## Installation

So your computer is running something Unix-like? Linux and Mac OSX both work.
Can you run Python scripts?

You can!  Wonderful!

Here's all you need to do...

	git clone https://github.com/caesarfeta/sqUIsh sqUIsh

Or if you know how to use git submodules.

	git submodule add https://github.com/caesarfeta/sqUIsh sqUIsh

If you want sample Javascript files to play with instead of using your own run...

	cd sqUIsh; git submodule update --init;

## How to use.

Open your text editor and make a list of paths to the Javascript files you want.

	conf/samples/jslib/src/js/AutoCanvas.js
	conf/samples/jslib/src/js/Culuh.js
	conf/samples/jslib/src/js/TimeStamp.js

* Notice you can use paths relative to the sqUIsh directory.

Name your list something descriptive and save it in the conf directory.

	conf/sample-v1.list

Run the sqUI.sh script passing along your the list you just created.

	./sqUI.sh conf/sample-v1.list

After the script completes, take a peak inside the build folder.  You will see the following.

	build/sample-v1.js
	build/sample-v1.min.js

That's it!  You know what to do from here.