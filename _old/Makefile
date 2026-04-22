all: sync

sync:
	[ -d ~/.emacs.d/ ] || mkdir -p ~/.emacs.d/

	[ -f ~/.emacs.d/init.el ] || ln -s $(PWD)/init.el ~/.emacs.d/init.el
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.git-prompt.sh ] || ln -s $(PWD)/git-prompt.sh ~/.git-prompt.sh
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile

clean:
	rm -f ~/.emacs.d/init.el
	rm -f ~/.vimrc 
	rm -f ~/.git-prompt.sh

.PHONY: all clean sync
