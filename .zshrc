if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi
export PATH=$HOME/.rbenv/bin:/usr/local/bin:/usr/sbin:/sbin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_THEME="ssuen"

plugins=(zsh-autosuggestions zsh-syntax-highlighting rbenv gitfast)
source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_HIGHLIGHTERS+=(commits)

export EDITOR=/usr/bin/vim

source "/usr/local/bin/virtualenvwrapper.sh"

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
alias venv="workon"
alias denv="deactivate"
