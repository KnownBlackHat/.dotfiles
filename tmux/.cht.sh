#!/bin/bash

languages=`echo "golang lua cpp c typescript nodejs rust python" | tr ' ' '\n'`
coreutils=`echo $(ls /usr/bin) | tr ' ' '\n'`

selected=`printf "$languages\n$coreutils" | fzf`
read -p "Query: " query

if printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ];do sleep 1;done"
else
    tmux neww bash -c "curl cht.sh/$selected~$query& while [ : ];do sleep 1;done"
fi

