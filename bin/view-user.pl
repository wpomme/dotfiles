#!/usr/bin/perl -w
use strict;

my @lines = `cat /etc/passwd`;
foreach (@lines) {
  if (!m=sbin|false=) {
    /(\w+):x:(\d+):(\d+)/;
    print "USER:$1 \t USER ID:$2 \t GROUP ID:$3 \n";
  }
}
