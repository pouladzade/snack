#!/bin/bash

echo 'Tryin to run burrow....'
function isRunning {
    local epid=1
    while [ ! -z "$epid" ];do
    epid=$(pgrep -o -x $1)
        if [ ! -z "$epid" ];then
            echo  $1 is  already runing [PID : $epid]
            exit
        fi
    done
}

isRunning burrow
#gnome-terminal --working-directory=$HOME --command 'burrow serve --work-dir $HOME/.burrow'
burrow serve --work-dir $HOME/.burrow