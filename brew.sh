#!/usr/bin/env bash

# Install Brew Packages
brew install bash
brew install git
brew install python3
brew install tree
brew install autojump

# install applications with Cask
brew install --cask slack
brew install --cask atom
brew install --cask google-chrome
brew install --cask sublime-text
brew install --cask hyperdock
brew install --cask google-backup-and-sync
brew install --cask iina
brew install --cask skype
brew install --cask spotify
brew install --cask cyberduck
brew install --cask postman
brew install --cask private-internet-access
brew install --cask pycharm-ce


#### FIND OUT THE CORRECT FONTS TO INSTALL!
# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro