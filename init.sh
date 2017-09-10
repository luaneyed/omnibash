#!/bin/bash

OMNIBASH="$HOME/.omnibash"
BASH_PROFILE="$HOME/.bash_profile"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f $OMNIBASH ]
then
    rm $OMNIBASH
fi

echo "source $""HOME/.omnibash" >> $BASH_PROFILE
echo "export OMNIBASH_PATH='$DIR'" >> $OMNIBASH
echo "source $""OMNIBASH_PATH'/activate.sh';" >> $OMNIBASH

install_git_completion ()
{
    local git_commit_hash='eb37527ab0b6e9ff1cbd01aa20a4dd6aa4150a96'
    curl https://raw.githubusercontent.com/git/git/$git_commit_hash/contrib/completion/git-completion.bash\
        -o $DIR'/git/.git-completion.sh'
}
install_git_completion

source $BASH_PROFILE
