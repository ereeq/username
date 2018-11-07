#! /bin/bash
# username.sh
echo "Username must be 3~12 characters, ONLY lowercase, digits or underscore. "
echo "Username must start with a lower case letter."
while true
do
	echo "Enter Username: "
	read username
	size=${#username}
	firstletter=${username:0:1}
	if [$size -gt 2 $size -le 13]]; then
		if [[$firstletter =~ [a-z]]]; then
			if [[$username =~ [a-z0-9_]]]; then
				$mybool = $false
				break
			fi
		fi
	fi
	echo "illegal username"
done
echo "Thank you"
