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

check-module() {
    local current_module=$(grep "${1}" ${module_file})
    if [ ! "${current_module}" ]; then
        echo-msg "未找到 ${1} 模块！"
        exit 1
    fi
}

if [ "${MODULE}" ]; then
    export -f jq
    export SUBMODULE="${MODULE}"

    check-module "${MODULE}"
    ${SCRIPT_HOME}/${MODULE}/${MODULE} ${SUB_MODULE_OPTS}
fi
