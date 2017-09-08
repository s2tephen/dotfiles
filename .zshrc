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
alias pb="polymer build"
alias ps="polymer serve"
alias fs="firebase serve"
alias fd="firebase deploy"
alias cs="cloudstitch"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh