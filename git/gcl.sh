#!/bin/bash

cd ~/Code
stderr_filename=$(mktemp)
git clone --progress $1 2> >(tee $stderr_filename)

if grep -q 'fatal' "$stderr_filename"
then
    rm $stderr_filename
    cd-
else
    repo_name=$(awk -F\' '/Cloning into/ {print $2}' $stderr_filename)
    rm $stderr_filename
    cd $repo_name
fi

unset stderr_filename
