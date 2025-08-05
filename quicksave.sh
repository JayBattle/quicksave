#!/bin/bash
# This script coimmits multiple repos
# Syntax: quickcommit.sh
# Requires: git, quickcommit.sh
# Prequisites: authenticate w/ git Ex: (git config --global user.email "EMAIL") (add git ssh key)
# Note: Do not use sudo!
Scope=$1
CommitMessage=$2
timestamp=$(date)

if [[ "$1" == "all" ]]; then
    echo "Commiting All Repositories!"
    for d in */ ; do
        echo "committing $d"
        cd $d
        quickcommit.sh \"$(date)\"
        cd ..
    done
else
    for d in */ ; do
    read -p "Would you like to commit $d? y or n: " -r response
    case "$response" in
        "y" | "Y" )
            echo "committing $d"
            cd $d
            quickcommit.sh \"$(date)\"
            cd .. ;;
        "n" | "N" )
            echo "Skipping $d" ;;
        * )
            echo "Invalid input. Skipping $d" ;;
    esac
done
fi
