#!/bin/bash

OMNIBASH="$HOME/.omnibash"
BASH_PROFILE="$HOME/.bash_profile"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $OMNIBASH
echo "source $""HOME/.omnibash" >> $BASH_PROFILE
echo "export SCRIPTS_PATH='$DIR/'" >> $OMNIBASH
echo "source $""SCRIPTS_PATH'activate.sh';" >> $OMNIBASH

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash\
    -o $SCRIPTS_PATH/git/.git-completion.sh

source $BASH_PROFILE
