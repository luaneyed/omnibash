#!/bin/bash

OMNIBASH="$HOME/.omnibash"
BASH_PROFILE="$HOME/.bash_profile"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f $OMNIBASH ]
then
    rm $OMNIBASH
fi

echo "export OMNIBASH_PATH='$DIR'" >> $OMNIBASH
echo "source $""OMNIBASH_PATH'/activate.sh';" >> $OMNIBASH

add_source_to_bash_profile ()
{
    local source_string="source $""HOME/.omnibash"

    if [ ! -f $BASH_PROFILE ]
    then
      touch $BASH_PROFILE
    fi

    if ! grep -Fxq "$source_string" $BASH_PROFILE
    then
        echo $source_string >> $BASH_PROFILE
    fi
}
add_source_to_bash_profile

source $BASH_PROFILE
