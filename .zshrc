
# Path to your oh-my-zsh installation.
export ZSH="/home/hrafnkell/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
)

source $ZSH/oh-my-zsh.sh

# COLOR AND POWERLINE CONFIGURAITON

# Powerlevel9k Rice Resources: 
# https://medium.com/@alex285/get-powerlevel9k-the-most-cool-linux-shell-ever-1c38516b0caa
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Show-Off-Your-Config
source $HOME/.p9kgt

# needs to be before base16
BASE16_SHELL_SET_BACKGROUND=false

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# USER CONFIGURATION

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

alias ll='exa -lh --git'
alias la='exa -lha --git'
alias tree='exa --tree --level=2'
alias up='sudo apt update && sudo apt upgrade'
alias please='sudo'
alias top='htop'
alias its='source ~/Documents/Work/envs/its/bin/activate'

# startup scripts
neofetch

# PATHS & ENVIRONMENT VARIABLES
export PATH=$PATH:~/.scripts
export AIRPORT=BIVM
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"






