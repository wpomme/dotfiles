## zprofile, zshrcの改良
- インストールされていることが前提となっているツールがある
    - homebrew, mise, zoxide, zsh-completions, zsh-autosuggestionsなど
    - これらをどう扱うか?

```bash
## 案１
## インストールされていないと表示してそのまま継続する
if command -v mise &>/dev/null; then
    eval "$(mise activate zsh)"
else
    echo "miseがインストールされていません。"
fi
```
