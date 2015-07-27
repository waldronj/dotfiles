alias tmux='tmux -2'
alias moar='pygmentize'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ls='ls -G'
alias ll='ls -l'

PROMPT_DIRTRIM=2

export TERM="xterm-256color"

PATH="$PATH:$HOME/code/dotfiles/utils"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /usr/local/opt/bash-completion
fi

function hide-hiddenFiles {
    defaults write com.apple.Finder AppleShowAllFiles 0
    sudo killall Finder
}

function show-hiddenFiles {
    defaults write com.apple.Finder AppleShowAllFiles 1 
    sudo killall Finder
}
