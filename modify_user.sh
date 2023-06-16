#!/bin/bash
# a script to modify a user's comment

read -p "Enter username to modify: " user
id $user

if [ $? -eq 0 ]
then
read -p "Enter a new comment for user: " comment

usermod -c $comment $user
echo "User $user is modified successfully."

else
echo "User not found."
fi
