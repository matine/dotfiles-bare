chirp --title "SSH key for GitHub"

KEY="$HOME/.ssh/id_ed25519"

if [ -f "$KEY" ]; then
  chirp --skip "$KEY already exists"
else
  chirp --info "Generating $KEY"
  mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh"
  ssh-keygen -t ed25519 -C "$(git config --global user.email)" -f "$KEY"
fi

if ! grep -q "UseKeychain" "$HOME/.ssh/config" 2>/dev/null; then
  printf 'Host *\n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/id_ed25519\n' >> "$HOME/.ssh/config"
fi
ssh-add --apple-use-keychain "$KEY"

pbcopy < "$KEY.pub"
chirp --prompt "Public key copied. Add it at https://github.com/settings/ssh/new, then press enter"
read -r _

if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
  git --git-dir="$HOME/.dotfiles.git" remote set-url origin git@github.com:matine/dotfiles-bare
  chirp --success "Dotfiles remote switched to SSH"
else
  chirp --warn "GitHub SSH auth failed - re-run this script once the key is added"
fi
