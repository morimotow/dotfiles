#!/bin/sh

cd `dirname $0`
SCR_DIR=`pwd`

# zsh関係
ln -sf $SCR_DIR/.zshrc $HOME/.zshrc
ln -sf $SCR_DIR/.zshenv $HOME/.zshenv

# Vim関係
if [ ! -d $HOME/.vim ] ; then
  mkdir $HOME/.vim
fi
if [ ! -d $HOME/.vim/bundle ] ; then
  mkdir $HOME/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi
ln -sf $SCR_DIR/.vimrc $HOME/.vimrc
ln -sf $SCR_DIR/.gvimrc $HOME/.gvimrc
ln -sf $SCR_DIR/.vim/morimoto $HOME/.vim/morimoto
ln -sf $SCR_DIR/.vim/g_morimoto $HOME/.vim/g_morimoto
ln -sf $SCR_DIR/.vim/colors $HOME/.vim/colors

# tmux
ln -sf $SCR_DIR/.tmux.conf $HOME/.tmux.conf

