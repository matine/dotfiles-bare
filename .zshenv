export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export DOTFILES="$HOME/.config/dotfiles"
export ZDOTDIR=$HOME
export CODE="$HOME/Code"
export HOMEBREW_NO_AUTO_UPDATE=1
export N_PREFIX="$HOME/.n"
[ "$(uname -m)" = "arm64" ] && export HOMEBREW="/opt/homebrew" || export HOMEBREW="/usr/local"
