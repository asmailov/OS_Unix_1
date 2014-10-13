#!/bin/sh

#Name of address book
BOOK="book.txt"

# Ask the user for a name and assign to a variable
echo -n "Name: " 
read name

# Ask the user for a phone number and assign to a variable
echo -n "Phone number: "
read phone

# Echo the answers and ask for confirmation
echo "\nShould I enter the values:"
echo "$name $phone \n"
echo -n "y/n: "
read answer

if test "$answer" = "y" 
    then
        # Write the values to the address book
        echo "$name $phone" >>$BOOK
    else
        # Give the user a message
        echo "$name $phone NOT written to $BOOK"
fi

exit 0
