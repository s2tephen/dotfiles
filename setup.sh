#!/bin/bash

backup=~/dotfiles_$(date +%Y_%m_%d)
mkdir -p $backup

find . -type d -name .git -prune -o -type f -name '*.sh' -o \
  -type f -print | cut -c 3- | while read file; do
  if [ -f ~/$file ];
  then
    dir=`dirname $file`
    mkdir -p $backup/$dir
    mv -f ~/$file $backup/$dir
  fi
  ln -s ~/dotfiles/$file ~/$file
done
