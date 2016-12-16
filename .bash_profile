parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != *"working tree clean"* ]] && echo -e ' \xf0\x9f\x96\x95' || echo -e ' \xf0\x9f\x91\x8c'
}

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

export EDITOR=/usr/bin/vim

export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\] ⚗ \[\033[0;34m\]\w\[\033[m\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo ' ⑃ ')\[\033[0;33m\]\$(parse_git_branch)\[\033[m\]\n⚡ "
export GREP_OPTIONS="--color=auto"

if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi
export PATH=$HOME/.rbenv/bin:$PATH

source "/usr/local/bin/virtualenvwrapper.sh"

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias md="mkdir -p"

alias f="open -a Finder ./"
alias a="atom"
alias s="subl"
alias v="vim"
alias g="git"
alias c="clear"

alias srv="python -m SimpleHTTPServer"
alias venv="workon"
alias denv="deactivate"
