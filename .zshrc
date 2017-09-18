export ZSH=~/.oh-my-zsh
ZSH_THEME="ssuen"

plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

export EDITOR=/usr/bin/vim

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias md="mkdir -p"
alias cx="chmod +x"

alias f="open -a Finder ./"
alias a="atom"
alias s="subl"
alias v="vim"
alias vs="code"
alias g="git"
alias c="clear"

alias srv="python -m SimpleHTTPServer"
