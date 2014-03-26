# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH to include non-Apple git location
PATH=/usr/local/git/bin:$PATH
export PATH

# set terminal colors
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxBxDxCxegedabagacad

# color prompt with git
if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
  source /usr/local/git/contrib/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  #export PS1='[\u@mbp \w$(__git_ps1)]\$ '
  export PS1="\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;32m\]mbp:\[\033[0;33m\]\w\[\033[m\]\[\033[0;36m\]\$(__git_ps1)\[\033[m\]\$ "
else
  export PS1="\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;32m\]\h:\[\033[0;33m\]\w\[\033[m\]\$ "
  #export PS1='\[\033[0;32m\]\u@\h\[\033[00m\]:\[\033[0;34m\]\w\[\033[00m\]\$ '
fi

# git tab complete
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  source /usr/local/git/contrib/completion/git-completion.bash
fi

# Python virtualenvwrapper
# http://docs.python-guide.org/en/latest/dev/virtualenvs/
export WORKON_HOME=~/Envs
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# autoenv
# https://github.com/kennethreitz/autoenv
if [ -f /usr/local/opt/autoenv/activate.sh ]; then
  source /usr/local/opt/autoenv/activate.sh
fi

# Ruby RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
