# steps to get started with vanilla Mac install

# MANUAL STEPS
# Install Homebrew from this website https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update and Upgrade Homebrew
brew update
brew upgrade

# login to icloud first
# TODO: Test if you need to manually login to the appstore after logging into icloud

# TODO: Upstairs, on a new account in macMini, try testing install of Xcode with Mas
# install Mac Apple Store Command Line Tool
brew install mas
# get store id for Xcode
Xcode_id=$(mas search Xcode | grep -E "^ *[0-9]+  Xcode" | awk '{print $1}')
# Install Xcode
mas install $Xcode_id

# Start by setting up GitHub
mkdir -p $HOME/Documents/GitHub
cd $HOME/Documents/GitHub

# TODO: Test this line below to see if it still prompts to install Xcode/DeveloperTools
# May need to install command line developer tools. A popup came up for me. Download it.
git clone https://github.com/blankcheck101010/Fresh-Install.git

cd $HOME/Documents/GitHub/Fresh-Install
git branch main

chmod +x ./utils/helpers.sh
source ./utils/helpers.sh

setupGitConfig

# install and setup ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# powerlevel10k (Might not be needed?)
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# remove backup if no longer needed
# Run `ls -la ~/ | grep oh` and remove the .zshrc.pre-oh-my-zsh

# can now run apps-install.sh

# then run ./dotfiles/dotfiles-setup.sh
