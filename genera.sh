#!/bin/sh

DATA=indirizzi.txt
INDEX=index.html

cat header.html > $INDEX

function add()
{
	echo -ne $1 >> $INDEX
}

while iFS="" read -r line || [ -n "$line" ]
do
	title=$(echo $line | cut -d' ' -f1)
	url=$(echo $line | cut -d' ' -f2)
	add '\t\t<a href="'
	add $url
	add '">'
	add $title
	add '</a><br/>\n'
done < $DATA


cat footer.html >> $INDEX
