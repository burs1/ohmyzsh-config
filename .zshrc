# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/Users/burs/.cargo/bin

ZSH_THEME="simple"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# block clear command
alias clear="printf '\n%.0s' {1..100} && printf '\033[96m>\033[0m hello, \033[92mburs\033[0m!\n'"

alias cmc="cmake .."
alias cmcd="cmake -DCMAKE_BUILD_TYPE=Debug .."
alias cb="mkdir build && cd build && cmcd && cmake --build . -j 8"
alias flush="rm -rf *"
alias c="clear"
alias t="tmux"

# move command prompt to the end
clear
