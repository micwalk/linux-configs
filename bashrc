# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#colored prompt
export PS1='[\[\e[1;34m\]\u@\h\[\e[m\]:\[\e[0;33m\]\W\[\e[m\]]\$ '

# User specific aliases and functions
export EDITOR=emacs

#terminal stuff (for arrow keys)
export TERM=xterm

#colored output of commands
alias ls='ls --color=auto -B'
alias ll='ls -lrt --color=auto -B'
alias grep='grep --color=auto'

# autocomplete binaries after certain commands
complete -cf sudo
complete -cf man
complete -cf which

#dig is in the bind-utils package 'sudo yum install bind-utils'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
