#!/bin/bash

REP=
BRANCH=main

function status_code() {
    local CMD=$1
    local STATUS=$2

    if [ "$STATUS" -eq 0 ];
    then
        echo "The command \"$CMD\" was successful!"
    else
        echo "The command \"$CMD\" was insuccessful!"
        exit
    fi
}

function execute_command() {
    local CMD="$1"
    local ARGS="$2"

    eval "$CMD" "$ARGS" > /tmp/.log
    status_code "$CMD" $?
}

if [ -z "$1" ];
then
    echo "The link to the repository was not specified!"
    exit
else
    REP=$1
fi

if [ -z "$2" ];
then
    echo "The main branch was not specified!"
    echo "By default the main branch will be \"main\""
    sleep 5
else
    BRANCH=$2
fi

echo


execute_command "git init"
execute_command "git remote add origin" "$REP"
execute_command "git remote add staging" "$REP"
# execute_command "git pull staging" "$BRANCH"

# if [ ! -z "$(ls -A .)" ];
# then
#     execute_command "git push staging" "$BRANCH"
# fi

