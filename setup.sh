#!/bin/bash
# must be run as root

FILE="packages.txt"

# for each line
while read line ; do

	# ignore lines that are #commented
	PKG=$(echo $line | cut -d'#' -f1)

	if [ -n "$PKG" ] ; then
		apt-get install -y $PKG
	else
		# Don't print for empty lines
		if [ -n "$line" ] ; then
			echo "Skipping '$line'"
		fi
	fi

done < $FILE

# TODO
# set up prettyvim
# copy .rc files (vim, zsh, bash, etc)
# install fish
# install gitpushplus

# add alias functions to .bashrc
