#!/bin/sh
current_dirs_by_find = $(shell find . -type d)
current_files_by_find := $(shell find . -type f)
exclude_dirs = .
# substで"./"を取り除く
current_dirs = $(filter-out $(exclude_dirs),$(subst ./,,$(current_dirs_by_find)))
exclude_files = Makefile
objects = $(filter-out $(exclude_files),$(subst ./,,$(current_files_by_find)))
targets = $(patsubst %,$(HOME)/.config/%,$(objects))
target_dirs = $(patsubst %,$(HOME)/.config/%,$(current_dirs))

all: $(targets)

$(HOME)/.config/%: %
	cp $< $@

build:;
	mkdir -p $(target_dirs)

clean:;
	rm $(targets)
	rmdir $(target_dirs)

.PHONY: all clean build
