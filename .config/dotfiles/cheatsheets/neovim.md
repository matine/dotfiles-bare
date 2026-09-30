## Neovim

[← Index](index.md)

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `Ctrl-s` | Save — `:write<cr>` _(mode: n)_ | `~/.config/nvim/lua/config/keymaps.lua` |
| `<leader>r` | Restart — `:restart<cr>` _(mode: n)_ | `~/.config/nvim/lua/config/keymaps.lua` |
| `<leader>-` | Open yazi at the current file — mikavilpas/yazi.nvim _(mode: n,v)_ | `~/.config/nvim/lua/plugins/yazi.lua` |
| `<leader>e` | Open yazi in nvim's working directory — mikavilpas/yazi.nvim _(mode: n)_ | `~/.config/nvim/lua/plugins/yazi.lua` |
| `Ctrl-Up` | Resume the last yazi session — mikavilpas/yazi.nvim _(mode: n)_ | `~/.config/nvim/lua/plugins/yazi.lua` |

> **Note:** `~/.config/nvim/lua/plugins/example.lua` is disabled by an `if true then return {} end` guard, so its keymaps never load and are excluded.

> **Note:** Everything else in Neovim comes from LazyVim's defaults, which live in the plugin itself and not in this repo.

### Claude Code

<!-- BEGIN MANUAL: nvim-claude-code -->
The nvim side of the [Claude](claude.md) connection. The keys come from LazyVim's
`ai.claudecode` extra rather than repo config, so this block is maintained by
hand -- the generator preserves everything between the MANUAL markers.

|  |  |
| --- | --- |
| `:ClaudeCodeStatus` | Check the IDE server is running |
| `:ClaudeCodeStart` | Start the server if it isn't running |
| `<leader>as` | Send the visual selection to Claude _(mode: v)_ |
| `<leader>ab` | Add the current buffer to Claude's context |
| `<leader>aa` | Accept Claude's proposed diff |
| `<leader>ad` | Reject Claude's proposed diff |
<!-- END MANUAL: nvim-claude-code -->

### Navigation

<!-- BEGIN MANUAL: nvim-navigation -->
Built into nvim (and LazyVim) rather than repo config, so this block is
maintained by hand -- the generator preserves everything between the MANUAL
markers. A count before a motion repeats it: `2w` moves two words.

#### Within a line

| Key | What it does |
| --- | --- |
| `h` `j` `k` `l` | Move left / down / up / right (arrow keys also work) |
| `w` | Jump to the start of the next word |
| `e` | Jump to the end of the current word |
| `b` | Jump back to the start of the previous word |
| `0` | Jump to the start of the line |
| `$` | Jump to the end of the line |

#### Within a file

| Key | What it does |
| --- | --- |
| `gg` | Go to the first line of the file |
| `G` | Go to the last line of the file |
| `{count}G` | Go to line number `{count}` |
| `%` | Jump to the matching `(`, `[` or `{` |
| `zt` / `zz` / `zb` | Scroll so the current line sits at the top / middle / bottom of the window |
| `Ctrl-g` | Show the file name and cursor position |

#### Jumping back and forth

A "jump" is any big move: `gg`, `G`, `/search`, `n`, `%`, going to a definition,
opening a file from a picker. Nvim remembers where each one started (the
_jumplist_, see it with `:jumps`).

| Key | What it does |
| --- | --- |
| `Ctrl-o` | Go back to the previous position, even in another file |
| `Ctrl-i` | Go forward again (same key as `Tab` in a terminal) |

#### Buffers and windows

