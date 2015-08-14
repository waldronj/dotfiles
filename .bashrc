alias tmux='tmux -2'
alias moar='pygmentize'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ls='ls -G'
alias ll='ls -lrt'

PROMPT_DIRTRIM=2

export TERM="xterm-256color"

export PATH="$HOME/code/dotfiles/utils:$HOME/bin:$PATH"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /usr/local/opt/bash-completion
fi

function hide-hiddenFiles {
    defaults write com.apple.Finder AppleShowAllFiles 0
    sudo killall Finder
}

function flushdns {
    sudo dscacheutil -flushcache
}

function show-hiddenFiles {
    defaults write com.apple.Finder AppleShowAllFiles 1 
    sudo killall Finder
}
