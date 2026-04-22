# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

macOS dotfiles repository managing development environment configuration. Supports both Intel (x86_64) and Apple Silicon (arm64) architectures.

## Deployment

```bash
bash apply.sh
```

`apply.sh` copies files (not symlinks) to their target locations:
- `config/nvim/` → `~/.config/nvim/`
- `config/ghostty/` → `~/.config/ghostty/`
- `main/tigrc` → `~/.tigrc`
- `main/tmuxconf` → `~/.tmux.conf`
- `main/git-prompt.sh` → `~/.git-prompt.sh`
- `main/aliases` → `~/.aliases`
- `main/zprofile` → `~/.zprofile`
- `bin/` (executable files) → `~/.bin/`

## Repository Structure

- **`main/`**: Shell and tool configs (zprofile, aliases, tmuxconf, tigrc, git-prompt.sh)
- **`config/nvim/`**: Neovim config — `init.lua` (entry), `coc-settings.json`, `lua/` (basic.lua, keymap.lua, plugin.lua)
- **`config/ghostty/`**: Ghostty terminal config
- **`bin/`**: Custom shell utilities (copied to `~/.bin/`)
- **`_old/`**: Archived legacy configs (Makefile, vimrc, init.el, bash_profile) — not active

## Key Architecture Points

### Shell Environment (`main/zprofile`, `main/aliases`)
- Detects CPU architecture at login; sets Homebrew path accordingly (`/opt/homebrew` on Apple Silicon, `/usr/local` on Intel)
- Custom git-integrated prompt via `main/git-prompt.sh`
- Integrates rbenv, pyenv, nodenv, mise

### Neovim (`config/nvim/`)
- Entry point: `init.lua` — sources the lua modules
- `lua/plugin.lua`: Plugin definitions (vim-jetpack)
- `lua/basic.lua`: General settings
- `lua/keymap.lua`: Key mappings
- Uses CoC for LSP (`coc-settings.json`)

### Tmux (`main/tmuxconf`)
- Prefix: `Ctrl-s`
- Vim-style pane navigation
- Clipboard integration

## Package Management

```bash
brew bundle        # Install packages from Brewfile
brew bundle dump   # Regenerate Brewfile from installed packages
```
