## Dotfiles

[← Index](index.md)

<!-- BEGIN MANUAL: dotfiles -->
Working with the bare dotfiles repo (`~/.dotfiles.git`, work tree `$HOME`)

### Git

| Command | What it does |
| --- | --- |
| `dot <git args>` | `git` for the dotfiles repo -- `dot status`, `dot diff`, `dot push` |
| `dot add ~/path/to/file` | Track a new file -- untracked files are hidden from `dot status` |
| `dot commit -am "msg"` | Commit every change to tracked files |
| `dotcommit` | Write the commit message with AI (`aicommit2`) for staged dotfiles changes |
| `lg-dot` | Open lazygit on the dotfiles repo |

### Cheatsheets

| Command | What it does |
| --- | --- |
| `cheat-dot` | Open the dotfiles cheatsheet index in VS Code |
| `cheat-dot-t` | Open the dotfiles cheatsheet index in Terminal |

### Tips

- Edit config where the app expects it (`~/.zshrc`, `~/.config/nvim/`...); only
  scripts, cheatsheets and Raycast commands live in `$DOTFILES`.
- Never `dot add` a directory wholesale -- the work tree is all of `$HOME`.

- Secrets go in `~/.zshrc.local` (untracked, sourced at the end of `.zshrc`).

- Setting up a new machine: see `~/.github/README.md`.
<!-- END MANUAL: dotfiles -->

<!-- markdownlint-configure-file
{ "MD041": false, "MD013": { "tables": false } }
-->
