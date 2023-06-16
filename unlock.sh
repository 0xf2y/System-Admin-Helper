#!/bin/bash
# a script to unlock user

read -p "Enter username to unlock: " user
id $user
  
if [ $? -eq 0 ]
then
usermod -U $user
echo "User $user is unlocked."

else
echo "User not found."

fi
