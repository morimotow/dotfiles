
" project.vim用の設定
let s:bundle = neobundle#get('project.vim')
function! s:bundle.hooks.on_source(bundle)

	" \Pで、プロジェクトを開閉
	:nmap <silent> <Leader>P <Plug>ToggleProject

	" プロジェクトを開いた時に、ツリー展開した状態にする
	autocmd BufAdd .vimprojects silent! %foldopen!

	" プロジェクトファイルのタブ設定
	autocmd BufRead,BufNewFile *.vimprojects setlocal sw=1 ts=1 et

	" 起動時にプロジェクトファイルを読み込み
	autocmd VimEnter * call s:OpenProject()

endfunction

" 遅延読み込みでない場合は即時実行
if !s:bundle['lazy']
	call neobundle#call_hook('on_source')
endif


unlet s:bundle

" カレントディレクトリのプロジェクトファイルの自動読み込み
function! s:OpenProject()
	if getcwd() != $HOME
		if filereadable(getcwd(). '/.vimprojects')
			Project .vimprojects
		endif
	endif
endfunction

