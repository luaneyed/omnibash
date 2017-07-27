#!/bin/bash

cd ~/Codes/$1
ls
echo 'Enter path'
read -e path
if [ -n "$path" ]
then
  cd $path
fi
