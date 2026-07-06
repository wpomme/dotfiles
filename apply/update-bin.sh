#!/usr/bin/env bash

# bin/
[ -d ~/.bin ] || mkdir ~/.bin
find bin -perm -a+x -type f -exec cp {} ~/.bin \;
