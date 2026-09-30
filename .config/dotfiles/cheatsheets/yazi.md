## Yazi

[← Index](index.md)

<!-- BEGIN MANUAL: yazi -->
Yazi opens as a float over nvim — `<leader>e` at the cwd, `<leader>-` at the
current file, `Ctrl-Up` to resume the last session. These are yazi's built-in
defaults rather than repo config (there is no `keymap.toml`), so this section is
maintained by hand -- the generator preserves everything between the MANUAL
markers.

> **Note:** the float is a terminal, so these keys only reach yazi while it has
> focus. `q` is what closes it.

### Global

| Key | What it does |
| --- | --- |
| `q` | Quit yazi — closes the nvim float |
| `Q` | Quit without writing the current directory back to the shell |
| `~` / `<f1>` | Show the keys available in the current mode |
| `esc` | Cancel the current mode or input |
| `:` | Run a shell command |
| `w` | Task manager (progress of copies, deletes, previews) |
| `z` | Jump to a directory with zoxide |
| `Z` | Jump to a directory or file with fzf |

### Inside nvim

| Key | What it does |
| --- | --- |
| `Ctrl-v` | Open the selected file in a vertical split |
| `Ctrl-x` | Open the selected file in a horizontal split |
| `Ctrl-t` | Open the selected file in a new nvim tab |
| `Ctrl-o` | Open the file and pick which window it lands in |
| `Ctrl-s` | Grep in the current directory |
| `Ctrl-y` | Copy the relative path to the clipboard |
| `Ctrl-q` | Send the selected files to the quickfix list |
| `tab` | Cycle through the open buffers |
| `Ctrl-\` | Change nvim's working directory to the one yazi is in |

### Navigation

| Key | What it does |
| --- | --- |
| `h` / `l` | Leave / enter the directory (arrow keys also work) |
| `j` / `k` | Move down/up within the listing |
| `enter` | Open the selected file or directory |
| `H` / `L` | Go back / forward through visited directories |
| `g g` / `G` | Jump to the top / bottom of the listing |
| `Ctrl-u` / `Ctrl-d` | Half page up / down |
| `g` then `h` | Go home (`~`) |
| `g` then `c` | Go to `~/.config` |
| `g` then `d` | Go to `~/Downloads` |

### Files

| Key | What it does |
| --- | --- |
| `o` | Open the selected file with the default opener |
| `O` | Open it interactively — pick which program to use |
| `y` | Yank (copy) the selection |
| `x` | Yank (cut) the selection |
| `p` | Paste into the current directory |
| `-` | Symlink the yanked files here |
| `a` | Create a file, or a directory if the name ends in `/` |
| `r` | Rename the selection |
| `d` | Move the selection to the trash |
| `D` | Delete the selection permanently |
| `.` | Toggle hidden files |
| `c` then `c` | Copy the full path |
| `c` then `d` | Copy the containing directory |
| `c` then `f` | Copy the filename |
| `c` then `n` | Copy the filename without its extension |

### Selection

| Key | What it does |
| --- | --- |
| `space` | Toggle selection on the current file and move down |
| `v` | Visual mode — select as you move |
| `V` | Visual mode that unselects instead |
| `Ctrl-a` | Select everything |
| `Ctrl-r` | Invert the selection |

### Find & search

| Key | What it does |
| --- | --- |
| `/` / `?` | Find forwards / backwards in the current directory |
| `n` / `N` | Jump to the next / previous match |
| `s` | Search by filename with fd, across subdirectories |
| `S` | Search by file contents with ripgrep |
| `Ctrl-s` | Cancel the running search |

### Tabs

| Key | What it does |
| --- | --- |
| `t` | Open a new tab at the current directory |
| `1` … `9` | Switch to that tab |
| `[` / `]` | Previous / next tab |
| `{` / `}` | Swap the current tab with the one before / after it |
| `Ctrl-c` | Close the current tab |
<!-- END MANUAL: yazi -->
