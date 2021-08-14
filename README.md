# for WSL
```
sudo apt update
sudo apt install make -y
sudo apt install make-guile -y
sudo apt install neovim tmux tig -y
sudo apt install build-essential cmake python3-dev
```
# dotfiles
1. install vim-plug
https://github.com/junegunn/vim-plug
for vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```
for nvim
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
2. activate ycmd server
```
brew install cmake
cd ~/.vim/plugged/YouCompleteMe
python3 install.py
```

# nvm
https://github.com/nvm-sh/nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

# Brewfile
create Brewfile  
```
brew bundle dump
```

install my packages via Brewfile  
```
brew bundle
```

# Emacs Markdown
```
M-x package-install
markdown-mode
gh-md
```
show markdown
```
M-x gh-md-render-region
M-x gh-md-render-buffer
```
