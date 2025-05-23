#!/bin/bash

echo "Alll variables passed to the script : $@"
echo "Number of variables : $#"
echo "script name : $0"
echo "Current directory is : $PWD"
echo "User running this script : $USER"
echo "hOME DIRECTOTY OF USER : $HOME"
echo "PID Oof thr script : $$"
sleep 10 &
echo "PID of last command in the scipr : $!"


