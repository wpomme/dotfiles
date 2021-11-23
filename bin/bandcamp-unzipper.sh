#!/usr/bin/env bash -eu
#
# how to use
#
# ls | while read f ; do bandcamp-unzipper $f ; done
#

if [ $# -ne 1 ]; then
  echo 'write file name after command.'
  exit 1
fi

FILE_NAME=`echo $1`
HYPHEN_COUNT=`echo $FILE_NAME | awk '{(count += split($0, not_used, "-") - 1)} END{print count}'`

if [ $HYPHEN_COUNT -ne 1 ]; then
  echo "cannot process the file whose name has like 'aaa - bbb - ccc'."
  exit 1
fi

ARTIST=`echo $FILE_NAME | sed 's/\(.*\) - \(.*\)\.zip/\1/'`
TITLE=`echo $FILE_NAME | sed 's/\(.*\) - \(.*\)\.zip/\2/'`

mkdir -p "$ARTIST/$TITLE"
unzip "$FILE_NAME" -d "$ARTIST/$TITLE"
rm "$FILE_NAME"
