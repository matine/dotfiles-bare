## Shell aliases

[← Index](index.md)

### Shell

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `a` | Show this file — `bat $HOME/.config/zsh/alias.zsh` | `~/.config/zsh/alias.zsh` |
| `path` | `echo $PATH \| tr ':' '\n'` | `~/.config/zsh/alias.zsh` |
| `src` | `source ~/.zshrc` | `~/.config/zsh/alias.zsh` |
| `o` | `open .` | `~/.config/zsh/alias.zsh` |
| `mkdir` | `mkdir -pv` | `~/.config/zsh/alias.zsh` |
| `mv` | `mv -v` | `~/.config/zsh/alias.zsh` |
| `rm` | `rm -i -v` | `~/.config/zsh/alias.zsh` |
| `ls` | `eza --all --hyperlink` | `~/.config/zsh/alias.zsh` |
| `ls-p` | `eza --all --absolute=on` | `~/.config/zsh/alias.zsh` |

### Cheatsheet

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `cheat` | `code $DOTFILES/cheatsheets/index.md` | `~/.config/zsh/alias.zsh` |
| `cheat-gen` | `$DOTFILES/scripts/generate-cheatsheet.py` | `~/.config/zsh/alias.zsh` |

### Git

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `g` | `git` | `~/.config/zsh/alias.zsh` |
| `lg` | `lazygit` | `~/.config/zsh/alias.zsh` |
| `gita` | Show git alias — `git config --get-regexp alias` | `~/.config/zsh/alias.zsh` |

### Dotfiles

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `dot` | `/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME` | `~/.config/zsh/alias.zsh` |
| `lg-dot` | `lazygit --git-dir="$HOME/.dotfiles.git" --work-tree="$HOME"` | `~/.config/zsh/alias.zsh` |

### pnpm

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `pk` | `bat package.json` | `~/.config/zsh/alias.zsh` |
| `ni` | `pnpm i` | `~/.config/zsh/alias.zsh` |
| `ns` | `pnpm start` | `~/.config/zsh/alias.zsh` |
| `nd` | `pnpm dev` | `~/.config/zsh/alias.zsh` |
| `nt` | `pnpm test` | `~/.config/zsh/alias.zsh` |
| `nb` | `pnpm build` | `~/.config/zsh/alias.zsh` |

### Homebrew

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `bi` | `brew install` | `~/.config/zsh/alias.zsh` |
| `bu` | `brew uninstall` | `~/.config/zsh/alias.zsh` |
| `bup` | `brew upgrade` | `~/.config/zsh/alias.zsh` |
| `bfile` | `brew bundle dump --global --force` | `~/.config/zsh/alias.zsh` |

### Herdr

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `hr` | `herdr-reset` | `~/.config/zsh/alias.zsh` |
| `hs` | `herdr-reset --soft` | `~/.config/zsh/alias.zsh` |
