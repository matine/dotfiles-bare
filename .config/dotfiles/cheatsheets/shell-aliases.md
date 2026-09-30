## Shell aliases

[← Index](index.md)

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `a` | Show this file — `bat $HOME/.config/zsh/alias.zsh` | `~/.config/zsh/alias.zsh` |
| `cheat` | Show every keybinding and alias (opens rendered, see editorAssociations in VSCode settings) — `code $DOTFILES/cheatsheets/index.md` | `~/.config/zsh/alias.zsh` |
| `path` | `echo $PATH \| tr ':' '\n'` | `~/.config/zsh/alias.zsh` |
| `src` | `source ~/.zshrc` | `~/.config/zsh/alias.zsh` |
| `o` | `open .` | `~/.config/zsh/alias.zsh` |
| `pk` | `bat package.json` | `~/.config/zsh/alias.zsh` |
| `mkdir` | `mkdir -pv` | `~/.config/zsh/alias.zsh` |
| `mv` | `mv -v` | `~/.config/zsh/alias.zsh` |
| `rm` | `rm -i -v` | `~/.config/zsh/alias.zsh` |
| `ni` | `pnpm i` | `~/.config/zsh/alias.zsh` |
| `ns` | `pnpm start` | `~/.config/zsh/alias.zsh` |
| `nd` | `pnpm dev` | `~/.config/zsh/alias.zsh` |
| `nt` | `pnpm test` | `~/.config/zsh/alias.zsh` |
| `nb` | `pnpm build` | `~/.config/zsh/alias.zsh` |
| `g` | `git` | `~/.config/zsh/alias.zsh` |
| `lg` | `lazygit` | `~/.config/zsh/alias.zsh` |
| `bi` | `brew install` | `~/.config/zsh/alias.zsh` |
| `bu` | `brew uninstall` | `~/.config/zsh/alias.zsh` |
| `bup` | `brew upgrade` | `~/.config/zsh/alias.zsh` |
| `bfile` | `brew bundle dump --force --file=$HOME/.Brewfile` | `~/.config/zsh/alias.zsh` |
| `ls` | `eza --all --hyperlink` | `~/.config/zsh/alias.zsh` |
| `ls-p` | `eza --all --absolute=on` | `~/.config/zsh/alias.zsh` |
| `gita` | Show git alias — `git config --get-regexp alias` | `~/.config/zsh/alias.zsh` |
| `dot` | `/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME` | `~/.config/zsh/alias.zsh` |
| `lg-dot` | `lazygit --git-dir="$HOME/.dotfiles.git" --work-tree="$HOME"` | `~/.config/zsh/alias.zsh` |
