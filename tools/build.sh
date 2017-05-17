#!/bin/bash

# build script: bookmarkletize all .js files in ../src
# note: must run from tools dir
# TODO: check current directory, move to tools if not there

# preliminaries
SRCDIR="../src/"
BUILDDIR="../build/"
PRODUCT="bookmarklets.html"

# TODO: add styling/formatting beyond what's here
HEADER=`echo -e "<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<meta charset='UTF-8'>\n\t\t<title>Bookmarklets</title>\n\t</head>\n\t<body>\n\t\t<h1>Bookmarklets:</h1>\n\t\t<ul>"`
FOOTER=`echo -e "\t\t</ul>\n\t</body>\n</html>\n<!-- EOF -->\n"`

# determine targets
cd $SRCDIR
TARGETS=`ls -1 | grep \.js`

# prepare build directory
cd $BUILDDIR				# TODO: check for existence of directory
rm $PRODUCT					# TODO: check for existence of product
touch $PRODUCT

# compose <li> set
LINKS=""
cd $SRCDIR
for i in $TARGETS; do
	NAME=`echo -e $i | sed s/\.js//`
	HREF=`bookmarklet $i`
	LI=`echo -e "\n\t\t\t<li><a href='$HREF'>$NAME</a></li>\n"`
	LINKS=`echo -e "$LINKS$LI"`
done

# put it all together, write to file
PAGE=`echo -e "$HEADER$LINKS\n$FOOTER"`
cd $BUILDDIR
echo -e "$PAGE" >> $PRODUCT

#EOF
