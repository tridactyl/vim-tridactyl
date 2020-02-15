augroup VimTridactyl
	autocmd!
augroup END

autocmd VimTridactyl BufNewFile,BufRead *tridactylrc setf tridactyl
autocmd VimTridactyl FileType tridactyl setlocal commentstring=\"\ %s

" vim: set noet ts=4 sw=4 sts=4:
