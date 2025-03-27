# Activate devbox global packages
eval "$(devbox global shellenv --init-hook --preserve-path-stack -r)" && hash -r

# Initialize Starship prompt
eval "$(starship init zsh)"

# At this point, specify the Zellij config dir, so we can launch it manually if we want to
export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij
# Check if our Terminal emulator is Ghostty
if [[ "$TERM" == "xterm-ghostty" ]]; then
  # Use Fish shell 
  export SHELL=$DEVBOX_PACKAGES_DIR/bin/fish

  # Launch zellij
  eval "$(zellij setup --generate-auto-start zsh)"
fi

