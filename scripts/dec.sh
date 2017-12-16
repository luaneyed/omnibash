#!/bin/bash

if [ -z $2 ]
then
    openssl aes-256-cbc -d -in $1
else
    openssl aes-256-cbc -d -in $1 -out $2
fi