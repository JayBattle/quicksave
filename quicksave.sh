#!/bin/bash
# This script coimmits multiple repos
# Syntax: quickcommit.sh
# Requires: git, quickcommit.sh
# Prequisites: authenticate w/ git Ex: (git config --global user.email "EMAIL") (add git ssh key)
# Note: Do not use sudo!
CommitMessage=$1

for d in */ ; do
    read -p "Would you like to commit $d? y or n: " -r response
    if [ "$response" == "y" ]; then
        echo "committing $d"
        quickcommit.sh \"$(date)\"
    fi
done