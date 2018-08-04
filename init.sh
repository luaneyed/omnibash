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
unset add_source_to_bash_profile

make_vimrc ()
{
    local vimrc_path="$HOME/.vimrc"

    if [ ! -f $vimrc_path ]
    then
        touch $vimrc_path
        echo 'set title' >> $vimrc_path
        echo 'set number' >> $vimrc_path
        echo 'set hlsearch' >> $vimrc_path
        echo 'set incsearch' >> $vimrc_path
        echo 'set cursorline' >> $vimrc_path
        echo 'set history=1000' >> $vimrc_path
        echo 'set showmatch' >> $vimrc_path
        echo 'syntax on' >> $vimrc_path
    fi
}
make_vimrc
unset make_vimrc

source $BASH_PROFILE
