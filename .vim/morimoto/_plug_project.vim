" Project.vim用の設定
let s:bundle = neobundle#get('project.vim')
function! s:bundle.hooks.on_source(bundle)
	" \Pで、プロジェクトを開閉
	:nmap <silent> <Leader>P <Plug>ToggleProject

	" プロジェクトを開いた時に、ツリー展開した状態にする
	autocmd BufAdd .vimprojects silent! %foldopen!
	autocmd BufNewFile,BufRead *.vimprojects setlocal expandtab tabstop=1 shiftwidth=1

endfunction

if &loadplugins && !s:bundle['lazy']
	call neobundle#call_hook('on_source')
endif

unlet s:bundle
