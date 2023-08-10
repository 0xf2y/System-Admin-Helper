#!/bin/bash
# a script to add a user to a group
read -p "Enter user name: " user
id $user

if [ $? -eq 0 ]
then
read -p "Enter group name: " grp
grep $grp /etc/group

if [ $? -eq 0 ]
then
gpasswd $grp -a $user

echo "User $user was added to the group $grp successfully."
else
echo "Group not found."
fi
else
echo "User not found."
fi
