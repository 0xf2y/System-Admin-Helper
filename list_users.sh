#!/bin/bash
# a script to list all users on the system

echo "Users:"
echo ""
cut -d : -f 1 /etc/passwd
