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
alias g="git"
alias c="clear"

alias srv="python -m SimpleHTTPServer"
alias nb="npm run build"
alias ni="npm install"
alias nr="npm run"
alias ns="npm start"
alias nt="npm test"
alias ya="yarn add"
alias yi="yarn install"
alias yr="yarn remove"
alias cs="cloudstitch"
