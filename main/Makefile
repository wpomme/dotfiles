#!/bin/sh
current_files = $(wildcard *)
exclude_files = Makefile
objects = $(filter-out $(exclude_files), $(current_files))
targets = $(patsubst %,$(HOME)/.%,$(objects))

all: $(targets)

$(HOME)/.%: %
	cp $< $@

clean:;
	rm $(targets)

.PHONY: all clean
