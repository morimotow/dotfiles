scriptencoding utf-8
set encoding=utf-8
set fileformat=unix

" Vi互換OFF
set nocompatible

" Linux、Macの場合は.vim、Windowsの場合はvimfilesディレクトリを使う
if has('unix') || has('mac')
  set runtimepath+=$HOME/.vim
else
  set runtimepath+=$HOME\vimfiles

endif

" 基本的な設定ファイルを読み込む
if has('unix') || has('mac')
	source $HOME/.vim/morimoto/base.vim
	source $HOME/.vim/morimoto/display.vim
	source $HOME/.vim/morimoto/neobundle.vim
	source $HOME/.vim/morimoto/search.vim
	source $HOME/.vim/morimoto/key_normal.vim
	source $HOME/.vim/morimoto/statushilite.vim
	source $HOME/.vim/morimoto/statusline.vim
	source $HOME/.vim/morimoto/zenkakuspace.vim
else
	source $HOME\vimfiles\morimoto\basevimfiles
	source $HOME\vimfiles\morimoto\displayvimfiles
	source $HOME\vimfiles\morimoto\neobundlevimfiles
	source $HOME\vimfiles\morimoto\searchvimfiles
	source $HOME\vimfiles\morimoto\key_normalvimfiles
	source $HOME\vimfiles\morimoto\statushilitevimfiles
	source $HOME\vimfiles\morimoto\statuslinevimfiles
	source $HOME\vimfiles\morimoto\zenkakuspacevimfiles

endif

" プラグイン毎の設定ファイルを読み込む
runtime! morimoto/_plug_*.vim
