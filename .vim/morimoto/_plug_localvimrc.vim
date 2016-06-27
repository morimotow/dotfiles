" localvimrc用の設定
let s:bundle = neobundle#get('vim-localvimrc')
function! s:bundle.hooks.on_source(bundle)
  let g:localvimrc_sandbox = '0'
  let g:localvimrc_ask = '0'
endfunction
unlet s:bundle
