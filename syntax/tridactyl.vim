" Vim syntax file
" Language:   Tridactyl
" Maintainer: Caleb Maclennan <caleb@alerque.com>
" URL:        https://github.com/tridactyl/vim-tridactyl

scriptencoding utf-8

if exists('b:current_syntax')
	finish
endif

syntax sync maxlines=200
syntax sync minlines=50

syntax match tridactylComment		'^".*'		contains=@Spell

highlight! def link tridactylComment		Comment

let b:current_syntax = 'tridactyl'
" vim: set noet ts=4 sw=4 sts=4:
