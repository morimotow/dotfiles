"----------------------------------------
" 表示設定
"----------------------------------------
"スプラッシュ(起動時のメッセージ)を表示しない
"set shortmess+=I
"エラー時の音とビジュアルベルの抑制(gvimは.gvimrcで設定)
set noerrorbells
set novisualbell
set visualbell t_vb=
"マクロ実行中などの画面再描画を行わない
"set lazyredraw
"Windowsでディレクトリパスの区切り文字表示に / を使えるようにする
set shellslash
"行番号表示
set number
"括弧の対応表示時間
set showmatch matchtime=1
"タブを設定
"set ts=4 sw=4 sts=4
"自動的にインデントする
"set autoindent
"Cインデントの設定
"set cinoptions+=:0
"タイトルを表示
set title
"コマンドラインの高さ (gvimはgvimrcで指定)
set cmdheight=2
set laststatus=2
"コマンドをステータス行に表示
set showcmd
"画面最後の行をできる限り表示する
set display=lastline
"Tab、行末の半角スペースを明示的に表示する
set list
set listchars=tab:^\ ,trail:~

" ハイライトを有効にする
if &t_Co > 2 || has('gui_running')
  syntax on
endif

"色テーマ設定
"gvimの色テーマは.gvimrcで指定する
"colorscheme mycolor
set t_Co=256
colorscheme ron
