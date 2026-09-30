chirp --title "Installing all the things"

sh $DOTFILES/scripts/homebrew.sh
sh $DOTFILES/scripts/homebrew-packages.sh
sh $DOTFILES/scripts/npm-packages.sh
sh $DOTFILES/scripts/duti.sh
sh $DOTFILES/scripts/claude-mcp.sh
sh $DOTFILES/scripts/macos.sh
