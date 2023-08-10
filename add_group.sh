#!/bin/bash
# a script to add new group

read -p "Enter the group name: " grp
grep $grp /etc/group

if [ $? -eq 0 ]
then
echo "Group already found on the system."

else
groupadd $grp
echo "Group successfully added."
fi
