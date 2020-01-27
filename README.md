# dotfiles
1. install vim-plug
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
