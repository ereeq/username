#! /bin/bash
# username.sh
echo "Username must be 3~12 characters, ONLY lowercase, digits or underscore. "
echo "Username must start with a lower case letter."
read username
while echo $username | egrep -v "^[a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a valid username: "
	read username
done
echo "Thank you"
