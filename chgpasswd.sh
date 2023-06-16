#!/bin/bash
# a script change user password

read -p "Enter username: " user
id $username

if [ $? -eq 0 ]
then
read -p "Enter the new password: " pass
echo $pass | passwd $user --stdin
echo "Password was changed successfully."

else
echo "User not found."
fi
