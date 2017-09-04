#!/bin/bash

AWESOME_SCRIPTS="$HOME/.awesome-scripts"
BASH_PROFILE="$HOME/.bash_profile"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $AWESOME_SCRIPTS
echo "source $""HOME/.awesome-scripts" >> $BASH_PROFILE
echo "export SCRIPTS_PATH='$DIR/'" >> $AWESOME_SCRIPTS
echo "source $""SCRIPTS_PATH'activate.sh';" >> $AWESOME_SCRIPTS

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash\
    -o $SCRIPTS_PATH/git/.git-completion.sh

source $BASH_PROFILE
