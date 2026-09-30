menu() {
    chirp --title "Menu"

    chirp --prompt "Please select an option"

    while true; do
        chirp --option "1:   Install all the things in order"
        chirp --option "2:   Install Homebrew"
        chirp --option "3:   Install Homebrew packages"
        chirp --option "4:   Install (P)NPM packages"
        chirp --option "5:   Set default applications to open files"
        chirp --option "6:   Register Claude Code MCP servers"
        chirp --option "7:   Configure MacOS"
        chirp --option "8:   Set up SSH key for GitHub"
        chirp --option "9:   Regenerate cheatsheets"
        chirp --option "0:   Exit this menu"

        read -p "$PS3" choice

        case $choice in
            1) sh $DOTFILES/scripts/install-all.sh || chirp --error "Failed to run the Install script" ;;
            2) sh $DOTFILES/scripts/homebrew.sh || chirp --error "Failed to run the Homebrew installation script" ;;
            3) sh $DOTFILES/scripts/homebrew-packages.sh || chirp --error "Failed to run the Homebrew packages script" ;;
            4) sh $DOTFILES/scripts/npm-packages.sh || chirp --error "Failed to run the (P)NPM packages script" ;;
            5) sh $DOTFILES/scripts/duti.sh || chirp --error "Failed to run the Duti script" ;;
            6) sh $DOTFILES/scripts/claude-mcp.sh || chirp --error "Failed to run the Claude MCP script" ;;
            7) sh $DOTFILES/scripts/macos.sh || chirp --error "Failed to run the MacOS configuration script" ;;
            8) sh $DOTFILES/scripts/ssh.sh || chirp --error "Failed to run the SSH script" ;;
            9) python3 $DOTFILES/scripts/generate-cheatsheet.py || chirp --error "Failed to generate the cheatsheets" ;;
            0) chirp --info "Exiting menu"; break ;;
            *) chirp --warn "Invalid option $choice" ;;
        esac
    done
}

menu
