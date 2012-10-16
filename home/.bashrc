#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls -hp --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep --color=auto'
alias ..='cd ..'
alias cls='clear'
alias ping='ping -c 3'
alias wifi-clear='sudo rm /var/lib/dhcpcd/*'
alias emacs='emacs -nw'

# exports
export EDITOR="/usr/bin/vim"

# set the prompt
if [ -f $HOME/.git-prompt.sh ]; then
    source $HOME/.git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE="auto"
    export GIT_PS1_SHOWSTASHSTATE="auto"
    export GIT_PS1_SHOWUNTRACKEDFILES="auto"
    export GIT_PS1_SHOWUPSTREAM="auto"
fi

if [ -f $HOME/.bash_prompt ]; then
    . $HOME/.bash_prompt
else
    PS1='[\u@\h:\w]\$ '
fi

# enable bash completition when preciding:
complete -cf sudo
complete -cf man

export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:/home/`whoami`/Documents/util_scripts
