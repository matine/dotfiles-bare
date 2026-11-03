chirp --title "Install pipx packages"

for formula in pipx python@3.12; do
  if ! brew list "$formula" >/dev/null 2>&1; then
    chirp --info "Installing $formula"
    brew install "$formula"
  fi
done

# frogmouth's httpcore dependency breaks on Python 3.13+
PYTHON="$(brew --prefix python@3.12)/bin/python3.12"

chirp --info "Installing packages"
pipx install --python "$PYTHON" frogmouth
