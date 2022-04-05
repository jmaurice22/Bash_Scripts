#!/usr/bin/bash
VAR1="Bash"
VAR2="Bash"

if [ "$VAR1" = "$VAR2" ]; then
    echo "Zero:" $?
    if [ "$VAR1" != "$VAR2" ]; then
        echo "Non-Zero:" $?
    else
        echo "Non-Zero:" $?
    fi
fi