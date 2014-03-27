# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# some more ls aliases
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# Set default provider (VMWare Fusion) for Vagrant
if [ -f /usr/bin/vagrant ]; then
  export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
fi

# Ruby RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function
