#!/bin/sh

BOOK="book.txt"

exit=0

while test $exit -ne 1
do
    echo "What operation do you want?"
    echo "1 - Add new entry."
    echo "2 - List every entry."
    echo "3 - Find specific entry."
    echo "4 - Delete specific entry."
    echo "0 - Exit."
    read operation

    if test $operation = "1"
    then
        ./add.sh
    elif test $operation = "2"
    then
        ./list.sh
    elif test $operation = "3"
    then
        ./search.sh
    elif test $operation = "4"
    then
        ./delete.sh
    elif test $operation = "0"
    then
        exit=1
    else
        echo "Wrong operation!"
    fi
done

exit 0
