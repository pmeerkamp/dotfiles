#!/bin/bash
## don't read bashrc if session is not interactive
[ -z "$PS1" ] && return
echo "Loading bashrc"

if [ -f ~/.bashrc_local/bashrc_local_before.sh ]; then
    source ~/.bashrc_local/bashrc_local_before.sh
fi

source ~/.bash/functions.sh
source ~/.bash/settings.sh
source ~/.bash/aliases.sh
echo "Now sourcing exports"
source ~/.bash/exports.sh
echo "Done sourcing exports"

echo "Now sourcing bashrc_local_after"
if [ -f ~/.bashrc_local/bashrc_local_after.sh ]; then
    source ~/.bashrc_local/bashrc_local_after.sh
fi
echo "Done sourcing bashrc_local_after"

pathDeduplicate
