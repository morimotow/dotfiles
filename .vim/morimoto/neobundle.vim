filetype off
filetype plugin indent off
" Linux、Macの場合は.vim、Windowsの場合はvimfilesディレクトリを使う
if has('unix') || has('mac')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand("~/.vim/bundle/"))
else
  set runtimepath+=$HOME\vimfiles\bundle\neobundle.vim\
  call neobundle#begin(expand("$HOME\\vimfiles\\bundle\\"))
endif

" プラグインの一覧
NeoBundle 'Shougo/neobundle.vim'  " NeoBundle本体
NeoBundle 'vim-jp/vimdoc-ja'      " 日本語ヘルプ(最初に1回だけ helptags ~/.vim/bundle/vimdoc-ja/docを実行)

" VimProc(kaoriyawindows版は導入済み)
if has('unix') || has('mac')
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }
endif

" Shellなどの実行機能
NeoBundleLazy 'thinca/vim-quickrun', {
        \ 'autoload' : {
        \ 'mappings' : [['nxo', '<Plug>(quickrun)']],
        \ 'commands' : 'QuickRun',
        \ }}

NeoBundle 'Shougo/neomru.vim'
NeoBundleLazy 'Shougo/unite.vim' , {
			\   'autoload' : { 'commands' : [ 'Unite' ] }
			\ }
NeoBundleLazy 'Shougo/vimfiler', {
	  \ 'depends' : 'Shougo/unite.vim',
	  \ 'autoload' : {
	  \    'commands' : [{ 'name' : 'VimFiler',
	  \                    'complete' : 'customlist,vimfiler#complete' },
	  \                  'VimFilerExplorer',
	  \                  'Edit', 'Read', 'Source', 'Write'],
	  \    'mappings' : '<Plug>',
	  \    'explorer' : 1,
	  \ }
	  \ }

" プロジェクト管理
NeoBundle 'vimplugin/project.vim'

" プロジェクト毎に設定ファイルを分ける
NeoBundle 'thinca/vim-localrc'

NeoBundleLazy 'ryoppy/vim-scp-upload', {
			\   'autoload' : { 'commands' : [ '<Leader>scp' ] }
			\ }

" 文字列補完機能
if has('lua')
  NeoBundle 'Shougo/neocomplete', {'lazy': 1, 'autoload': {'insert': 1 }}
endif

" Javascript開発環境(node.jsが必要)
NeoBundleLazy 'marijnh/tern_for_vim', {
  \ 'build': {
  \   'mac': 'npm install',
  \   'unix': 'npm install'
  \},
  \'autoload': {'filetypes': ['javascript', 'typescript'],'functions': ['tern#Complete', 'tern#Enable']}
\}

" ctags読み込み
NeoBundleLazy 'majutsushi/tagbar', {
  \   'autoload' : { 'commands' : [ 'TagbarToggle' ] }
  \ }

" 文法チェック
NeoBundleLazy 'scrooloose/syntastic', {
  \   'autoload' : { 'commands' : [ 'SyntasticCheck' ] }
  \ }

" SQL文実行
NeoBundleLazy 'vim-scripts/dbext.vim', {
  \   'autoload' : { 'filetypes' : [ 'sql' ] }
  \ }

" Markdown編集
NeoBundleLazy 'plasticboy/vim-markdown', {
  \   'autoload' : { 'filetypes' : [ 'markdown' ] }
  \ }
NeoBundleLazy 'kannokanno/previm', {
  \   'autoload' : { 'filetypes' : [ 'markdown' ] }
  \ }
NeoBundleLazy 'tyru/open-browser.vim', {
  \   'autoload' : { 'filetypes' : [ 'markdown' ] }
  \ }
au BufRead,BufNewFile *.md set filetype=markdown

call neobundle#end()
filetype plugin indent on
