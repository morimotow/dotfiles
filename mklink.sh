#!/bin/sh

# zsh関係
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv

# Vim関係
if [ ! -d ~/.vim ] ; then
  mkdir ~/.vim
fi
if [ ! -d ~/.vim/bundle ] ; then
  mkdir ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim/morimoto ~/.vim/morimoto
ln -sf ~/dotfiles/.vim/g_morimoto ~/.vim/g_morimoto

# tmux
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

