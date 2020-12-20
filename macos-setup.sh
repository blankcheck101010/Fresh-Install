#!/usr/bin/env bash

# Run this bash script manually. 'bash macos-setup.sh'
# If this is an M1, run terminal using rosetta

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install was (Mac Apple Store Command Line Tool)
brew install mas
# Try below, then try signing into to the app manually.
mas signin blankcheck101010@yahoo.com

### Below are installed by Mac Apple Store only ###
# install Xcode (This is required to run git commands with Terminal)
mas install 497799835
sudo xcode-select --reset
sudo xcodebuild -license

# install todoist 
mas install 585829637
# customize todoist install
defaults write "com.todoist.mac.Todoist" ShowInDock -bool true
defaults write "com.todoist.mac.Todoist" ShowTodoistMenuBar -bool false


### GitHub Setup ###
# setup Fresh-Install Repo and Dotfiles
mkdir -p ~/Documents/GitHub
cd ~/Documents/GitHub
# Git requires xcode
git clone https://github.com/blankcheck101010/Fresh-Install.git
cd ~/Documents/GitHub/Fresh-Install
git branch develop
git checkout develop
git fetch --all
git reset --hard origin/develop  # this resolves any conflicts with master
git pull origin develop
git branch --set-upstream-to origin/develop


### below are install with Brew Cask ###
chmod +x $HOME/Documents/GitHub/Fresh-Install/brew.sh
$HOME/Documents/GitHub/Fresh-Install/brew.sh

# Change the shell back to bash (Starting Catalina, zsh is default shell)
# Must install bash first to get updated filepath (/usr/local/bin/bash) used below
chsh -s /usr/local/bin/bash

# Dofiles Setup (requires bash to work correctly)
chmod +x $HOME/Documents/GitHub/Fresh-Install/dotfiles/dotfiles-setup.sh
$HOME/Documents/GitHub/Fresh-Install/dotfiles/dotfiles-setup.sh


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
