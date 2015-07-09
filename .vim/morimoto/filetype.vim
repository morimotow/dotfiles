
if has("autocmd")
	filetype plugin on
	filetype indent on

	autocmd FileType html   setlocal sw=2 sts=2 ts=2 et
	autocmd FileType eruby   setlocal sw=2 sts=2 ts=2 et
endif
