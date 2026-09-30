#!/bin/sh
#============================================================================
# Title: bootstrap
# Usage: sh -c "$(curl -fsSL https://raw.githubusercontent.com/matine/dotfiles-bare/main/.config/dotfiles/scripts/bootstrap.sh)"
#
# Description:
# Sets up a fresh Mac: Homebrew (which brings the Xcode command line tools and
# git), checks the bare repo out into $HOME, then runs install-all.sh. Safe to
# re-run. Uses sh -c rather than a pipe so prompts can still read the terminal.
#============================================================================

set -e

REPO="https://github.com/matine/dotfiles-bare"
GIT_DIR="$HOME/.dotfiles.git"
BACKUP="$HOME/.dotfiles-backup"

dot() { git --git-dir="$GIT_DIR" --work-tree="$HOME" "$@"; }

echo "==> Installing Homebrew"
if ! command -v brew >/dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
[ "$(uname -m)" = "arm64" ] && HOMEBREW="/opt/homebrew" || HOMEBREW="/usr/local"
eval "$("$HOMEBREW/bin/brew" shellenv)"

echo "==> Checking out dotfiles"
if [ ! -d "$GIT_DIR" ]; then
	git clone --bare "$REPO" "$GIT_DIR"
	dot config --local status.showUntrackedFiles no
fi

if ! dot checkout 2>/dev/null; then
	echo "==> Moving conflicting files to $BACKUP"
	dot checkout 2>&1 | grep -E '^[[:space:]]' | sed 's/^[[:space:]]*//' | while read -r f; do
		mkdir -p "$BACKUP/$(dirname "$f")"
		mv "$HOME/$f" "$BACKUP/$f"
	done
	dot checkout
fi

export DOTFILES="$HOME/.config/dotfiles"
export PATH="$HOME/.local/bin:$PATH"

sh "$DOTFILES/scripts/install-all.sh"
sh "$DOTFILES/scripts/ssh.sh"

if [ ! -f "$HOME/.zshrc.local" ]; then
	touch "$HOME/.zshrc.local"
	chmod 600 "$HOME/.zshrc.local"
	chirp --info "Created ~/.zshrc.local - add your secrets from the password manager (see README > Secrets)"
fi

chirp --success "Bootstrap complete. Open WezTerm and check the README for the manual steps"
