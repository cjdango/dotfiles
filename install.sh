#!/bin/zsh

# Install Homebrew if not installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing it now..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install gum if not installed
if ! command -v gum &>/dev/null; then
  echo "gum not found. Installing it now..."
  brew install gum
fi

# Menu options
declare -A choices

choices=(
  ["Ghostty"]="brew install --cask ghostty"
  ["AeroSpace"]="brew install --cask nikitabobko/tap/aerospace"
  ["JankyBorders"]="brew tap FelixKratz/formulae && brew install borders"
  ["ZenBrowser"]="brew install --cask zen-browser"
  ["BraveBrowser"]="brew install --cask brave-browser"
  ["Devbox"]="curl -fsSL https://get.jetify.com/devbox | bash"
)

# User selection using gum
echo "Select the packages to install using the spacebar and press Enter when done:"
selection=$(gum choose --no-limit ${(k)choices} $(for i in ${(k)choices}; do echo "--selected" $i; done))

# Run selected installations
for item in ${(f)selection}; do
  echo "# Installing $item..." | gum format 
  eval "${choices[$item]}"
done
echo "\n\n"
echo "## Installation Complete!" | gum format
