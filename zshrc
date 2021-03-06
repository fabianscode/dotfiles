export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="afowler"

gita() {
    git add .
    if [ $1 != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m $1
    else
        git commit -m update
    fi
    git push
}

v() {
    nvim $1
}

# for my sway config
alias idea="_JAVA_AWT_WM_NONREPARENTING=1 ~/.local/bin/idea &"
alias phpstorm="_JAVA_AWT_WM_NONREPARENTING=1 ~/.local/bin/phpstorm &"

alias cat="batcat"

CASE_SENSITIVE="true"

plugins=(git zsh-autosuggestions)
bindkey '^ ' autosuggest-accept
bindkey '\t' autosuggest-accept

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"
export VISUAL="nvim"

export PATH=$PATH:/home/fabiancodes/.spicetify
