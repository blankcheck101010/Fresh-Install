#!/usr/bin/env bash

# Install Brew Packages
brew install bash
brew install git
brew install python3
brew install tree
brew install autojump

# install applications with Cask
brew cask install slack
brew cask install google-chrome
brew cask install sublime-text
brew cask install atom
brew cask install hyperdock
brew cask install google-backup-and-sync

#### FIND OUT THE CORRECT FONTS TO INSTALL!
# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro