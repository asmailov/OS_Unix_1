#!/bin/sh

BOOK="book.txt"

./list.sh

echo "\nWhich line do you want to delete?"
read input

#2>file redirects stderr to file
if [ $input -ge 1 2>/dev/null ] && [ $input -le $(wc -l < $BOOK) ]
then
    sed -i ''$input'd' $BOOK
else
    echo "Bad input."
fi
