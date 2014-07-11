scriptencoding utf-8
set encoding=utf-8

" Vi互換OFF
set nocompatible

" Linux、Macの場合は.vim、Windowsの場合はvimfilesディレクトリを使う
if has('unix') || has('mac')
  set runtimepath+=$HOME/.vim
else
  set runtimepath+=$HOME\vimfiles

endif
runtime! morimoto/*.vim
