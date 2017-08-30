#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASH_PROFILE="$HOME/.bash_profile"

echo "" >> $BASH_PROFILE
echo "# awesome-script setting" >> $BASH_PROFILE
echo "export SCRIPTS_PATH='$DIR/'" >> $BASH_PROFILE
echo "source $""SCRIPTS_PATH'aliases';" >> $BASH_PROFILE
