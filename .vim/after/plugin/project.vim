" project.vim用の設定

" ファイルが選択されたら、ウインドウを閉じる
:let g:proj_flags = "imstc"

" \Pで、プロジェクトを開閉
:nmap <silent> <Leader>P <Plug>ToggleProject

" プロジェクトを開いた時に、ツリー展開した状態にする
autocmd BufAdd .vimprojects silent! %foldopen!

" カレントディレクトリのプロジェクトファイルの自動読み込み
if getcwd() != $HOME
	if filereadable(getcwd(). '/.vimprojects')
		Project .vimprojects
	endif
endif
