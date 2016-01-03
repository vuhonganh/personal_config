# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#my own alias
alias ema='emacs -nw'
alias ..='cd ..'
alias cm='make clean'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


export TERM=xterm-256color

######TIME SHOWN IN TERMINAL
# Install GNU coreutils
bk="\[\033[0;38m\]" #means no background and white lines
txtBlue="\[\033[0;34m\]"   #letter color blue
txtRed="\[\033[0;31m\]"    #letter color red
txtCyan="\[\033[1;36m\]"   #letter color cyan
txtWhite="\[\033[1;37m\]"  #letter color white
txtYellow="\[\033[1;33m\]" #letter color yellow

NAME_COMP="local_dev" #name of the computer

#PS1="[$txtYellow\u on $txtCyan\h $txtRed\@ $txtWhite\w$bk] "
PS1="[$txtYellow\u@$NAME_COMP $txtCyan\@ $txtWhite\w$bk] "
