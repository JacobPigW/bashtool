#!/usr/bin/env bash

:||{
    程序入口

    Author: Jacob
}

# . "$HOME/.bash_profile"

export SCRIPT_HOME=$(dirname "$0")
export PATH=$SCRIPT_HOME/auto:$SCRIPT_HOME/util:$PATH

echo "${monitor_switcher_file_name}"

. yaml
. init
. options

echo "${monitor_switcher_file_name}"
