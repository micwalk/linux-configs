# this file is .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#git autocomplete script, if exists
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#colored prompt
export PS1='[\[\e[1;34m\]\u@\h\[\e[m\]:\[\e[0;33m\]\W\[\e[m\]]\$ '

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-prompt.sh
  export PS1='[\[\e[1;34m\]\u@mbp\[\e[m\]:\[\e[0;33m\]\W\[\e[0;32m\]$(__git_ps1)\[\e[m\]]\$ '
fi

# User specific aliases and functions



# User specific aliases and functions
export EDITOR=emacs

#terminal stuff (for arrow keys)
export TERM=xterm

#colored output of commands
alias ls='ls --color=auto -B'
alias ll='ls -lrt --color=auto -B'
alias grep='grep --color=auto'
alias gitmaster='git stash; git checkout master; git pull;'

# autocomplete binaries after certain commands
complete -cf sudo
complete -cf man
complete -cf which

#dig is in the bind-utils package 'sudo yum install bind-utils'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

export HISTFILESIZE=1000000
export HISTSIZE=1000000
shopt -s histappend

#user bin on path
export PATH=$PATH:~/bin
