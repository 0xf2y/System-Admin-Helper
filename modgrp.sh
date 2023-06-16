#!/bin/bash
# a script to modify group name 

read -p "Enter the group name: " grp

grep $grp /etc/group

if [ $? -eq 0 ]
then
read -p "Enter new group name: " new_grp
groupmod -n $new_grp $grp

echo "New group name is  $new_grp."

else
echo "Group not found."

fi
