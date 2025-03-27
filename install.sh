# https://ghostty.org/docs/install/binary#homebrew
brew install --cask ghostty

# https://github.com/nikitabobko/AeroSpace?tab=readme-ov-file#installation
brew install --cask nikitabobko/tap/aerospace

# https://github.com/FelixKratz/JankyBorders?tab=readme-ov-file#install
brew tap FelixKratz/formulae && brew install borders

# https://github.com/zen-browser/desktop?tab=readme-ov-file#macos
brew install --cask zen-browser

brew install --cask brave-browser

# https://jetify-com.vercel.app/docs/devbox/installing_devbox/?install-method=macos
curl -fsSL https://get.jetify.com/devbox | bash

echo "## Installation done!" | gum format
