alias emnw='emacs -nw $1'
alias semnw='sudo emacs -nw $1'
alias open='gnome-open'
alias ll='ls -l'
alias lla='ls -la'
alias llh='ls -lh'
alias rm='gvfs-trash'
alias brm='/bin/rm'

export PS1='\u@\h \[\e[1;38m\][\W]\[\e[m\]\[\e[0;33m\]$(__git_ps1 " (%s)")\[\e[m\] > '
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# PKG_CONFIG_PATH and LD_LIBRARY_PATH are for ndnSIM
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
