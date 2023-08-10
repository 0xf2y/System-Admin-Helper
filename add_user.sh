#!/bin/bash
# a script to add user to the system

read -p "Enter the Username: " user
id $user

if [ $? -eq 0 ]
then
echo "$user already found on the system."

else
read -p "Enter the password: " pass
useradd $user

echo $pass | passwd $user --stdin
echo "$user added successfully."

fi
