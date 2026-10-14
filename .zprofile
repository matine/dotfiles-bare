
eval "$($HOMEBREW/bin/brew shellenv)"

# path_helper in /etc/zprofile pushes .zshenv entries behind system paths
typeset -U path
path=($HOME/.local/bin $path)
