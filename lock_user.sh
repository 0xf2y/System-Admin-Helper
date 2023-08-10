#!/bin/bash
# a script to lock user

read -p "Enter Username " user
id $user
  
if [ $? -eq 0 ]
then
usermod -L $user
echo " $user is locked"

else
echo "User not found."

fi
