#!/bin/bash

original_pwd=$PWD

cd ~/Codes/$1
ls
echo 'Enter path'
read -e path
if [ -n "$path" ]
then
  cd $path
  OLDPWD=$original_pwd
fi

unset original_pwd