| Key | What it does |
| --- | --- |
| `H` | Previous buffer (LazyVim -- stock nvim's `H` jumps to the top of the screen) |
| `L` | Next buffer (LazyVim -- stock nvim's `L` jumps to the bottom of the screen) |
| `Ctrl-w w` | Jump to the next window |

#### Search

| Key | What it does |
| --- | --- |
| `/text` | Search forwards for `text` |
| `?text` | Search backwards for `text` |
| `n` / `N` | Next match / match in the opposite direction |
<!-- END MANUAL: nvim-navigation -->

### Insert

<!-- BEGIN MANUAL: nvim-insert -->
Keys that put you into Insert mode, so you can type text. Built into nvim rather
than repo config, so this block is maintained by hand -- the generator preserves
everything between the MANUAL markers.

| Key | What it does |
| --- | --- |
| `Esc` | Back to Normal mode, or cancel a half-typed command |
| `i` | Insert before the cursor |
| `a` | Append after the cursor |
| `I` | Insert at the start of the line |
| `A` | Append at the end of the line |
| `o` | Open a new line below and start inserting |
| `O` | Open a new line above and start inserting |
| `r{char}` | Replace the character under the cursor with `{char}`, staying in Normal mode |
| `R` | Replace mode -- overwrite characters as you type until `Esc` |
| `u` | Undo the last change |
| `U` | Undo every change on the current line |
| `Ctrl-r` | Redo |
<!-- END MANUAL: nvim-insert -->

### Delete

<!-- BEGIN MANUAL: nvim-delete -->
Deleting follows `operator [count] motion` -- `d2w` deletes two words. Anything
deleted is also saved to a register, so `p` can paste it back. Built into nvim
rather than repo config, so this block is maintained by hand -- the generator
preserves everything between the MANUAL markers.

| Key | What it does |
| --- | --- |
| `x` | Delete the character under the cursor |
| `dw` | Delete to the start of the next word |
| `de` | Delete to the end of the word |
| `d$` | Delete to the end of the line |
| `D` | Same as `d$` |
| `dd` | Delete the whole line (`2dd` deletes two lines) |
| `cw` / `ce` | Change the word -- deletes it, then starts inserting |
| `c$` | Change to the end of the line -- deletes it, then starts inserting |
| `C` | Same as `c$`. Easy to hit by accident: it deletes to the end of the line and switches to Insert mode |
| `cc` | Change the whole line |
| `:s/old/new` | Replace the first match on the line |
| `:s/old/new/g` | Replace every match on the line |
| `:%s/old/new/g` | Replace every match in the file |
| `:%s/old/new/gc` | Same, asking before each replacement |
<!-- END MANUAL: nvim-delete -->

### Yank

<!-- BEGIN MANUAL: nvim-yank -->
Yank is Vim's word for copy. Like delete, it takes a motion: `yw` copies a word.
Built into nvim rather than repo config, so this block is maintained by hand --
the generator preserves everything between the MANUAL markers.

| Key | What it does |
| --- | --- |
| `yw` | Copy to the start of the next word |
| `y$` | Copy to the end of the line |
| `yy` | Copy the whole line (`2yy` copies two lines) |
| `v` then a motion, then `y` | Select text visually, then copy it |
| `p` | Paste the last yanked or deleted text after the cursor (lines go below) |
| `P` | Paste before the cursor (lines go above) |
<!-- END MANUAL: nvim-yank -->

### Commands

<!-- BEGIN MANUAL: nvim-commands -->
Ex commands, typed after `:`. Built into nvim rather than repo config, so this
block is maintained by hand -- the generator preserves everything between the
MANUAL markers.

#### Files and shell

| Key | What it does |
| --- | --- |
| `:w` | Save |
| `:q` | Quit (or close the help window) |
| `:wq` | Save and quit |
| `:q!` | Quit, throwing away changes |
| `:w FILENAME` | Save to `FILENAME` |
| `:r FILENAME` | Insert the contents of `FILENAME` below the cursor |
| `:r !ls` | Insert the output of a shell command below the cursor |
| `:!command` | Run a shell command, like `:!ls` |
| `:e $MYVIMRC` | Open your config |

#### Options and help

| Key | What it does |
| --- | --- |
| `:set ic` / `:set is` / `:set hls` | Ignore case / show matches while typing / highlight all matches |
| `:set noic` | Prefix `no` to turn an option off |
| `:set invic` | Prefix `inv` to toggle an option |
| `:help` / `F1` | Open help |
| `:help TOPIC` | Help on `TOPIC` |
| `Ctrl-d` / `Tab` | On the `:` line -- list / cycle through completions |
<!-- END MANUAL: nvim-commands -->
