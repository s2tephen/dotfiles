#!/bin/bash

cd ~/.oh-my-zsh/custom/plugins

get_git_url() {
  cd $1
  git config --get remote.origin.url
  cd ..
}

for d in *; do
  [[ -d $d && ! -L $d ]] && get_git_url $d
done > ~/dotfiles/.oh-my-zsh/custom/.zshplugins
