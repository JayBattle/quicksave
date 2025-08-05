#!/bin/bash
# This script coimmits multiple repos
# Syntax: quickcommit.sh
# Requires: git, quickcommit.sh
# Prequisites: authenticate w/ git Ex: (git config --global user.email "EMAIL") (add git ssh key)
# Note: Do not use sudo!
Scope=$1
timestamp=$(date)

if [[ "$1" == "all" ]]; then
    CommitAll=true
else
    CommitAll=false
fi

shift 1

if [[ -z "$1" ]]; then
    CommitMessage=$timestamp
else
    CommitMessage=$@
fi

if $CommitAll; then
    echo "Commiting All Repositories!"
    for d in */ ; do
        cd $d
        quickcommit.sh \"$CommitMessage\"
        cd ..
    done
else
    for d in */ ; do
    read -p "Would you like to commit $d? y or n: " -r response
    case "$response" in
        "y" | "Y" )
            cd $d
            quickcommit.sh \"$CommitMessage\"
            cd .. ;;
        "n" | "N" )
            echo "Skipping $d" ;;
        * )
            echo "Invalid input. Skipping $d" ;;
    esac
done
fi
