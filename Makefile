#!/bin/sh
main_dir = $(join $(CURDIR),/main/)
config_dir = $(join $(CURDIR),/config/)
bin_dir = $(join $(CURDIR),/bin/)

all:
	@$(MAKE) -C $(config_dir)
	@$(MAKE) -C $(main_dir)
	@$(MAKE) -C $(bin_dir)

.PHONY: all
