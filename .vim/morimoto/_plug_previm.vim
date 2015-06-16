" previm用の設定
let s:bundle = neobundle#get('previm')
function! s:bundle.hooks.on_source(bundle)
	if has('mac')
		let g:previm_open_cmd = 'open -a Firefox'
	endif
endfunction
unlet s:bundle
