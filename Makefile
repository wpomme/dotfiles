all: sync

sync:
	#####
	# [ -d ~/.config/nvim/ ] - ~/.config/ghostty/ が存在すれば真を返す
	# 次のコマンドと同等である。真であれば$statusは0になる
	# $ test -d ~/.config/nvim ; echo $status
	# || - 前のコマンドが失敗した場合、次のコマンドを実行する
	# mkdir -p ~/.config/nvim - ディレクトリを作成する
	# まとめると、「ディレクトリがなければ作成する」というコマンドになる
	#####
	[ -d ~/.config/nvim/ ] || mkdir -p ~/.config/nvim/
	[ -d ~/.config/ghostty/ ] || mkdir -p ~/.config/ghostty/
	# [ -d ~/.config/nvim/lua/ ] || mkdir -p ~/.config/nvim/lua/
	[ -d ~/.emacs.d/ ] || mkdir -p ~/.emacs.d/

	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.config/nvim/coc-settings.json ] || ln -s $(PWD)/coc-settings.json ~/.config/nvim/coc-settings.json
	[ -f ~/.config/ghostty/config ] || ln -s $(PWD)/ghostty ~/.config/ghostty/config
	# [ -f ~/.config/nvim/lua/init.lua ] || ln -s $(PWD)/init.lua ~/.config/nvim/lua/init.lua
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
	rm -f ~/.config/ghostty/config
	rm -f ~/.bashrc
	rm -f ~/.zprofile
	rm -f ~/.profile
	rm -f ~/.git-prompt.sh
	rm -f ~/.emacs.d/init.el
	rm -f ~/.tigrc
	rm -f ~/.tmux.conf
	rm -fr ~/.bin

.PHONY: all clean sync build run kill
