#!/bin/sh -
### TODO
# /etc/passwd constraction
# john:x:500:100::/home/ken:/bin/bash
# $1 user
# $2 pw
# $3 user id
# $4 group id
# $5 comment?
# $6 home dir
# $7 sh

cat /etc/passwd |
  awk -F: 'BEGIN { print "user_name uid gid" } \
           $6 ~ /home|root/ && $7 ~ /bash/ { print $1, $3, $4 }'
