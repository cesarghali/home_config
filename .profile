# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\u@\h \[\e[1;38m\][\W]\[\e[m\]\[\e[0;33m\]$(parse_git_branch)\[\e[m\] > '
# export PS1="\u@\h:\W$ "

export PATH=$PATH:/Applications/Andriod\ SDK/sdk/platform-tools
export PATH=$PATH:/Applications/Andriod\ SDK/sdk/tools
export SVN_EDITOR=emacs

alias cdhome='cd ~'
alias emnw='emacs -nw $1'
alias semnw='sudo emacs -nw $1'
alias rm='trash'
alias ll='ls -l'
alias lla='ls -al'
alias llh='ls -hl'
alias brm='/bin/rm'
