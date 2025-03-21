# Check if we're in an interactive shell
if status is-interactive
    # Initialize Starship prompt
    starship init fish | source

    # Unset the default fish greeting text which messes up Zellij
    set fish_greeting
end
