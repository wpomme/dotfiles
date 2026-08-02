#!/bin/sh
.PHONY: all clean
current_files = $(wildcard *)
exclude_files = Makefile
objects = $(filter-out $(exclude_files), $(current_files))
targets = $(patsubst %,$(HOME)/.%,$(objects))

$(HOME)/.%: %
	cp $< $@

all: $(targets)

clean:;
	rm $(targets)
