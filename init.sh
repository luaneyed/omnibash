#!/bin/bash

OMNIBASH="$HOME/.omnibash"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f $OMNIBASH ]
then
    rm $OMNIBASH
fi

echo "export OMNIBASH_PATH='$DIR'" >> $OMNIBASH
echo "source $""OMNIBASH_PATH'/activate.sh';" >> $OMNIBASH

add_source ()
{
    local source_string="source $""HOME/.omnibash"

    if [ ! -f $1 ]
    then
      touch $1
    fi

    if ! grep -Fxq "$source_string" $1
    then
        echo $source_string >> $1
    fi
}
add_source "$HOME/.bash_profile"
add_source "$HOME/.bashrc"
unset add_source

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

source $OMNIBASH
