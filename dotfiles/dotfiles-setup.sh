#!/usr/bin/env bash

############################
# This script creates symlinks from the home directory to any desired dotfiles in ${homedir}/dotfiles

############################

# files="exports bashrc aliases inputrc selected_editor vimrc"
files="exports bashrc aliases inputrc selected_editor vimrc"


DOTFILESDIR=$HOME/Documents/GitHub/Fresh-Install/dotfiles
echo $DOTFILESDIR

cd $DOTFILESDIR

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf $DOTFILESDIR/.$file $HOME/.$file
done