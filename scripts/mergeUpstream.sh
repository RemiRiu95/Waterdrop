#!/usr/bin/env bash

PS1="$"
basedir=`pwd`

function update {
    cd "$basedir/work/$1"
    git fetch && git reset --hard origin/master
    cd "$basedir/work/$1/.."
    git add $1
}

update BungeeCord
update Waterfall

# Update submodules
git submodule update --recursive
