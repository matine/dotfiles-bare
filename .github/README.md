# dotfiles-bare

My macOS dotfiles, managed as a bare git repo with `$HOME` as the work tree. Config lives
where each app expects it — no symlinks, no stow.

## New machine

### Before leaving the old Mac

`~/.Brewfile` is re-dumped automatically after every `brew install`, `uninstall` or
`tap` (see the `brew` wrapper in `~/.config/zsh/alias.zsh`), so it only needs checking.
List anything installed that isn't in it, then commit and push:

```sh
brew bundle cleanup --global
dot commit -am "Update Brewfile" && dot push
```

### Install

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/matine/dotfiles-bare/main/.config/dotfiles/scripts/bootstrap.sh)"
```

This will:

1. Install Homebrew (which brings the Xcode command line tools and git)
2. Clone this repo into `~/.dotfiles.git` and check it out into `~`. Any existing files
   that would be overwritten are moved to `~/.dotfiles-backup/`
3. Run `install-all.sh`: Homebrew packages from `~/.Brewfile`, global pnpm packages,
   default apps (`duti`), Claude Code MCP servers and macOS preferences
4. Generate an SSH key, copy it to the clipboard, wait for you to add it to GitHub,
   then switch this repo's remote to SSH
5. Create an empty `~/.zshrc.local` for secrets

It is safe to re-run.

### Then, by hand

- [ ] Fill in `~/.zshrc.local` — see [Secrets](#secrets)
- [ ] Open WezTerm and start a new shell
- [ ] Raycast → Settings → Extensions → Script Commands → add `~/.config/dotfiles/raycast`
- [ ] In Claude Code, run `/mcp` to check the MCP servers connect
- [ ] Log out and back in for the macOS preferences to take effect

Individual steps can be re-run from the menu:

```sh
sh $DOTFILES/scripts/menu.sh
```

## Usage

`dot` is `git` for this repo. Untracked files are hidden from `dot status`, so new files
need adding explicitly.

```sh
dot status
dot add ~/.config/foo/config.toml
dot commit -m "Add foo config"
dot commit -am "Update Brewfile" && dot push
```

`lg-dot` opens lazygit on the repo.

Because the work tree is the whole home folder, never `dot add` a directory wholesale
(`dot add ~/.config`) — add specific files or small, known directories.

## Layout

| Path | What |
|---|---|
| `.zshrc`, `.zprofile`, `.zshenv`, `.config/zsh/` | zsh |
| `.Brewfile` | Homebrew packages (updated automatically; `bfile` to force) |
| `.gitconfig`, `.gitignore` | git, plus the global excludes |
| `.config/{nvim,wezterm,yazi,karabiner,herdr}/` | app config |
| `Library/Application Support/` | VS Code and lazygit |
| `.claude/` | Claude Code settings, hooks, commands |
| `.agents/` | Agent skills (`.skill-lock.json` records their sources) |
| `.local/bin/` | CLIs on `PATH`: `chirp` (script logging), `keys` (cheatsheet search) |
| `.config/dotfiles/` | Everything that isn't config — `$DOTFILES` |
| `.config/dotfiles/scripts/` | Install and setup scripts, `menu.sh` |
| `.config/dotfiles/cheatsheets/` | Generated keybinding and alias sheets |
| `.config/dotfiles/raycast/` | Raycast script commands |
| `.github/README.md` | This file, kept out of `~` |

## Cheatsheets

`cheatsheets/` is generated from the configs — don't edit it by hand. After changing a
keybinding or alias:

```sh
python3 $DOTFILES/scripts/generate-cheatsheet.py
```

`cheat` opens the index in VS Code, `keys <term>` fuzzy-searches from the shell, and the
Raycast commands do the same from anywhere.

## Secrets

Credentials are **never** stored in this repo. They live in `~/.zshrc.local`, which
`~/.zshrc` sources at the end:

```sh
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
```

It is also listed in `~/.gitignore` as a safety net. Bootstrap creates it empty at mode
`600`; add the exports you need, taking the values from your password manager rather
than another machine's shell history:

```sh
export ANTHROPIC_API_KEY='...'
export NPM_TOKEN='...'
export CLOUDSMITH_TOKEN='...'
export GITHUB_MCP_TOKEN='...'
```

To check whether a file is tracked before putting anything sensitive in it:

```sh
dot ls-files --error-unmatch <path>
```
