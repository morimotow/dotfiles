" Unite.vim用の設定
let s:bundle = neobundle#get('unite.vim')
function! s:bundle.hooks.on_source(bundle)
	  " ココにunite.vimの設定とか記述する。
endfunction
unlet s:bundle
