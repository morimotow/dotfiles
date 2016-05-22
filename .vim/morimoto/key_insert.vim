"----------------------------------------
" 挿入モード用キーマップ
"----------------------------------------
"ctrl+jでノーマルモードに戻る
imap <C-j> <esc>

" コンソールで矢印キーを使うとABCDが入力されるのを回避
if !has('gui_running')
	inoremap OD <Left>
	inoremap OB <Down>
	inoremap OA <Up>
	inoremap OC <Right>

	" Escキーからの組み合わせにマップしたため、入力待ち時間を減らすための設定
	set timeout
	set timeoutlen=1000
	set ttimeoutlen=50
endif
