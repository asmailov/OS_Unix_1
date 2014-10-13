#!/bin/sh

BOOK="book.txt"

echo -n "Type the Name/Number you are seeking: "
read find

# Find lines with pattern $find, -i to ignore case
if ! fgrep -i "$find" $BOOK
 then
    echo "No matches for your input!"
fi
