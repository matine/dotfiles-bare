# CLAUDE.md

## Dotfiles

Personal macOS dotfiles in a bare git repo: `~/.dotfiles.git` with `$HOME` as
the work tree. Use `dot` (not `git`) for every repo command, e.g. `dot status`,
`dot add ~/.zshrc`. `~/.github/README.md` covers setting up a new machine.

- **Config lives where the app expects it** — edit `~/.config/nvim/`,
  `~/.zshrc` etc. directly. Untracked files are hidden from `dot status`
  (`showUntrackedFiles no`), so a new config file must be `dot add`ed
  explicitly. Everything that isn't config lives here in `~/.config/dotfiles`
  (`$DOTFILES`): `scripts/` (install + config), `cheatsheets/`, `raycast/`.
  CLIs on `PATH` go in `~/.local/bin/`.
- **No symlinks.** Git tracks a symlink as a link, not its contents; commit
  real files.
- **`cheatsheets/` is generated** (one sheet per tool plus `index.md`) — never edit by hand; run
  `scripts/generate-cheatsheet.py` after changing a keybinding or alias. Its
  Lazygit and Raycast sections are hand-written inside the generator, between
  `MANUAL` markers.
- **No secrets in this repo, ever.** Credentials go in `~/.zshrc.local`
  (untracked, sourced at the end of `.zshrc`). Because the work tree is all of
  `$HOME`, never `dot add` a directory wholesale — add specific files.
- Scripts log with `chirp --title/--info/--error`, not `echo`, and new ones get
  registered in `scripts/menu.sh` (and `scripts/install-all.sh` if they belong
  in a fresh install).
- Prompt me to `dot add` new files I create in the home folder that should be tracked.
