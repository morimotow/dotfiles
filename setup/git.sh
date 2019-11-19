#!/bin/sh

cd `dirname $0`
SCR_DIR=`pwd`

ln -sf $SCR_DIR/../.gitignore_global $HOME/.gitignore_global
ln -sf $SCR_DIR/../.gitconfig.wsl $HOME/.gitconfig
cp $SCR_DIR/../.gitconfig.local $HOME/.gitconfig.local