#!/bin/bash

if [ -z $1 ];

then

	echo "Usage : ./crt.sh <url>"

else

	curl -s "https://crt.sh/?q=%.$1" | grep -oE "<TD>.*.$1</TD>" | sort -u > $1.txt

	echo "Check out $1.txt"

fi
