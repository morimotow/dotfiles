" project.vim用の設定

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
