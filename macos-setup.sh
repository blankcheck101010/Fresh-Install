#!/usr/bin/env bash

# Run this bash script manually. 'bash macos-setup.sh'

# Change the shell back to bash (Starting Catalina, zsh is default shell)
chsh -s /bin/bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Use home-brew to update bash in MacOSX
brew install bash

# install git
brew install git

# install was (Mac Apple Store Command Line Tool)
brew install mas
# Try below, then try signing into to the app manually.
mas signin blankcheck101010@yahoo.com

### The rest should run without intervention ###

### Below are installed by Mac Apple Store only ###
# install Xcode
mas install 497799835

# install todoist 
mas install 585829637
# customize todoist install
defaults write "com.todoist.mac.Todoist" ShowInDock -bool true
defaults write "com.todoist.mac.Todoist" ShowTodoistMenuBar -bool false

### below are install with Brew Cask ###
# install applications with Cask
brew cask install slack
brew cask install google-chrome
brew cask install sublime-text
brew cask install atom
brew cask install hyperdock
brew cask install google-backup-and-sync


### GitHub Setup ###
# setup Fresh-Install Repo
mkdir ~/Documents/GitHub
cd ~/Documents/GitHub
git clone https://github.com/blankcheck101010/Fresh-Install.git
cd ~/Documents/GitHub/Fresh-Install
git branch develop
git checkout develop
git fetch --all
git reset --hard origin/develop  # this resolves any conflicts with master
git pull origin develop
git branch --set-upstream-to origin/develop

# setup Sublime Repo
cd ~/Documents/GitHub
git clone https://github.com/blankcheck101010/Sublime.git
cd ~/Documents/GitHub/Sublime
git branch develop
git checkout develop
git fetch --all
git reset --hard origin/develop  # this resolves any conflicts with master
git pull origin develop
git branch --set-upstream-to origin/develop

### Sublime Setup ###
# to finish installations, see setup script in Sublime Github Repo

# when you push for the first time, you must do it from terminal
# enter your username and password. Then you can do it from sublimetext3
