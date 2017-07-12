#!/bin/bash
# Small script that replaces \\ with a single \ 
FILES=$(find ./ -type f -name '*.html')
for file in $FILES; do
 #echo $file
 if [ ${file: -5} == ".html" ]; then
	sed -i -e 's/\/\//\//g' $file
        sed -i -e 's/https:\//https:\/\//g' $file
        sed -i -e 's/http:\//http:\/\//g' $file
	#echo "yes"
 fi
done
