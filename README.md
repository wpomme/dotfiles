# dotfiles
1. install vim-plug
https://github.com/junegunn/vim-plug
for vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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
