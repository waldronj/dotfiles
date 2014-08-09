alias tmux='tmux -2'
alias moar='pygmentize'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ls='ls --color'
alias ll='ls -l'

PROMPT_DIRTRIM=2

export TERM="xterm-256color"

PATH="$PATH:$HOME/code/dotfiles/utils:$HOME/packer"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
