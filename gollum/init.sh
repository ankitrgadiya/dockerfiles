#! /bin/sh

# Check for git repository
ls -al | grep ".git"
if [ $? = 0 ]
then
	gollum
else
	git init
	gollum
fi

exit 0
