# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tornheckr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

export PATH=$PATH:/home/tornheckr/.spicetify

if command -v nvim &> /dev/null
then
    export EDITOR="nvim"
    alias vim="nvim"
    alias view="nvim -R"
fi

if command -v neofetch &> /dev/null
then
	neofetch
fi

alias weer="curl 'https://wttr.in/schijndel?0'"
