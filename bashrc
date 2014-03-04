# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
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
export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
