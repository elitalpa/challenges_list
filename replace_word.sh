#!/bin/bash

echo "Please enter your Github Username : "
read githubusername

read -p "Are you sure? (Y)" -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	    exit 1
fi

echo "Changing..."
sleep 3
# the following line is the command that will do the modification :
sed -i "s/becodeorg/$githubusername/" "challenges_list.md"
echo "Done!"

# -i permanently writes the modification to the file, you may want to use sed without it at first to test
