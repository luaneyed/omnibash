#!/bin/bash

AWESOME_SCRIPTS="$HOME/.awesome-scripts"
BASH_PROFILE="$HOME/.bash_profile"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $AWESOME_SCRIPTS
echo "source $""HOME/.awesome-scripts" >> $BASH_PROFILE
echo "export SCRIPTS_PATH='$DIR/'" >> $AWESOME_SCRIPTS
echo "source $""SCRIPTS_PATH'aliases';" >> $AWESOME_SCRIPTS

source $BASH_PROFILE
