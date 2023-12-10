# INSTALL APPS
brew install --cask google-chrome

brew install --cask todoist

brew install --cask slack

# This will be ST4 which supports Mac Silicon
brew install --cask sublime-text

# A QuickTime Player replacement but with support for more file formats
brew install --cask iina

brew install --cask spotify

# Use to install IntelliJ CE
# Login to sync your settings
brew install --cask jetbrains-toolbox

# Use to install discord
brew install --cask discord

# Microsoft Office includes OneDrive
brew install --cask microsoft-office

# Install Google Drive
brew install -- cask google-drive

# Install Logitech-Gaming-Software
brew install --cask logitech-g-hub

# Package manager
brew install rtx

# install iterm2
brew install --cask iterm2

# Install BitWarden
# Browser integration only supported on mac appstore version of App
bitwarden_id=$(mas search Bitwarden | grep -i "Bitwarden" | awk '{print $1}')
mas install $bitwarden_id

# Install zoom
brew install --cask zoom
