#!/bin/bash

cd ~/.oh-my-zsh/custom/plugins

update_git_repo() {
  cd $1
  git pull
  cd ..
}

while read d; do
  [[ -d ${d##*/} ]] && update_git_repo ${d##*/} || git clone $d
done < ~/dotfiles/.oh-my-zsh/custom/.zshplugins
