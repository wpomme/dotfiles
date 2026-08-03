#!/bin/sh
main_dir = $(join $(CURDIR),/main/)

all: rest main-dotfiles

rest:;
	bash update.sh

main-dotfiles:;
	$(MAKE) -C $(main_dir)

.PHONY: all rest main-dotfiles
