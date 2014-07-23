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
NeoBundle 'Shougo/neobundle.vim'  " NeoBundle本体
NeoBundle 'vim-jp/vimdoc-ja'      " 日本語ヘルプ(最初に1回だけ helptags ~/.vim/bundle/vimdoc-ja/docを実行)

" Shellなどの実行機能
NeoBundleLazy 'thinca/vim-quickrun', {
        \ 'autoload' : {
        \ 'mappings' : [['nxo', '<Plug>(quickrun)']],
        \ 'commands' : 'QuickRun',
        \ }}

NeoBundleLazy 'Shougo/unite.vim' , {
			\   'autoload' : { 'commands' : [ 'Unite' ] }
			\ }
let s:bundle = neobundle#get('unite.vim')
function! s:bundle.hooks.on_source(bundle)
	  " ココにunite.vimの設定とか記述する。
endfunction

" 文字列補完機能
if has('lua')
  NeoBundle 'Shougo/neocomplete', {'lazy': 1, 'autoload': {'insert': 1 }}
endif

filetype plugin indent on
