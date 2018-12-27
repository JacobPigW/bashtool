#!/usr/bin/env bash

:||{
    主程序入口

    Author: Jacob
}

[ -f $HOME/.bash_profile ] && . "$HOME/.bash_profile"
[ -f $HOME/.bashrc ] && . "$HOME/.bashrc"

export SCRIPT_HOME=$(dirname "$0")
export PATH=$SCRIPT_HOME/auto:$SCRIPT_HOME/meta:$SCRIPT_HOME/util:$PATH

. init
. options

export -f jq

if [ "${MODULE}" ]; then
    ${SCRIPT_HOME}/${MODULE}/${MODULE} 
fi
