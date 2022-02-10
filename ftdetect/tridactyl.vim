" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *tridactylrc setf tridactyl
autocmd FileType tridactyl setlocal commentstring=\"\ %s
