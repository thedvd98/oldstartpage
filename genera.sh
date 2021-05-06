#!/bin/sh

DATA=indirizzi.txt
INDEX=index.html

cat header.html > $INDEX

function add()
{
	echo -ne $1 >> $INDEX
}

function add_url_list()
{
	add '<div class="url_list">\n'
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

	add '</div>'
}

function add_pages()
{
	add '<div class="page_list">'
	add '</div>'
}

add '<div class="main">\n'
add_pages
add_url_list
add '</div>'

cat footer.html >> $INDEX
