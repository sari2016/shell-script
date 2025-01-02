#!/bin/bash

echo "All variables: $#"
echo "Number of variables: $0"
echo "Script Name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running the script: $USER"
echo "Process ID of last command in background: $!"
sleep 60 &
echo "Process ID of current script: $$"

