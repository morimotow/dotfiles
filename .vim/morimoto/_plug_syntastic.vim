" syntastic用の設定
let s:bundle = neobundle#get('syntastic')
function! s:bundle.hooks.on_source(bundle)
	let g:syntastic_mode_map = { 'mode': 'passive' }
	let g:syntastic_javascript_checkers = ['jshint']
	let g:syntastic_php_checkers = ['php']
	let g:syntastic_php_php_args = '-l'
endfunction
unlet s:bundle
