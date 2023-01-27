#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

usage() {
    exec >&2
    echo "How to use: $ memo [keyword]
    keyword => git, ls, etc...
    "
    exit 1
}

if [ $# -lt 0 ]; then
    usage
fi

if [ $# -eq 1 ]; then
    cat $SCRIPT_DIR/$1
fi

if [ $# -gt 1 ]; then
    echo "Too many arguments"
    exit 1
fi
