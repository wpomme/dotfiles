all: sync

sync:
	# mkdir -p ~/.config/alacritty

	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/vimrc ~/.config/nvim/init.vim
	[ -f ~/.zprofile ] || ln -s $(PWD)/zprofile ~/.zprofile
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -f ~/.git-prompt.sh ] || ln -s $(PWD)/git-prompt.sh ~/.git-prompt.sh
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile
	[ -f ~/.emacs.d/init.el ] || ln -s $(PWD)/init.el ~/.emacs.d/init.el
	# [ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	# [ -f ~/.bashrc ] || ln -s $(PWD)/bashrc ~/.bashrc
	# [ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	# [ -f ~/.tigrc ] || ln -s $(PWD)/tigrc ~/.tigrc
	# [ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	# [ -f ~/.agignore ] || ln -s $(PWD)/agignore ~/.agignore

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -f ~/.vimrc 
	rm -f ~/.config/nvim/init.vim
	rm -f ~/.bashrc
	rm -f ~/.zshrc
	rm -f ~/.git-prompt.sh
	rm -f ~/.emacs.d/init.el
	# rm -f ~/.config/alacritty/alacritty.yml
	# rm -f ~/.tmux.conf
	# rm -f ~/.tigrc
	# rm -f ~/.gitconfig
	# rm -f ~/.agignore

.PHONY: all clean sync build run kill