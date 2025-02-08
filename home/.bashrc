# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if test -e $HOME/.cargo/env
then
	. "$HOME/.cargo/env"
elif test -d $HOME/.cargo/bin
then
	PATH="$PATH:$HOME/.cargo/bin"
fi

if test -n "$(which starship)"; then
	eval "$(starship init bash)"
fi

ind 'set completion-ignore-case on'

export PATH=$PATH:$HOME/.local/bin

if command -v nvim &> /dev/null
then
    export EDITOR="nvim"
    alias vim="nvim"
    alias view="nvim -R"
fi

if command -v figlet &> /dev/null
then
  figlet "Welcome TornHeckr!"
fi

if command -v neofetch &> /dev/null
then
	neofetch
fi

