orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1+="\[${orange}\]\u";  # username
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";  # host
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\W";  # working directory
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";  # 'S' and reset color
export PS1;

# setup vim to be used automatically in bash
set -o vi

# When searching terminal history with ctrl + r, this allows you to use ctrl + s to cycle forward 
stty -ixon
