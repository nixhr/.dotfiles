#!/bin/bash

DOTFILES_DIR=~/.dotfiles
BACKUP_DIR=~/.dotfiles_orig
FILES=".bashrc .vimrc .tmux.conf"

mkdir -p $BACKUP_DIR
for i in $FILES
do
  echo -n "Moving $HOME/$i -> $BACKUP_DIR/$i ..."
  mv $HOME/$i $BACKUP_DIR
  echo "done."
  echo -n "Linking $DOTFILES_DIR/$i -> $HOME/$i ..."
  ln -s $DOTFILES_DIR/$i $HOME/$i
  echo "done."
done

