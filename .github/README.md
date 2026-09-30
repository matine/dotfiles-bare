# dotfiles-bare

My dotfiles, managed as a bare git repo with `$HOME` as the work tree.

## Setup on a new machine

```sh
git clone --bare https://github.com/matine/dotfiles-bare "$HOME/.dotfiles.git"
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot checkout
```

If `checkout` fails because files already exist, back them up or remove them, then run it again.

## Usage

```sh
dot status
dot add ~/.zshrc
dot commit -m "Update zshrc"
dot push
```

`lg-dot` opens lazygit on the repo.

## Contents

- `.zshrc`, `.zprofile`, `.zshenv`, `.config/zsh` — zsh
- `.Brewfile` — Homebrew packages
- `.gitconfig`
- `.config/nvim`, `.config/wezterm`, `.config/yazi`, `.config/karabiner`, `.config/herdr`
- `.claude` — Claude Code config
- `Library/Application Support` — app settings
