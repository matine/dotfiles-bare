## Lazygit

[← Index](index.md)

<!-- BEGIN MANUAL: lazygit -->
Start lazygit in the terminal with `lg`. These are lazygit's built-in defaults,
not repo config, so this section is maintained by hand -- the generator
preserves everything between the MANUAL markers.

> **Note:** the same key means different things depending on which panel has
> focus.

### Global & navigation

| Key | What it does |
| --- | --- |
| `q` | Quit lazygit |
| `?` | Show the keys available in the current panel |
| `z` | Undo last action |
| `Z` | Redo last undo action |
| `:` | Run any shell command, like raw git |
| `@` | Command log (shows all the raw git that lazygit has performed) |
| `p` | Pull |
| `P` | Push |
| `h` / `l` | Move between panels (arrow keys also work) |
| `j` / `k` | Move up/down within a list (arrow keys also work) |
| `[` / `]` | Switch tabs within a panel |
| `enter` | Drill into the selected item |
| `esc` | Cancel and go back to the previous view or panel |
| `0` | Focus the main view (diff display) |

### Files

| Key | What it does |
| --- | --- |
| `e` | Open the selected file in your external editor |
| `space` | Toggle staged state for the selected file |
| `a` | Toggle staged/unstaged for all files in the working tree |
| `c` | Commit staged changes — opens the commit message panel |
| `w` | Commit changes without running the pre-commit hook |
| `r` | Refresh the files list |
| `s` | Stash all changes |
| `M` | View options for resolving merge conflicts |

### Branches & tags

| Key | What it does |
| --- | --- |
| `space` | Checkout the selected branch |
| `n` | Create a new branch off the selected branch |
| `N` | Create a new branch and move the unpushed commits of the current branch to it — useful if you forgot to create a branch first |
| `R` | Rename the selected branch |
| `i` | Add the selected file to .gitignore or exclude |
| `M` | View options for merging the selected branch into the current branch (regular or squash merge) |
| `o` | Create a pull request for the selected branch |
| `enter` | View the commits of the selected branch |
<!-- END MANUAL: lazygit -->
