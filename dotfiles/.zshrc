
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# TODO: Look further into whether the below should be .zprofile or not
# export PATH=$PATH:/Users/sulalva/.toolbox/bin
# export PATH=$PATH:/Users/sulalva/Library/Application\ Support/JetBrains/Toolbox/scripts
# # export PATH=$PATH:/Users/sulalva/Library/Python/3.9/bin  # with rtx, not sure this is needed
# export PATH=$PATH:/opt/homebrew/bin
# # export PATH=$PATH:/opt/homebrew/opt/node@14/bin # for some CKD Modules # with most recent patch, may not be needed anymore





# added for autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# setup vim to be used automatically in bash
set -o vi
bindkey -v

# Allows you to search terminal history with ctrl + r
bindkey -v
bindkey '^R' history-incremental-search-backward

# case insensitive autocomplete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# autoload autocomplete from zsh-completions
autoload -Uz compinit && compinit  # autocompletion

# for rtx
eval "$(rtx activate zsh)"
