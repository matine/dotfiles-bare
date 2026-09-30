## Shell functions

[← Index](index.md)

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `mkd <args>` | ``mkdir -p "$@" && cd "$@" && echo "Now in `pwd`"`` | `~/.config/zsh/functions.zsh` |
| `set_win_title <args>` | `echo -ne "\033]0; $(basename "$PWD") \007"` | `~/.config/zsh/functions.zsh` |
