#!/bin/bash

# -lt --> less than
# -gt --> greater than
# -eq --> equal
# -ne --> not equal

if [ $1 -gt 10 ]
then
    echo "Given number $! is greater than 10"
else
    echo "Given number $1 is not greater than 10"
fi

