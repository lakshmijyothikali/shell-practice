#!/bin/bash

set -e

function(){
    echo "Failed at: $1 $2"
}

trap 'failure "${LINENO}" "{BASH_COMMAND}"' ERR

echo "Hello World"
echoooooo "Hello World"
echo "Hello World"
