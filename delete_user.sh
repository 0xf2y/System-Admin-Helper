#!/bin/bash
# a script to delete user on the system

read -p "Enter Username: " user
id $user

if [ $? -eq 0 ]
then
userdel $user
echo "$user was deleted successfully."

else
echo "$user not found."

fi
