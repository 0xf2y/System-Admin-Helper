#!/bin/bash
# a script to list all groups on the system

echo "Groups:"
echo ""
cut -d : -f 1 /etc/group
