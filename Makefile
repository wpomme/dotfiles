all: sync

sync:
	[ -d ~/.config/nvim/ ] || mkdir -p ~/.config/nvim/
	[ -d ~/.emacs.d/ ] || mkdir -p ~/.emacs.d/

	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	# [ -f ~/.config/starship.toml ] || ln -s $(PWD)/starship.toml ~/.config/starship.toml
	[ -d ~/.bin ] || ln -s $(PWD)/bin ~/.bin
	[ -f ~/.zprofile ] || ln -s $(PWD)/zprofile ~/.zprofile
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -f ~/.git-prompt.sh ] || ln -s $(PWD)/git-prompt.sh ~/.git-prompt.sh
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile
	[ -f ~/.emacs.d/init.el ] || ln -s $(PWD)/init.el ~/.emacs.d/init.el
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	[ -f ~/.tigrc ] || ln -s $(PWD)/tigrc ~/.tigrc

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -f ~/.vimrc 
	rm -f ~/.config/starship.toml
	rm -f ~/.bashrc
	rm -f ~/.zprofile
	rm -f ~/.profile
	rm -f ~/.git-prompt.sh
	rm -f ~/.emacs.d/init.el
	rm -f ~/.tigrc
	rm -f ~/.tmux.conf
	rm -fr ~/.bin

.PHONY: all clean sync build run kill
