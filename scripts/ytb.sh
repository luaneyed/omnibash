#!/bin/bash
cr1='/Applications/Google Chrome.app'
cr2='/Applications/Google Chrome 2.app'
if [ -e "$cr2" ]
then
  cr=$cr2
else
  cr=$cr1
fi
open -a "$cr" "https://www.youtube.com/results?search_query=$1"
exit 0
