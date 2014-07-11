filetype off
filetype plugin indent off
" Linux、Macの場合は.vim、Windowsの場合はvimfilesディレクトリを使う
if has('unix') || has('mac')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand("~/.vim/bundle/"))
else
  set runtimepath+=$HOME\vimfiles\bundle\neobundle.vim\
  call neobundle#rc(expand("$HOME\\vimfiles\\bundle\\"))
endif

" プラグインの一覧
NeoBundle 'Shougo/neobundle.vim'

" Shellなどの実行機能
NeoBundleLazy 'thinca/vim-quickrun', {
        \ 'autoload' : {
        \ 'mappings' : [['nxo', '<Plug>(quickrun)']],
        \ 'commands' : 'QuickRun',
        \ }}

" 文字列補完機能
if has('lua')
  NeoBundle 'Shougo/neocomplete', {'lazy': 1, 'autoload': {'insert': 1 }}
endif

filetype plugin indent on
