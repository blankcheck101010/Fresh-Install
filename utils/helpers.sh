#!/bin/bash

dotfiles_path="$HOME/documents/GitHub/Fresh-Install/dotfiles"

setupGitConfig() {
    # Get the hostname of the machine
    local machineName=$(hostname)

    # Check if the hostname contains "Saul" (indicating a personal machine)
    if [[ $machineName == *"Saul"* ]]; then
        # Set global Git configurations for personal machine
        git config --global user.name "Saul Alvarez"
        git config --global user.email "saulalvarez86@gmail.com"
        git config --global github.user "blankcheck101010"
    fi

    # Common configurations for all machines
    git config --global core.excludesfile ~/.gitignore_global

    # Configure Git Large File Storage
    git config --global filter.lfs.clean "git-lfs clean -- %f"
    git config --global filter.lfs.smudge "git-lfs smudge -- %f"
    git config --global filter.lfs.process "git-lfs filter-process"
    git config --global filter.lfs.required true

    cp $HOME/.gitconfig $dotfiles_path/.gitconfig
    echo "Git configuration set up successfully."
}

dotFilesToSymLinks() {
    # List of GitHub dotfiles to symlink
    dotfiles=($(find "$dotfiles_path" -maxdepth 1 -type f -name ".*" -not -name '.DS_Store' -exec basename {} \;))

    # Loop through all files in dotfiles directory
    for file in "${dotfiles[@]}"; do
        # Destination path in the home directory
        dest=$HOME/"$file"

        # Check if the file exists in the home directory
        if [ -f "$dest" ] || [ -d "$dest" ]; then
            # Check if it's not already a symlink
            if [ ! -L "$dest" ]; then
                echo "Removing existing file/directory: $dest"
                rm -rf "$dest"
            fi
        fi

        # Create a symlink from the dotfiles directory to the home directory
        echo "Creating symlink for $file"
        ln -s "$dotfiles_path/$file" "$dest"
    done

    echo "Dotfiles sym-linking complete."
}
