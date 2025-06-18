# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a comprehensive macOS dotfiles repository that manages development environment configuration through symlinks. It supports both Intel (x86_64) and Apple Silicon (arm64) architectures with configurations for Vim/Neovim, Emacs, shell environments, and development tools.

## Core Management Commands

**Setup and Installation:**
```bash
# Install all dotfiles via symlinks
make sync

# Remove all symlinked dotfiles  
make clean

# Install packages from Brewfile
brew bundle

# Generate new Brewfile from current packages
brew bundle dump
```

**Required Manual Setup Steps:**
1. Install vim-plug for Vim:
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. Compile YouCompleteMe server:
   ```bash
   brew install cmake
   cd ~/.vim/plugged/YouCompleteMe
   python3 install.py
   ```

3. Install nvm:
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
   ```

## Architecture and Key Components

### Dotfiles Management Strategy
- **Symlink-based**: Makefile creates symlinks from repository to home directory locations
- **Multi-architecture support**: Automatic detection and paths for both Intel and Apple Silicon Macs
- **XDG compliance**: Supports both traditional dotfiles and XDG config directories

### Text Editor Ecosystem
- **Vim** (`vimrc`): Full-featured with vim-plug, CoC.nvim, ALE linting, NERDTree
- **Neovim** (`init.vim` + `init.lua`): Modern setup with vim-jetpack, TreeSitter, Fern.vim
- **Emacs** (`init.el`): Basic configuration with Gauche Scheme integration

### Shell Environment
- **Primary**: Zsh with custom git-integrated prompt showing branch status and architecture
- **Features**: rbenv, pyenv, nvm, nodenv integration; PATH deduplication; optional Starship prompt
- **Aliases**: Comprehensive set in `aliases` file covering navigation, git, docker, development workflows

### Custom Utilities (`bin/` directory)
Key scripts for productivity:
- **`gfd`**: Git fuzzy diff with fzf for interactive branch comparison
- **`memo`**: Command reference system with categorized help files in `memo-text/`
- **`drma`**: Docker container cleanup
- **`find-command`**: PATH exploration tool
- **`switch`**: Architecture switching for Apple Silicon

### Development Tools Configuration
- **Tmux** (`tmuxconf`): Custom prefix `Ctrl-s`, vim-style navigation, clipboard integration
- **Git** (`tigrc`): Enhanced git log viewer with commit IDs
- **CoC** (`coc-settings.json`): Language server configuration for completion

## Language and Package Support

The Brewfile includes comprehensive development packages:
- **Languages**: Go, Node, Python, Java, Kotlin, OCaml, R, Deno
- **Databases**: MySQL, Redis  
- **Tools**: ripgrep, fzf, jq, ffmpeg, imagemagick
- **System utilities**: tmux, tig, wget, cmake, gcc

## Architecture-Specific Behavior

The configuration automatically detects CPU architecture and sets appropriate paths:
- Intel Macs: `/usr/local/bin` for Homebrew
- Apple Silicon: `/opt/homebrew/bin` for Homebrew
- Architecture indicator in shell prompt
- Conditional environment setup based on detected architecture

## Key Configuration Files

- **`Makefile`**: Central management for symlink creation/removal
- **`zprofile`**: Primary shell configuration with architecture detection
- **`aliases`**: Shared command shortcuts across shells  
- **`Brewfile`**: Package management for all development dependencies
- **`bin/`**: Custom utilities and productivity scripts
- **`memo-text/`**: Reference documentation for common commands and workflows