#!/bin/sh
current_files = $(wildcard *)
exclude_files = Makefile README.md
targetdir = $(HOME)/.local/bin
objects = $(filter-out $(exclude_files),$(current_files))
targets = $(patsubst %,$(targetdir)/%,$(objects))

all: $(targets)

$(targetdir)/%: %
	cp $< $@

build:;
	mkdir -p $(targetdir)

# ~/.local/binディレクトリまでは消さなくていい
clean:;
	rm $(targets)

.PHONY: all clean build
